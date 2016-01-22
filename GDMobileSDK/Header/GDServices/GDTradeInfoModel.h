//
//  TradeInfoModel.h
//  StarCharge
//
//  Created by 牟利婷 on 15/12/15.
//  Copyright © 2015年 隔壁老王. All rights reserved.
//

#import "JSONModel.h"

@interface GDTradeInfoModel : JSONModel

@property (nonatomic, strong) NSString *id;                 //订单编号
@property (nonatomic, strong) NSString *price;              //订单金额
@property (nonatomic, strong) NSString *tradeNo;            //第三方交易号(银联交易使用)
@property (nonatomic, strong) NSString *ali;                //支付宝的签名信息
@property (nonatomic, strong) NSString *weixinParam;        //微信的签名信息

@end
