//
//  ViewController.m
//  Zundokokiyohsi
//
//  Created by kotaro on 2016/06/18.
//  Copyright © 2016年 kotaro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *zundoko;
@property (weak, nonatomic) IBOutlet UILabel *zundokoResult;
@property (weak, nonatomic) IBOutlet UILabel *zundoko2;
@property (weak, nonatomic) IBOutlet UILabel *zundoko3;
@property (weak, nonatomic) IBOutlet UILabel *zundoko4;
@property (weak, nonatomic) IBOutlet UILabel *zundoko5;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)zundokokiyosi {
    NSString *zun = @"ズン";
    NSString *doko = @"ドコ";
    NSArray<NSString *> *zundoko = @[zun, doko];
    NSArray<NSString *> *expected = @[zun,zun,zun,zun,doko];
    NSArray<NSString *> *list = @[@"", @"", @"", @"", @""];
    
    while (![list isEqualToArray:expected]) {
        NSUInteger val = arc4random_uniform(2);
        NSLog(@"%@", zundoko[val]);
        _zundoko.text = zundoko[val];
        list = @[list[1], list[2], list[3], list[4], zundoko[val]];
        _zundoko.text = list[0];
        _zundoko2.text = list[2];
        _zundoko3.text = list[2];
        _zundoko4.text = list[3];
        _zundoko5.text = list[4];
    }
    _zundokoResult.text = @"キ・ヨ・シ！";
    NSLog(@"キ・ヨ・シ！");
}

- (IBAction)start:(id)sender {
    [self zundokokiyosi];
}

@end
