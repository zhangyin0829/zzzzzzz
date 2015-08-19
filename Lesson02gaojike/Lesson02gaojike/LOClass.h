//
//  LOClass.h
//  Lesson02gaojike
//
//  Created by lanou3g on 15/8/14.
//  Copyright (c) 2015年 ZY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSManagedObject;

@interface LOClass : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet *myStudent;
@end

@interface LOClass (CoreDataGeneratedAccessors)

- (void)addMyStudentObject:(NSManagedObject *)value;
- (void)removeMyStudentObject:(NSManagedObject *)value;
- (void)addMyStudent:(NSSet *)values;
- (void)removeMyStudent:(NSSet *)values;

@end
