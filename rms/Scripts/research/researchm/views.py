from django.shortcuts import render

# Create your views here.
def Guest(request):
    return render(request,'Guest.html',{})