from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('blog/', views.blog, name='blog'),
    path('leadership/', views.leadership, name='leadership'),
    path('history/', views.history, name='history'),
    path('policy/', views.policy, name='policy'),
    path('contact/', views.contact, name='contact'),
]
