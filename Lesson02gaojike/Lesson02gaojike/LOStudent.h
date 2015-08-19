//
//  LOStudent.h
//  Lesson02gaojike
//
//  Created by lanou3g on 15/8/14.
//  Copyright (c) 2015年 ZY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class LOClass;

@interface LOStudent : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * sex;
@property (nonatomic, retain) NSNumber * num;
@property (nonatomic, retain) NSSet *myClass;
@end

@interface LOStudent (CoreDataGeneratedAccessors)

- (void)addMyClassObject:(LOClass *)value;
- (void)removeMyClassObject:(LOClass *)value;
- (void)addMyClass:(NSSet *)values;
- (void)removeMyClass:(NSSet *)values;

@end
