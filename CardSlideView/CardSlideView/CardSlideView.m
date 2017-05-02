//
//  CardSlideView.m
//  CardSlideView
//
//  Created by 鑫鑫 on 2017/5/2.
//  Copyright © 2017年 xinxin. All rights reserved.
//

#import "CardSlideView.h"
#import "CollectionViewCell.h"
#import "CSFlowLayout.h"
#define SCREENWITH   [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height
@interface CardSlideView()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) NSArray * data;
@property (nonatomic, strong) UICollectionView * collectionView;
@end
@implementation CardSlideView

#pragma mark - setter and getter

- (UICollectionView *)collectionView {
    
    if (!_collectionView) {
        
        CSFlowLayout *layout = [[CSFlowLayout alloc] init];
        [layout setPagingEnabled:YES];
        CGRect frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        _collectionView.backgroundColor = [UIColor whiteColor];
        _collectionView.dataSource = self;
        _collectionView.delegate = self;
        [_collectionView registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@"CollectionViewCell"];
        //        _collectionView.bounces = NO;
        _collectionView.showsHorizontalScrollIndicator = NO;
        
    }
    return _collectionView;
}




- (instancetype)initWithFrame:(CGRect)frame  items:(NSArray<NSArray *> *)items {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        _data = [NSArray arrayWithArray:items];
        self.backgroundColor = [UIColor whiteColor];
        [self addSubviews];
    }
    return self;
}

#pragma mark - add subviews

- (void)addSubviews {
    
    [self addSubview:self.collectionView];
}
#pragma mark - layout subviews

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _collectionView.frame = self.bounds;
    [_collectionView reloadData];
}
#pragma mark -delegate
#pragma mark cell的数量
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    
    return _data.count;
}

#pragma mark cell的视图
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionViewCell" forIndexPath:indexPath];
    
    NSInteger row = indexPath.row;
    cell.showImg.image = [UIImage imageNamed:[_data objectAtIndex:row]];
    
    
    return cell;
}

#pragma mark cell的大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(SCREENWITH - 60, SCREENHEIGHT - 64 - 60 - 60);
}

#pragma mark cell的点击事件
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"点击图片%ld",indexPath.row);
}

@end
