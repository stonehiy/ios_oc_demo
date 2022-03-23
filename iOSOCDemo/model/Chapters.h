//
//  Chapters.h
//  iOSOCDemo
//
//  Created by baipao on 2022/3/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Chapters : NSObject

@property (nonatomic, strong) NSString *author;
@property (nonatomic, assign) NSInteger courseId;
@property (nonatomic, strong) NSString *cover;
@property (nonatomic, strong) NSString *desc;
@property (nonatomic, assign) NSInteger id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger order;



+ (instancetype) chaptersWithDict:( NSDictionary *)dict;



@end

NS_ASSUME_NONNULL_END
