#line 1 "Tweak.x"



































#import "CustomHeader.h"


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class EntityModel; @class WenZhangViewController; 
static void (*_logos_orig$_ungrouped$WenZhangViewController$updateVIPMask)(_LOGOS_SELF_TYPE_NORMAL WenZhangViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$WenZhangViewController$updateVIPMask(_LOGOS_SELF_TYPE_NORMAL WenZhangViewController* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$EntityModel$type)(_LOGOS_SELF_TYPE_NORMAL EntityModel* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$EntityModel$type(_LOGOS_SELF_TYPE_NORMAL EntityModel* _LOGOS_SELF_CONST, SEL); 

#line 38 "Tweak.x"


static void _logos_method$_ungrouped$WenZhangViewController$updateVIPMask(_LOGOS_SELF_TYPE_NORMAL WenZhangViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	_logos_orig$_ungrouped$WenZhangViewController$updateVIPMask(self, _cmd);
	self.vipMask.hidden = true;
}





static NSString * _logos_method$_ungrouped$EntityModel$type(_LOGOS_SELF_TYPE_NORMAL EntityModel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	NSString *type = _logos_orig$_ungrouped$EntityModel$type(self, _cmd);
	return type;
	return @"zlArticle";
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$WenZhangViewController = objc_getClass("WenZhangViewController"); { MSHookMessageEx(_logos_class$_ungrouped$WenZhangViewController, @selector(updateVIPMask), (IMP)&_logos_method$_ungrouped$WenZhangViewController$updateVIPMask, (IMP*)&_logos_orig$_ungrouped$WenZhangViewController$updateVIPMask);}Class _logos_class$_ungrouped$EntityModel = objc_getClass("EntityModel"); { MSHookMessageEx(_logos_class$_ungrouped$EntityModel, @selector(type), (IMP)&_logos_method$_ungrouped$EntityModel$type, (IMP*)&_logos_orig$_ungrouped$EntityModel$type);}} }
#line 56 "Tweak.x"
