#import <UIKit/UIPageControl.h>

// Pretty much all of this code was written by harrywantstodev! I just hardcoded the nil's/NO's.

%hook SBNotificationCenterViewController
//Notification Center
-(void)_loadPageControl
{

}
%end

%hook SBLeafIcon
//Beta Dot
-(bool) isBeta
{
	return NO;
}
-(BOOL)isRecentlyUpdated
//Blue Update Dot
{
	return NO;
}
%end
//Widget
%hook WGWidgetListEditViewController
-(BOOL)_isNewItem:(id)arg1
{
	return NO;
}
%end
//SpringBoard and folders
%hook SBIconListPageControl
- (id)initWithFrame:(CGRect)frame
{
	return nil;
}
%end

//Control Center Pages
%hook CCUIControlCenterPageControl
- (id)initWithFrame:(CGRect)frame
{
	return nil;
}
%end

//Lockscreen
%hook SBDashBoardPageControl
- (id)initWithFrame:(CGRect)frame
{
	return nil;
}
//Needed for 10.2
- (id)_indicatorViewEnabled:(_Bool)arg1 index:(long long)arg2
{
	return nil;
}
%end