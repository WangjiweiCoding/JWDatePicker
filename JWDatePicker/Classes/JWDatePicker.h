//
//  JWDatePicker.h
//  JWlouds
//
//  Created by Jiwei Wang on 2020/8/4.
//  Copyright © 2020 JWlouds. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JWDatePicker : UIView
@property (nonatomic, strong)void(^selectBlock)(NSString *str);
@end

NS_ASSUME_NONNULL_END
