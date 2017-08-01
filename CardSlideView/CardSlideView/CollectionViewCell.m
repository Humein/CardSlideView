//
//  CollectionViewCell.m
//  CardSlideView
//
//  Created by 鑫鑫 on 2017/5/2.
//  Copyright © 2017年 xinxin. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self InitCell];
    }
    return self;
}

- (void)InitCell {
    
    
    self.layer.cornerRadius = 5.0f;
    CALayer *layer = [self layer];
    layer.borderColor = [[UIColor lightGrayColor] CGColor];
    layer.borderWidth = 1.0f;
    
    self.layer.shadowColor = [UIColor grayColor].CGColor;
    self.layer.shadowOffset = CGSizeMake(0, 0);
    self.layer.shadowOpacity = 0.5;
    self.layer.shadowRadius = 10.0;
    
    self.showImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.bounds.size.width , self.bounds.size.height)];
    self.showImg.backgroundColor = [UIColor redColor];
    [self addSubview:self.showImg];
    
}
@end
