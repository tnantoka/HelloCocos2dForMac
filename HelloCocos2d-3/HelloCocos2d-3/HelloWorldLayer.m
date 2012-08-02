//
//  HelloWorldLayer.m
//  HelloCocos2d-3
//
//  Created by Tatsuya Tobioka on 12/08/02.
//  Copyright __MyCompanyName__ 2012年. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"

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
		//[self addChild: label]; // comment out

        CCLayerColor* layerColor = [CCLayerColor layerWithColor:ccc4(arc4random() % 256, arc4random() % 256, arc4random() % 256, arc4random() % 256)];
        [self addChild:layerColor];
            
        // Create some menu items
		CCMenuItemFont *menuItem1 = [CCMenuItemFont itemWithString: @"Next" block:^(id sender) {
            NSLog(@"menuItem1 is clicked.");
            [[CCDirector sharedDirector] pushScene:[CCTransitionFade transitionWithDuration:0.5f scene:[HelloWorldLayer scene]]];
		}];
        //menuItem1.color = ccc3(0, 0, 0);
        
        CCMenuItemFont *menuItem2 = [CCMenuItemFont itemWithString: @"Back" block:^(id sender) {
            NSLog(@"menuItem2 is clicked.");
            [[CCDirector sharedDirector] popScene];
		}];
        //menuItem2.color = ccc3(0, 0, 0);

        // Create a menu and add your menu items to it
        CCMenu *myMenu = [CCMenu menuWithItems:menuItem1, menuItem2, nil];
        
        // Arrange the menu items vertically
        [myMenu alignItemsVertically];
        
        // add the menu to your scene
        [self addChild:myMenu];

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
