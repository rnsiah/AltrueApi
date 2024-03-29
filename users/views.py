from django.shortcuts import render
from django.contrib import messages
from django.shortcuts import redirect
from .forms import UserForm, ProfileForm
from .models import User, Profile, Balance
from django.contrib.auth.decorators import login_required
from django.db import transaction



@login_required
@transaction.atomic
def update_profile(request):
    if request.method == 'POST':
        user_form = UserForm(request.POST, instance=request.user)
        profile_form = ProfileForm(request.POST, instance=request.user.profile)
        if user_form.is_valid() and profile_form.is_valid():
            user_form.save()
            profile_form.save()
            messages.success(request, _('Your profile was successfully updated!'))
            return redirect('settings:profile')
        else:
            messages.error(request, _('Please correct the error below.'))
    else:
        user_form = UserForm(instance=request.user)
        profile_form = ProfileForm(instance=request.user.profile)
    return render(request, 'profiles/profile.html', {
        'user_form': user_form,
        'profile_form': profile_form
    })



def user_profile(request, username):
    user = User.objects.get(username=username)
    balance = User.balance.get(balance = balance)
    context = {
       "user": user,
       'balance':balance
    }


    return render(request, 'user_profile.html', context)


