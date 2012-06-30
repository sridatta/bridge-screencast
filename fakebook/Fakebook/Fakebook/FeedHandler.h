//
//  FeedHandler.h
//  Fakebook
//
//  Created by Sridatta Thatipamala on 6/25/12.
//  Copyright (c) 2012 Flotype Inc. All rights reserved.
//

#import "bridge-ios/bridge.h"

@interface FeedHandler : NSObject<BridgeObject>

-(void) post:(NSString*)author :(NSString*)message;

@end
