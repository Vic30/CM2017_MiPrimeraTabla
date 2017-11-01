//
//  secondViewViewController.m
//  Mi Primera Tabla
//
//  Created by Vic on 9/27/17.
//  Copyright © 2017 wgdomenzain. All rights reserved.
//

#import "secondViewViewController.h"
@import Firebase;

@interface secondViewViewController ()

@end

@implementation secondViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.data != nil) {
        self.name.text= self.data[@"name"];
        self.age.text= self.data[@"age"];
        self.image.image = self.data[@"image"];
        if (self.data.description != nil) {
            self.textdesc.text = self.data[@"description"];
        }
        // Log event, when a product is bought
        [FIRAnalytics logEventWithName:@"Product_bought"
                            parameters:@{
                                         @"name": self.name.text,
                                         @"price": self.age.text,
                                         }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
