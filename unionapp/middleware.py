from .models import PageVisit

class TrackPageVisitMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        response = self.get_response(request)

        # Skip tracking for admin and API endpoints (modify as needed)
        if request.path.startswith('/admin/') or request.path.startswith('/api/') or request.path.startswith('/static/') or request.path.startswith('/media/') or request.path.startswith('/favicon.ico'):
            return response
        
        # Get IP address, User Agent, and URL
        ip_address = self.get_client_ip(request)
        user_agent = request.META.get('HTTP_USER_AGENT', '')
        url_visited = request.build_absolute_uri()

        # Log visit
        PageVisit.objects.create(ip_address=ip_address, user_agent=user_agent, url=url_visited)

        return response

    def get_client_ip(self, request):
        x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
        if x_forwarded_for:
            ip = x_forwarded_for.split(',')[0]
        else:
            ip = request.META.get('REMOTE_ADDR')
        return ip
