//
//  ChatViewController.m
//  KinX
//
//  Created by Brandon Eric Beckhardt on 11/16/14.
//  Copyright (c) 2014 Brandon Beckhardt. All rights reserved.
//

#import "ChatViewController.h"

@interface ChatViewController ()
//@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UIButton *sendButton;
@property (strong, nonatomic) IBOutlet UITextField *textField;

@property (assign, nonatomic) BOOL isHint;
@property (strong, nonatomic) IBOutlet UILabel *memberLabel;
@property (assign, nonatomic) BOOL keyBoardOn; //    Want to change this logic (don't want to rely on keyboard bool)
//@property (strong, nonatomic) ChatsModel *chatInfo;

@end

@implementation ChatViewController


-(void)viewDidAppear:(BOOL)animated{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(myNotificationMethod:) name:UIKeyboardDidShowNotification object:nil];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.keyBoardOn = NO;
    self.title = [self.chat name];
 

    self.memberLabel.text = [self createMemberLabel];
    
    self.sendButton.layer.cornerRadius = 10;

}
//-(ChatsModel *)chatInfo{
//    if(_chatInfo) _chatInfo = [[ChatsModel alloc] init];
//    return _chatInfo;
//}
- (void)myNotificationMethod:(NSNotification*)notification
{
//    Want to change this logic (don't want to rely on keyboard bool)
        NSDictionary* keyboardInfo = [notification userInfo];
        NSValue* keyboardFrameBegin = [keyboardInfo valueForKey:UIKeyboardFrameBeginUserInfoKey];
        CGRect keyboardFrameBeginRect = [keyboardFrameBegin CGRectValue];
        [self setTextOrigin:keyboardFrameBeginRect];
}
-(void)setTextOrigin:(CGRect)keyBoardFrame{
    
    CGRect original = self.textField.frame;
    CGFloat y = self.view.frame.size.height - keyBoardFrame.size.height - original.size.height - 5;
    original.origin.y = y;
    [self.textField setFrame:original];
    
    CGRect button = self.sendButton.frame;
    button.origin.y = y;
    [self.sendButton setFrame:button];
    self.keyBoardOn = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setChat:(ChatObject *)chat{
    _chat = chat;
}

-(NSString *)createMemberLabel{
    NSMutableString *str = [[NSMutableString alloc] init];
    for(int i = 0; i < self.chat.members.count; i++){
        NSString *curr = [self.chat.members objectAtIndex:i];
        if(i == self.chat.members.count - 1){
            [str appendString:curr];
        } else {
            [str appendString:curr];
            [str appendString:@", "];
            
        }
        
    }
    return str;
    
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
