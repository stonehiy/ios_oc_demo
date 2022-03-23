//
//  Result.h
//  iOSOCDemo
//
//  Created by baipao on 2022/3/22.
//

#import <Foundation/Foundation.h>
#import "IResult.h"

NS_ASSUME_NONNULL_BEGIN

@interface Result<T> : NSObject<IResult>

@property (nonatomic, strong) id data;
@property (nonatomic, assign) NSInteger errorCode;
@property (nonatomic, strong) NSString *errorMsg;

+ (instancetype) resultWithDict:(NSDictionary<NSString *, id> *)dict;




@end

NS_ASSUME_NONNULL_END
