//
//  Stack.h
//  Lightweight_Generics_TEST
//
//  Created by wangwayhome on 2017/5/5.
//  Copyright © 2017年 wangwayhome. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack<ObjectType,ResultType> : NSObject
- (void)pushObject:(ObjectType _Nullable )object;
- (ObjectType _Nullable )popObject;



typedef  void(^carblock)(NSUInteger idx, ObjectType _Nullable a);//用ObjectType 定义一个类型

typedef void(^heiheiBlock)(Stack<ObjectType,ResultType> * _Nullable task);//范型类做参数


- (void)carUsingBlock:(carblock _Nullable )block;

- (Stack *_Nullable)heiheiWithBlock:(heiheiBlock _Nullable )block;


@property (nonatomic, readonly) NSArray<ObjectType> * _Nullable allObjects;

@property (nullable, nonatomic, strong) ResultType sresult;

@end

//随便你怎么玩 还可以这样呢
//// 只接受 NSNumber * 的泛型
//@interface Stack<ObjectType: NSNumber *> : NSObject
//// 只接受满足 NSCopying 协议的泛型
//@interface Stack<ObjectType: id<NSCopying>> : NSObject
