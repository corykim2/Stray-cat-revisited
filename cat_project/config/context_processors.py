from django.conf import settings


def kakao(request):
    return {'KAKAO_JS_KEY': settings.KAKAO_JS_KEY}