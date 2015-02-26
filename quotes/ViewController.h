//
//  ViewController.h
//  quotes
//
//  Created by Davi Chaves on 2/18/15.
//  Copyright (c) 2015 Davi Chaves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuotesModel.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *Quote;
@property (weak, nonatomic) IBOutlet UILabel *Author;

@end

