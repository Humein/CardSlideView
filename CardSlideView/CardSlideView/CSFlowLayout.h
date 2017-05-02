//
//  CSFlowLayout.h
//  CardSlideView
//
//  Created by 鑫鑫 on 2017/5/2.
//  Copyright © 2017年 xinxin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSFlowLayout : UICollectionViewFlowLayout

@property CGFloat move_x;
@property BOOL isPagingEnabled;
-(void)setPagingEnabled:(BOOL)isPagingEnabled;

@end
