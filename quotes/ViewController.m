//
//  ViewController.m
//  quotes
//
//  Created by Davi Chaves on 2/18/15.
//  Copyright (c) 2015 Davi Chaves. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    QuotesModel *model;
    NSUInteger size;
}

@synthesize Quote;
@synthesize Author;

- (void)viewDidLoad {
    size = 1;
    model = [[QuotesModel alloc] init];
    [model insertQuote:@"hello world" author:@"bill" atIndex:0];
    NSDictionary *myDict = [[NSDictionary alloc] init];
    myDict = [model randomQuote];
    NSString *quote = [myDict objectForKey:[myDict.allKeys objectAtIndex:0]];
    Quote.text = quote;
    Author.text = [myDict.allKeys objectAtIndex:0];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) setRandomQuote {
    NSDictionary *myDict = [[NSDictionary alloc] init];
    myDict = [model randomQuote];
    NSString *quote = [myDict objectForKey:[myDict.allKeys objectAtIndex:0]];
    Quote.text = quote;
    Author.text = [myDict.allKeys objectAtIndex:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if(event.type == UIEventSubtypeMotionShake) {
        NSLog(@"called");
        [self setRandomQuote];
    }
}

@end
