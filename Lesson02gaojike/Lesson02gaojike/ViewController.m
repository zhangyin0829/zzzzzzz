//
//  ViewController.m
//  Lesson02gaojike
//
//  Created by lanou3g on 15/8/14.
//  Copyright (c) 2015年 ZY. All rights reserved.
//

#import "ViewController.h"
#import "LOClass.h"
#import "LOStudent.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 增
    LOClass *myClass = [LOClass MR_createEntity];
    myClass.name = @"BJS150515";
    
    for (int i = 0; i < 10; i ++) {
        LOStudent *student = [LOStudent MR_createEntity];
        student.name = @"党鹏飞";
        student.sex = @"男";
        student.num = @(1);
        // 添加关系类实体
        [myClass addMyStudentObject:student];
    }
    
    // 保存上下文
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
    
    // 删
    LOStudent *oneStudent = [LOStudent MR_createEntity];
    oneStudent.num = @(1);
    
    [[NSManagedObjectContext MR_defaultContext] deleteObject:oneStudent];
    
    // 查询
    // 返回全部
    NSArray *array = [LOStudent MR_findAll];
    // 返回第一个
    LOStudent *firstStudent = [LOStudent MR_findFirst];
    
    // 改
    // 查询某一个
    LOStudent *someoneStudent = [LOStudent MR_findFirstByAttribute:@"num" withValue:@"1"];
    
    // 查询全部 按照某个属性排序
    NSArray *sortArray = [LOStudent MR_findAllSortedBy:@"num" ascending:YES];
    
    someoneStudent.num = @(11);
    
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
