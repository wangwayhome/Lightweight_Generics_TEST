//
//  ViewController.m
//  Lightweight_Generics_TEST
//
//  Created by wangwayhome on 2017/5/5.
//  Copyright © 2017年 wangwayhome. All rights reserved.
//

#import "ViewController.h"
#import "Stack.h"
@interface ViewController ()

@property (readonly) NSArray<NSURL *> *imageURLs;//这样也行！

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray<NSString *> *strings = @[@"HONDA", @"TOYOTA"];
    
    NSString * honda =  [NSString stringWithString:[strings firstObject]];//神奇的一刻出现了～～～ 自己知道是string了。
    
    NSLog(@"MY car is %@",honda);
    
    
    NSDictionary<NSString *, NSNumber *> *mapping = @{@"HONDA": @1, @"TOYOTA": @2};
//同样也可以有多个参数类型指定
    NSLog(@"%@",[mapping objectForKey:@"HONDA"]);
    
    //自定义类属性的泛型
    Stack<NSString *,NSDictionary *> *strst = [[Stack alloc]init];
    [strst pushObject:@"哈哈"];
    
    [strst carUsingBlock:^(NSUInteger idx, NSString * _Nullable a) {
        NSLog(@"回调回来的参数是 %lu\n%@",(unsigned long)idx,a);
    }];

    //接下来就是bt的要死的用法，呵呵 ，网络请求回调非常犀利。
   Stack* strstMine= [strst heiheiWithBlock:^(Stack<NSString *,NSDictionary *> * _Nullable task) {
        NSLog(@"%@",task.sresult);
    }];
    NSLog(@"strstMine = %@,strst = %@",strstMine,strst);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
