//
//  HelloWorldLayer.m
//  HelloCocos2d-2
//
//  Created by Tatsuya Tobioka on 12/07/31.
//  Copyright __MyCompanyName__ 2012年. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"

@interface HelloWorldLayer () {
    CCSprite *seeker1;
    CCSprite *cocosGuy;
}
@end

// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init]) ) {
		
		// create and initialize a Label
		CCLabelTTF *label = [CCLabelTTF labelWithString:@"Hello World" fontName:@"Marker Felt" fontSize:64];

		// ask director for the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
	
		// position the label on the center of the screen
		label.position =  ccp( size.width /2 , size.height/2 );
		
		// add the label as a child to this Layer
		[self addChild: label];
        
        // create and initialize our seeker sprite, and add it to this layer
        seeker1 = [CCSprite spriteWithFile:@"seeker.png"];
        seeker1.position = ccp(50, 100);
        [self addChild:seeker1];
        
        // do the same for our cocos2d guy, reusing the app icon as its image
        cocosGuy = [CCSprite spriteWithFile:@"Icon.png"];
        cocosGuy.position = ccp(200, 300);
        [self addChild:cocosGuy];
	}
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end