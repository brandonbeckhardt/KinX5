//
//  ChatTableModel.h
//  KinX
//
//  Created by Brandon Eric Beckhardt on 11/16/14.
//  Copyright (c) 2014 Brandon Beckhardt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChatObject.h"

@interface ChatsModel : NSObject
@property(strong, nonatomic) NSMutableArray *chats;
@end
