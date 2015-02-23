//
//  QuotesModel.m
//  quotes
//
//  Created by Davi Chaves on 2/18/15.
//  Copyright (c) 2015 Davi Chaves. All rights reserved.
//

#import "QuotesModel.h"

@implementation QuotesModel

@synthesize quotes;

- (instancetype)init {
    self = [super init];
    if (self) {
        NSDictionary *myDict = [[NSDictionary alloc] init];
        NSObject *quote = [NSString stringWithFormat:@"%@", @"test"];
        [myDict addObserver:quote forKeyPath:@"bill" options:nil context:nil];
        [quotes addObject:quote];
    }
    return self;
}

@end
