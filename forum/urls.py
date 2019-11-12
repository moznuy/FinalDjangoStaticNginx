from .views import PostViewSet
from rest_framework.routers import SimpleRouter

router = SimpleRouter()
router.register(r'posts', PostViewSet, basename='post')
urlpatterns = router.urls

# urlpatterns = [
#     path('post/'),
# ]
