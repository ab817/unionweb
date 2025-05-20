from django.contrib import admin
import csv
from django.http import HttpResponse
from .models import (
    SliderImage, Event, WelcomeContent, LearningMaterial,
    BlogPost, GalleryPost, GalleryImage,VideoPost, Contact, IssuePlan,PageVisit
)


def get_all_fields(model):
    return [field.name for field in model._meta.fields]

@admin.register(SliderImage)
class SliderImageAdmin(admin.ModelAdmin):
    list_display = get_all_fields(SliderImage)

@admin.register(Event)
class EventAdmin(admin.ModelAdmin):
    list_display = get_all_fields(Event)

@admin.register(IssuePlan)
class IssuePlanAdmin(admin.ModelAdmin):
    list_display = get_all_fields(IssuePlan)

@admin.register(WelcomeContent)
class WelcomeContentAdmin(admin.ModelAdmin):
    list_display = get_all_fields(WelcomeContent)

@admin.register(LearningMaterial)
class LearningMaterialAdmin(admin.ModelAdmin):
    list_display = get_all_fields(LearningMaterial)

@admin.register(BlogPost)
class BlogPostAdmin(admin.ModelAdmin):
    list_display = get_all_fields(BlogPost)

@admin.register(GalleryPost)
class GalleryPostAdmin(admin.ModelAdmin):
    list_display = get_all_fields(GalleryPost)

@admin.register(GalleryImage)
class GalleryImageAdmin(admin.ModelAdmin):
    list_display = get_all_fields(GalleryImage)

@admin.register(VideoPost)
class VideoPostAdmin(admin.ModelAdmin):
    list_display = get_all_fields(VideoPost)

@admin.register(Contact)
class ContactAdmin(admin.ModelAdmin):
    list_display = get_all_fields(Contact)

class PageVisitAdmin(admin.ModelAdmin):
    list_display = ('ip_address', 'visited_at', 'url', 'user_agent')
    search_fields = ('ip_address','visited_at', 'url', 'user_agent')
    list_filter = ('ip_address','visited_at', 'url', 'user_agent')

    def export_as_csv(self, request, queryset):
        response = HttpResponse(content_type='text/csv')
        response['Content-Disposition'] = 'attachment; filename="page_visits.csv"'
        writer = csv.writer(response)
        
        # Write header row
        writer.writerow(['IP Address', 'Visited At', 'URL', 'User Agent'])
        
        # Write data rows
        for visit in queryset:
            writer.writerow([visit.ip_address, visit.visited_at, visit.url, visit.user_agent])
        
        return response

    export_as_csv.short_description = "Download as Excel (CSV)"

    actions = [export_as_csv]
admin.site.register(PageVisit, PageVisitAdmin)