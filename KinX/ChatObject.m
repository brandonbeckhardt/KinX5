//
//  ChatObject.m
//  KinX
//
//  Created by Brandon Eric Beckhardt on 11/16/14.
//  Copyright (c) 2014 Brandon Beckhardt. All rights reserved.
//

#import "ChatObject.h"

@implementation ChatObject

-(instancetype)init{
    self = [super init];
    if (self) {
    }
    return self;
}
-(void)setName:(NSString *)name{
    _name = name;
}
-(void)setMembers:(NSMutableArray *)members{
    _members = members;
}
-(void)setDate:(NSDate *)date{
    _date = date;
}
-(void)setConversation:(NSMutableArray *)conversation{
    _conversation = conversation;
}

@end
