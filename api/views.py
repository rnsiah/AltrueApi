from rest_framework import generics, status
from rest_framework.views import APIView
from .serializers import ShirtSerializer, NonProfitSerializer, AtrocitySerializer, UserSerializer, CategorySerializer
from Alt.models import Shirt, NonProfit, Atrocity, Category
from django.contrib.auth.models import User
from rest_framework.response import Response
from rest_framework.permissions import IsAdminUser

class ShirtList(generics.ListCreateAPIView):
  serializer_class = ShirtSerializer
  queryset= Shirt.objects.all()
  
     
class NonProfitList(generics.ListAPIView):
  serializer_class = NonProfitSerializer
  queryset = NonProfit.objects.all()


class AtrocityList(generics.ListAPIView):
  serializer_class = AtrocitySerializer
  queryset= Atrocity.objects.all()

class CategoryList(generics.ListAPIView):
  serializer_class = CategorySerializer
  queryset= Category.objects.all()






class UserRecordView(APIView):
    """
    API View to create or get a list of all the registered
    users. GET request returns the registered users whereas
    a POST request allows to create a new user.
    """
    permission_classes = [IsAdminUser]

    def get(self, format=None):
        users = User.objects.all()
        serializer = UserSerializer(users, many=True)
        return Response(serializer.data)

    def post(self, request):
        serializer = UserSerializer(data=request.data)
        if serializer.is_valid(raise_exception=ValueError):
            serializer.create(validated_data=request.data)
            return Response(
                serializer.data,
                status=status.HTTP_201_CREATED
            )
        return Response(
            {
                "error": True,
                "error_msg": serializer.error_messages,
            },
            status=status.HTTP_400_BAD_REQUEST
        )


