import requests
from django.http import JsonResponse

# Create your views here.


def posts(request):
    response = requests.get("https://jsonplaceholder.typicode.com/posts", timeout=60)
    return JsonResponse(response.json(), safe=False)


def post(request, post_id):
    response = requests.get(
        f"https://jsonplaceholder.typicode.com/posts/{post_id}", timeout=60
    )
    return JsonResponse(response.json())
