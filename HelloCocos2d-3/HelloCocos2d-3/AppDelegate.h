//
//  AppDelegate.h
//  HelloCocos2d-3
//
//  Created by Tatsuya Tobioka on 12/08/02.
//  Copyright __MyCompanyName__ 2012年. All rights reserved.
//

#import "cocos2d.h"

@interface HelloCocos2d_3AppDelegate : NSObject <NSApplicationDelegate>
{
	NSWindow	*window_;
	CCGLView	*glView_;
}

@property (assign) IBOutlet NSWindow	*window;
@property (assign) IBOutlet CCGLView	*glView;

- (IBAction)toggleFullScreen:(id)sender;

@end
