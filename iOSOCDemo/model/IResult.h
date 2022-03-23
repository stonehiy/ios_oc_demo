//
//  IResult.h
//  iOSOCDemo
//
//  Created by baipao on 2022/3/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IResult<NSObject>
@required
-(id) reData;
-(BOOL) reSuccess;
-(NSInteger) reCode;


@end

NS_ASSUME_NONNULL_END
