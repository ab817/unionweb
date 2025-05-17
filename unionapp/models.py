from django.db import models
from django.utils.text import slugify
from ckeditor.fields import RichTextField

# Slider Image Model
class SliderImage(models.Model):
    title = models.CharField(max_length=255)
    description = models.TextField(blank=True, null=True)
    image = models.ImageField(upload_to='slider_images/')
    position = models.PositiveIntegerField()
    is_active = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

# Welcome Content Model
class WelcomeContent(models.Model):
    STATUS_CHOICES = [
        ('primary', 'Primary'),
        ('secondary', 'Secondary'),
    ]
    title = models.CharField(max_length=255)
    slogan = models.CharField(max_length=255)
    description = RichTextField()
    image = models.ImageField(upload_to='welcome_images/')
    video_link = models.URLField(blank=True, null=True)
    tag = models.CharField(choices=STATUS_CHOICES, default='secondary', max_length=100)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

# Event Model
class Event(models.Model):
    EVENT_CHOICES = [
        ('Member Events', 'Member Events'),
        ('Employee Engagement', 'Employee Engagement'),
        ('Professional Development', 'Professional Development'),
        ('Industry-Specific', 'Industry-Specific'),
        ('Techonology', 'Techonology'),
        ('Awareness', 'Awareness'),
    ]
    title = models.CharField(max_length=255)
    description = RichTextField()
    category = models.CharField(choices=EVENT_CHOICES, default='offline', max_length=100)
    image = models.ImageField(upload_to='event_images/')
    start_datetime = models.DateTimeField()
    end_datetime = models.DateTimeField()
    location = models.CharField(max_length=255)
    is_virtual = models.BooleanField(default=False)
    video_link = models.URLField(blank=True, null=True)
    document_link = models.FileField(upload_to='event_documnents/', blank=True, null=True)
    registration_link = models.URLField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

# Learning Material Model
class LearningMaterial(models.Model):
    Learning_choices = [
        ('loksewa', 'Loksewa'),
        ('training', 'Training'),
    ]
    title = models.CharField(max_length=255)
    thumbnail = models.ImageField(upload_to='learning_thumbnails/')
    description = RichTextField()
    tutor = models.CharField(max_length=255)
    video_link = models.URLField(blank=True, null=True)
    document_link = models.FileField(upload_to='learning_documents/', blank=True, null=True)
    duration = models.CharField(max_length=50)  # or models.DurationField()
    tags = models.CharField(choices=Learning_choices, default='loksewa', max_length=100)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

# Blog Post Model
class BlogPost(models.Model):
    STATUS_CHOICES = [
        ('unpublished', 'Unpublished'),
        ('published', 'Published'),
    ]

    title = models.CharField(max_length=255)
    slug = models.SlugField(unique=True, blank=True, editable=False)  # Allow blank so we can auto-generate
    image = models.ImageField(upload_to='blog_images/')
    description = RichTextField()
    date = models.DateField()
    author = models.CharField(max_length=255)
    status = models.CharField(max_length=15, choices=STATUS_CHOICES, default='unpublished')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def save(self, *args, **kwargs):
        if not self.slug:
            base_slug = slugify(self.title)
            slug = base_slug
            num = 1
            while BlogPost.objects.filter(slug=slug).exists():
                slug = f"{base_slug}-{num}"
                num += 1
            self.slug = slug
        super().save(*args, **kwargs)

# Contact Model
class Contact(models.Model):
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    email_id = models.EmailField()
    mobile_number = models.CharField(max_length=20)
    message_subject = models.CharField(max_length=255)
    feedback = models.TextField()
    submitted_at = models.DateTimeField(auto_now_add=True)

# Gallery Post Model
class GalleryPost(models.Model):
    CATEGORY_CHOICES = [
        ('meeting', 'Meeting'),
        ('event', 'Event'),
    ]
    title = models.CharField(max_length=255)
    tag = models.CharField(choices=CATEGORY_CHOICES, default='all', max_length=100)
    thumbnail = models.ImageField(upload_to='gallery_thumbnails/')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

# Gallery Image Model
class GalleryImage(models.Model):
    gallery_post = models.ForeignKey(GalleryPost, related_name='images', on_delete=models.CASCADE)
    image_title = models.CharField(max_length=255)
    image = models.ImageField(upload_to='gallery_images/')
    uploaded_at = models.DateTimeField(auto_now_add=True)

class VideoPost(models.Model):
    title = models.CharField(max_length=255)
    description = models.TextField(blank=True, null=True)
    image = models.ImageField(upload_to='mutimedia_images/')
    video_link = models.URLField(blank=True, null=True)
    position = models.PositiveIntegerField()
    is_active = models.BooleanField(default=True)

class IssuePlan(models.Model):
    ISSUE_TYPE_CHOICES = [
        ('HR Related', 'HR Related'),
        ('Operation Related', 'Operation Related'),
        ('Credit Related', 'Credit Related'),
        ('IT Related', 'IT Related'),
    ]
    
    title = models.CharField(max_length=255)
    description = RichTextField()
    image = models.ImageField(upload_to='issues/')
    issue_type = models.CharField(max_length=50, choices=ISSUE_TYPE_CHOICES)
    is_featured = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title