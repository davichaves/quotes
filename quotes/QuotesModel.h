//
//  QuotesModel.h
//  quotes
//
//  Created by Davi Chaves on 2/18/15.
//  Copyright (c) 2015 Davi Chaves. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuotesModel : NSObject

@property NSMutableArray *quotes;

- (NSDictionary *) randomQuote;
- (NSUInteger) numberOfQuotes;
- (NSDictionary *) quoteAtIndex: (NSUInteger) index;
- (void) removeQuoteAtIndex: (NSUInteger) index;
- (void) insertQuote: (NSString *) quote author: (NSString *) author atIndex: (NSUInteger) index;
- (void) insertQuote: (NSDictionary *) quote atIndex: (NSUInteger) index;
- (NSDictionary *) nextQuote;
- (NSDictionary *) prevQuote;

@end
