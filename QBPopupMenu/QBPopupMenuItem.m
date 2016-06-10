//
//  QBPopupMenuItem.m
//  QBPopupMenu
//
//  Created by Tanaka Katsuma on 2013/11/22.
//  Copyright (c) 2013年 Katsuma Tanaka. All rights reserved.
//

#import "QBPopupMenuItem.h"

@interface QBPopupMenuItem ()

@property (nonatomic, weak, readwrite) id target;
@property (nonatomic, assign, readwrite) SEL action;

@property (nonatomic, copy, readwrite) NSString *title;

@end

@implementation QBPopupMenuItem

+ (instancetype)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action dismissAfterPerformAction:(BOOL)dismissAfterPerformAction
{
    return [[self alloc] initWithTitle:title target:target action:action dismissAfterPerformAction:dismissAfterPerformAction];
}

+ (instancetype)itemWithImage:(UIImage *)image target:(id)target action:(SEL)action dismissAfterPerformAction:(BOOL)dismissAfterPerformAction
{
    return [[self alloc] initWithImage:image target:target action:action dismissAfterPerformAction:dismissAfterPerformAction];
}

+ (instancetype)itemWithTitle:(NSString *)title image:(UIImage *)image target:(id)target action:(SEL)action dismissAfterPerformAction:(BOOL)dismissAfterPerformAction
{
    return [[self alloc] initWithTitle:title image:image target:target action:action dismissAfterPerformAction:dismissAfterPerformAction];
}

- (instancetype)initWithTitle:(NSString *)title target:(id)target action:(SEL)action dismissAfterPerformAction:(BOOL)dismissAfterPerformAction
{
    return [self initWithTitle:title image:nil target:target action:action dismissAfterPerformAction:dismissAfterPerformAction];
}

- (instancetype)initWithImage:(UIImage *)image target:(id)target action:(SEL)action dismissAfterPerformAction:(BOOL)dismissAfterPerformAction
{
    return [self initWithTitle:nil image:image target:target action:action dismissAfterPerformAction:dismissAfterPerformAction];
}

- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image target:(id)target action:(SEL)action dismissAfterPerformAction:(BOOL)dismissAfterPerformAction
{
    self = [super init];
    
    if (self) {
        self.target = target;
        self.action = action;
        
        self.title = title;
        self.image = image;
        
        self.dismissAfterPerformAction =  dismissAfterPerformAction;
    }
    
    return self;
}

+ (instancetype)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action
{
    return [self itemWithTitle:title target:target action:action dismissAfterPerformAction:YES];
}

+ (instancetype)itemWithImage:(UIImage *)image target:(id)target action:(SEL)action
{
    return [self itemWithImage:image target:target action:action dismissAfterPerformAction:YES];
}

+ (instancetype)itemWithTitle:(NSString *)title image:(UIImage *)image target:(id)target action:(SEL)action
{
    return [self itemWithTitle:title image:image target:target action:action dismissAfterPerformAction:YES];
}

- (instancetype)initWithTitle:(NSString *)title target:(id)target action:(SEL)action
{
    return [self initWithTitle:title target:target action:action dismissAfterPerformAction:YES];
}

- (instancetype)initWithImage:(UIImage *)image target:(id)target action:(SEL)action
{
    return [self initWithImage:image target:target action:action dismissAfterPerformAction:YES];
}

- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image target:(id)target action:(SEL)action
{
    return [self initWithTitle:title image:image target:target action:action dismissAfterPerformAction:YES];
}

@end
