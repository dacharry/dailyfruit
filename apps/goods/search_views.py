from haystack.views import SearchView
# from .models import *
 
class MySeachView(SearchView):
	#重载extra_context来添加额外的context内容
    def extra_context(self): 
        context = super(MySeachView,self).extra_context()
        context['cart_count'] = 0
        return context
