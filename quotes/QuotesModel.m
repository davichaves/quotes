//
//  QuotesModel.m
//  quotes
//
//  Created by Davi Chaves on 2/18/15.
//  Copyright (c) 2015 Davi Chaves. All rights reserved.
//

#import "QuotesModel.h"

@implementation QuotesModel {
    NSUInteger current;
}

@synthesize quotes;

- (instancetype)init {
    self = [super init];
    if (self) {
        current = 0;
    }
    return self;
}

- (NSDictionary *) randomQuote {
    return [self quoteAtIndex:rand()];
}

- (NSUInteger) numberOfQuotes {
    return [quotes count];
}

- (NSDictionary *) quoteAtIndex: (NSUInteger) index {
    return [quotes objectAtIndex:index];
}

- (void) removeQuoteAtIndex: (NSUInteger) index {
    [quotes removeObjectAtIndex:index];
}

- (void) insertQuote: (NSString *) quote author: (NSString *) author atIndex: (NSUInteger) index {
    [self insertQuote:[NSDictionary dictionaryWithObject:quote forKey:author] atIndex:index];
}
- (void) insertQuote: (NSDictionary *) quote atIndex: (NSUInteger) index {
    [quotes insertObject:quote atIndex:index];
}
- (NSDictionary *) nextQuote {
    if (current < [self numberOfQuotes]-1) {
        current += 1;
    }
    return [quotes objectAtIndex:current];
}
- (NSDictionary *) prevQuote {
    if (current > 0) {
        current -= 1;
    }
    return [quotes objectAtIndex:current];
}

@end
