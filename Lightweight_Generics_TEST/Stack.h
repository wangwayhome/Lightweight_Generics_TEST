//
//  Stack.h
//  Lightweight_Generics_TEST
//
//  Created by wangwayhome on 2017/5/5.
//  Copyright © 2017年 wangwayhome. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack<ObjectType,ResultType> : NSObject

- (void)pushObject:(ObjectType)object;
- (ObjectType)popObject;



typedef  void(^carblock)(NSUInteger idx, ObjectType  a);//用ObjectType 定义一个类型

typedef void(^heiheiBlock)(Stack<ObjectType,ResultType> *  task);//范型类做参数


- (void)carUsingBlock:(carblock  )block;

- (Stack *)heiheiWithBlock:(heiheiBlock  )block;


@property (nonatomic, readonly) NSArray<ObjectType> *  allObjects;

@property (nonatomic, strong) ResultType sresult;

@end

//随便你怎么玩 还可以这样呢
//// 只接受 NSNumber * 的泛型
//@interface Stack<ObjectType: NSNumber *> : NSObject
//// 只接受满足 NSCopying 协议的泛型
//@interface Stack<ObjectType: id<NSCopying>> : NSObject
