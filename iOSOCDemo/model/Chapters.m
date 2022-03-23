//
//  Chapters.m
//  iOSOCDemo
//
//  Created by baipao on 2022/3/22.
//
/*
 {
author = "";
children =
);
courseId = 13;
cover = "";
desc = "";
id = 408;
lisense = "";
lisenseLink = "";
name = "\U9e3f\U6d0b";
order = 190000;
parentChapterId = 407;
userControlSetTop = 0;
visible = 1;
}
 */
#import "Chapters.h"

@implementation Chapters


+ (instancetype) chaptersWithDict:( NSDictionary<NSString *, id> *)dict{
    Chapters *chapters =  [[self alloc]init];
    [chapters setValuesForKeysWithDictionary:dict];
    return  chapters;
    
}

- (id)valueForUndefinedKey:(NSString *)key {
    NSLog(@"valueForUndefinedKey出现异常，该key不存在%@",key);
    return nil;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    NSLog(@"setValue出现异常，该key不存在%@", key);
}

- (NSString *)description{
    
    
    return [NSString stringWithFormat:@"id = %ld author = %@",self.id,self.author];
}


@end
