from django.urls import path

from . import views as core_views

urlpatterns = [
    path("posts/", core_views.posts, name="posts"),
    path("posts/<int:post_id>/", core_views.post, name="post"),
]
