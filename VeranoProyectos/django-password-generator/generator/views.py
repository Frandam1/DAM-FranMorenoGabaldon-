from django.shortcuts import render
from django.http import HttpResponse
import random

# Create your views here.
def home(request):
    return render(request,'home.html')

def about(request):
    return render(request, 'about.html')

def password(request):

    characters = list('abcdefghijklmnñopqrstuvwxyz')
    generated_password = ''

    lenght = int(request.GET.get('lenght'))

    if request.GET.get(('uppercase')):
        characters.extend(list('ABCDEFGHIJKLMNÑOPQRSTUVWXYZ'))
    if request.GET.get(('special')):
        characters.extend(list('({.:,;-_ª!"·$%&/=?¿\|@#~€¬})'))
    if request.GET.get(('numeros')):
        characters.extend(list('1234567890'))

    

    for x in range(lenght):
        generated_password += random.choice(characters)


    return render(request,'password.html', {'password': generated_password})