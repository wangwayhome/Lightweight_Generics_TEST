//
//  Stack.m
//  Lightweight_Generics_TEST
//
//  Created by wangwayhome on 2017/5/5.
//  Copyright © 2017年 wangwayhome. All rights reserved.
// 自定义范型

#import "Stack.h"

@implementation Stack

- (void)pushObject:(id)object{
    NSLog(@"%@",object);
}
- (id)popObject{
    return @"";
}

- (void)carUsingBlock:(carblock)block {
    block(1,@"honda");
}
- (Stack *_Nullable)heiheiWithBlock:(heiheiBlock _Nullable )block{
    self.sresult = @"heihei back result";
    block(self);
    
    return self;
}


@end
