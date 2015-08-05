//
//  Tool.h
//  GuduMorning
//
//  Created by Tsao on 15/8/1.
//  Copyright (c) 2015年 FinalFerrumbox. All rights reserved.
//

#import <Foundation/Foundation.h>
@class RACSignal;
@interface Tool : NSObject

/**
 *  组件url工具方法
 *
 *  @param host       请求基地址
 *  @param APIVersion api版本号
 *  @param requestURL 请求操作url
 *  @param params     url附属参数
 *
 *  @return 完整的url
 */
+ (NSString *)buildRequestURLHost:(NSString *)host
                       APIVersion:(NSString *)APIVersion
                       requestURL:(NSString *)requestURL
                           params:(NSDictionary *)params;

/**
 *  设置UserDefault standardUserDefault
 *
 *  @param dict 要设置的键值对
 */
+ (void)setUserDefault:(NSDictionary *)dict;

/**
 *  重置所指定的key为nil
 *
 *  @param keys 要重置为nil的key数组,key的类型为字符串
 */
+ (void)resetUserDefautsForKeys:(NSArray *)keys;

/**
 *  获取指定key的value
 *
 *  @param key 指定的user default键
 *
 *  @return 键对应的值
 */
+ (id)getUserDefaultByKey:(NSString *)key;

/**
 *  异步信号订阅机制完成GET请求
 *
 *  @param url        请求的url
 *  @param parameters url参数
 *
 *  @return 对应的信号
 */
+ (RACSignal *)GET:(NSString *)url parameters:(NSDictionary *)parameters;

@end