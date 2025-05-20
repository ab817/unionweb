from django.urls import path
from . import views
from django.conf import settings

urlpatterns = [
    path('', views.home, name='home'),
    path('leadership/', views.leadership, name='leadership'),
    path('history/', views.history, name='history'),
    path('policy/', views.policy, name='policy'),
    path('contact/', views.contact, name='contact'),
    path('blog/<int:id>/', views.blog_detail, name='blog_detail'),
    path('event/<int:id>/', views.event_detail, name='event_detail'),
    path('gallery/<int:id>/', views.gallery_detail, name='gallery_detail'),
    path('organization/<int:id>/', views.org_detail, name='org_detail'),
    path('plan/<int:id>/', views.plan_detail, name='plan_detail'),
    path('blog_list/', views.blog_list, name='blog_list'),
    path('video_list', views.video_list, name='video_list'),
]
