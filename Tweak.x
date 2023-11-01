#import <UIKit/UIKit.h>


@interface SBHLibraryPodFolderView : UIView
@end

%hook SBHLibraryPodFolderView
-(void)didMoveToWindow {
	%orig;

	UIView *libraryView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1000, 1000)];
	libraryView.backgroundColor = [UIColor systemBlueColor]; 

	NSString *fishyFilePath = @"/private/var/jb/Library/Application Support/com.hydrate.fishylibrary.bundle/fishy.png";
	UIImageView *fishyPicView = [[UIImageView alloc] initWithFrame:CGRectMake(135, 100, 100, 100)];
	[fishyPicView setImage:[UIImage imageWithContentsOfFile:fishyFilePath]];

	NSString *fishyText = @"just be out here fishing :33333";
	UITextView *fishyTextView = [[UITextView alloc] initWithFrame:CGRectMake(135, 250, 100, 100)];

	fishyTextView.text = fishyText;
	fishyTextView.backgroundColor = [UIColor clearColor];
	fishyTextView.textColor = [UIColor whiteColor];
	fishyTextView.editable = NO;

	[self addSubview:libraryView];
	[self addSubview:fishyPicView];
	[self addSubview:fishyTextView];
}
%end

@interface SBHSearchBar : UIView
@end

%hook SBHSearchBar
-(void)didMoveToWindow {
	%orig;
	self.hidden = YES;

	//[[UIApplication sharedApplication] openURL: [NSURL URLWithString: @"https://frcoal.cfd"] options:@{} completionHandler:nil];
}%end