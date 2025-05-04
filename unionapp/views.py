from django.shortcuts import render

def home(request):
    return render(request, 'base.html')

def leadership(request):
    return render(request, 'leadership.html')

def history(request):
    return render(request, 'history.html')

def policy(request):
    return render(request, 'policy.html')

def contact(request):
    return render(request, 'contact.html')