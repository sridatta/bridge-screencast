//
//  ViewController.m
//  Fakebook
//
//  Created by Sridatta Thatipamala on 6/24/12.
//  Copyright (c) 2012 Flotype Inc. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "FeedHandler.h"
#import "bridge-ios/bridge.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  AppDelegate* delegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
  Bridge* bridge = [delegate bridge];
  [[bridge getService:@"posts"] activateFeed:[[FeedHandler alloc] init]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
      return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
  } else {
      return YES;
  }
}


@end
