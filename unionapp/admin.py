from django.contrib import admin
from .models import (
    SliderImage, Event, WelcomeContent, LearningMaterial,
    BlogPost, GalleryPost, GalleryImage,VideoPost, Contact, IssuePlan
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
