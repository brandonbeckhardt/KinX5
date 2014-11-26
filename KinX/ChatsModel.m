//
//  ChatTableModel.m
//  KinX
//
//  Created by Brandon Eric Beckhardt on 11/16/14.
//  Copyright (c) 2014 Brandon Beckhardt. All rights reserved.
//

#import "ChatsModel.h"

@implementation ChatsModel

-(instancetype)init{
    self = [super init];
    if (self) {
        [self addData];
    }
    return self;
}


-(NSMutableArray *)chats{
    if(!_chats){
        _chats = [[NSMutableArray alloc] init];
    }
        return _chats;
}

//Need to add date
-(void)addData{
//    First chat
    ChatObject *chat1 = [[ChatObject alloc] init];
    chat1.name = @"Immediate Family";
    chat1.members = [[NSMutableArray alloc] initWithObjects:@"Mom", @"Minka", @"Dad", nil];
    chat1.conversation = [[NSMutableArray alloc] initWithObjects:@"Hello", @"What time is dinner?", nil];
//    Second Chat
    ChatObject *chat2 = [[ChatObject alloc] init];
    chat2.name = @"Sisters";
    chat2.members = [[NSMutableArray alloc] initWithObjects:@"Jackie", @"Minka", nil];
    chat2.conversation = [[NSMutableArray alloc] initWithObjects:@"Hello", @"Hello!!", nil];
//    Third Chat
    //    First chat
    ChatObject *chat3 = [[ChatObject alloc] init];
    chat3.name = @"Grandparents";
    chat3.members = [[NSMutableArray alloc] initWithObjects:@"Eva", @"Walter", nil];
    chat3.conversation = [[NSMutableArray alloc] initWithObjects:@"Can't Wait to see you guys!", nil];
    //    Fourth Chat
    ChatObject *chat4 = [[ChatObject alloc] init];
    chat4.name = @"Dad";
    chat4.members = [[NSMutableArray alloc] initWithObjects:@"Dad", nil];
    chat4.conversation = [[NSMutableArray alloc] initWithObjects:@"Thanksgiving is going to be great", nil];
    
    
    
    [self.chats addObject:chat1];
    [self.chats addObject:chat2];
    [self.chats addObject:chat3];
    [self.chats addObject:chat4];
}

@end
