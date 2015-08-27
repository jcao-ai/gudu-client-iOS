//
//  CartViewController.m
//  Mega
//
//  Created by Sergey on 1/30/15.
//  Copyright (c) 2015 Sergey. All rights reserved.
//

#import "CartViewController.h"
#import "MegaTheme.h"
#import "CartCell.h"

@interface CartViewController ()

@end

@implementation CartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
    // Do any additional setup after loading the view.
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        self.tabBarItem.title = @"购物车";
        
        self.tabBarItem.image = [[UIImage imageNamed:@"cart_tab"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        self.tabBarItem.selectedImage = [[[UIImage imageNamed:@"cart_tab_select"] imageTintedWithColor:kGreenColor] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       
    }
    
    return self;
}
- (void)initUI{
    
    self.title = @"购物篮";
   
    totalTitle.font =  [UIFont fontWithName:[MegaTheme fontName] size:15];
    
    totalTitle.textColor = [UIColor blackColor];
    
    totalTitle.text = @"TOTAL";
    
    totalLabel.font = [UIFont fontWithName:[MegaTheme fontName] size:15];
    
    totalLabel.textColor = [UIColor blackColor];
    
    totalLabel.text = @"$135";
    
    orderButton.titleLabel.font = [UIFont fontWithName:[MegaTheme fontName] size:18];
    
    [orderButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [orderButton setTitle:@"PLACE ORDER" forState: UIControlStateNormal];
    
    orderButton.backgroundColor = [UIColor colorWithRed:0.14 green:0.71 blue:0.32 alpha:1.0];
    
    orderButton.layer.cornerRadius = 20;
    
    orderButton.layer.borderWidth = 0;
    
    orderButton.clipsToBounds = true;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableViewDataSource

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CartCell* cell = [tableView dequeueReusableCellWithIdentifier:@"CartCell"];
    
    cell.productImageView.image = [UIImage imageNamed:@"product-1"];
    
    cell.titleLabel.text = @"Espirit Shirt (Men)";
    
    cell.detailsLabel.text = @"Size: M, Color: White";
    
    cell.priceLabel.text = @"$45";
    
    cell.quantityTextField.text = @"1";
    
    return cell;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 3;
    
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