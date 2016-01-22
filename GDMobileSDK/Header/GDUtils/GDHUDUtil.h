//
//  GDHUDUtil.h
//  DaZhuanJia
//
//  Created by wangguodong on 15/10/28.
//  Copyright © 2015年 隔壁老王. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GDHUDUtil : NSObject

/**
 在keywindow中显示text
 @param     text    要显示的文本信息
 @return    void
 */
+ (void)showTextInWindow:(NSString *)text;

/**
 在指定view中显示text
 @param     text    要显示的文本信息
 @param     view    指定的view
 @return    void
 */
+ (void)showText:(NSString *)text inView:(UIView *)view;

/**
 在keywindow中显示loading
 @return    void
 */
+ (void)showLoadingInWindow;
/**
 在keywindow中移除loading
 @return    void
 */
+ (void)dismissLoadingInWindow;

/**
 在指定的view中显示loading
 @param     view    指定的view
 @return    void
 */
+ (void)showLoadingInView:(UIView *)view;
/**
 在指定的view中移除loading
 @param     view    指定的view
 @return    void
 */
+ (void)dismissLoadingInView:(UIView *)view;
@end
