//
//  Result.m
//  iOSOCDemo
//
//  Created by baipao on 2022/3/22.
//

#import "Result.h"

@implementation Result

+ (instancetype) resultWithDict:(NSDictionary<NSString *, id> *)dict{
  Result *result =   [[self alloc] init];
  [result setValuesForKeysWithDictionary:dict];
    return  result;
}

- (id)reData{
    
    return  nil;
    
}

- (NSInteger)reCode{
    
    return _errorCode;
    
}

- (BOOL)reSuccess{
    
    return 0== _errorCode;
}




@end
