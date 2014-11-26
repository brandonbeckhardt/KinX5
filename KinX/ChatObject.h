//
//  ChatObject.h
//  KinX
//
//  Created by Brandon Eric Beckhardt on 11/16/14.
//  Copyright (c) 2014 Brandon Beckhardt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChatObject : NSObject
@property NSString *name;
@property NSMutableArray *members;
@property NSMutableArray *conversation; //may want seperate class
@property NSDate *date;
@end
