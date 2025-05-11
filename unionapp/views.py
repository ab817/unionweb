from django.shortcuts import render, redirect,get_object_or_404
from django.contrib import messages
from django.core.paginator import Paginator
from .models import SliderImage, WelcomeContent,IssuePlan, LearningMaterial, GalleryPost, GalleryImage, BlogPost, Event, VideoPost, Contact

def home(request):
    # Get distinct gallery categories
    gallery_categories = GalleryPost.objects.values_list('tag', flat=True).distinct()
    
    context = {
        'slider_images': SliderImage.objects.filter(is_active=True).order_by('position'),
        'welcome_content': WelcomeContent.objects.filter(tag='primary').first(),
        'secondary_welcome_contents': WelcomeContent.objects.filter(tag='secondary'),  # Changed to plural and queryset
        'events': Event.objects.all().order_by('-start_datetime')[:3],
        'blog_posts': BlogPost.objects.filter(status='published').order_by('-date')[:3],
        'gallery_posts': GalleryPost.objects.all(),
        'gallery_categories': gallery_categories,
        'video_posts': VideoPost.objects.filter(is_active=True).order_by('position')[:3],
        'featured_issue': IssuePlan.objects.filter(is_featured=True).first(),
        'issues': IssuePlan.objects.filter(is_featured=False).order_by('-created_at')[:4],
    }
    return render(request, 'homepage.html', context)

def blog_detail(request, id):
    blog = BlogPost.objects.get(id=id)
    return render(request, 'blog_detail.html', {'blog': blog})

def event_detail(request, id):
    event = Event.objects.get(id=id)
    return render(request, 'event_detail.html', {'event': event})

def gallery_detail(request, id):
    gallery = get_object_or_404(GalleryPost, id=id)
    images = GalleryImage.objects.filter(gallery_post=gallery).order_by('-uploaded_at')
    
    # Get distinct categories for filtering
    
    return render(request, 'gallery_detail.html', {
        'images': images,
    })

def org_detail(request, id):
     # Get the organization detail or return 404
    org = get_object_or_404(WelcomeContent, id=id)
    
    # Get related content if needed (example: recent posts/events)
    related_content = WelcomeContent.objects.filter(tag=org.tag).exclude(id=org.id)[:3]
    
    return render(request, 'org_detail.html', {
        'org': org,
        'related_content': related_content
    })
def blog_list(request):
    blog_posts = BlogPost.objects.filter(status='published').order_by('-date')
    
    # Pagination - 9 posts per page
    paginator = Paginator(blog_posts, 9)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    
    return render(request, 'blog_list.html', {
        'blog_posts': page_obj,
        'page_obj': page_obj,
        'is_paginated': paginator.num_pages > 1
    })
def leadership(request):
    return render(request, 'leadership.html')

def history(request):
    return render(request, 'history.html')

def policy(request):
  return render(request, 'policy.html')

def contact(request):
    if request.method == 'POST':
        # Create a new Contact record for the donation
        Contact.objects.create(
            first_name=request.POST.get('first_name'),
            last_name=request.POST.get('last_name'),
            email_id=request.POST.get('email_id'),
            mobile_number=request.POST.get('mobile_number'),
            message_subject=request.POST.get('message_subject'),
            feedback=request.POST.get('feedback', '')
        )
        messages.success(request, 'Thank you for your donation! We will contact you soon.')
        return redirect('home')    
    return render(request, 'homepage.html')