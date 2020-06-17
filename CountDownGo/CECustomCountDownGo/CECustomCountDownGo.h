//
//  CECustomCountDownGo.h
//  CountDownGo
//
//  Created by zhouzhongliang on 2020/5/17.
//  Copyright © 2020 zhouzhongliang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class CECustomCountDownGo;
@protocol CECustomCountDownGoDelagete <NSObject>

- (void)customCountDown:(CECustomCountDownGo *)downView;

@end

@interface CECustomCountDownGo : UIView

@property (nonatomic, assign) id <CECustomCountDownGoDelagete> delegate;
@property (nonatomic, assign) NSInteger downNumber;

+ (instancetype)downView;
- (void)addTimerForAnimationDownView;

@end

NS_ASSUME_NONNULL_END
