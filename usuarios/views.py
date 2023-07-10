from django.shortcuts import render

# Create your views here.
def index(request):
    if request.user.is_authenticated:
        return render(request, 'index.html')
    else:
        return render(request, 'login.html' ) # non_auth.html')
    
    "registration/registration_base.html"