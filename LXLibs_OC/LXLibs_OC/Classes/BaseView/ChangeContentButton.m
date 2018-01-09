//
//  ChangeContentButton.m
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/4.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import "ChangeContentButton.h"

@implementation ChangeContentButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageView.contentMode = UIViewContentModeCenter;
        [self setTitleColor:[[UIColor blackColor] colorWithAlphaComponent:0.6] forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    }
    return self;
}

- (void)setHighlighted:(BOOL)highlighted
{
    
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat titleX = 10;
    CGFloat titleY = 0;
    CGFloat titleW = 0;
    CGFloat titleH = contentRect.size.height;
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = [UIFont boldSystemFontOfSize:18];
    titleW = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size.width;
    return CGRectMake(titleX, titleY, titleW, titleH);
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imageW = self.currentImage.size.width;
    CGFloat imageH = contentRect.size.height;
    CGFloat imageX = (self.frame.size.width - CGRectGetMaxX(self.titleLabel.frame)) *0.5 + CGRectGetMaxX(self.titleLabel.frame) - imageW * 0.5;
    CGFloat imageY = 0;
    return CGRectMake(imageX, imageY, imageW, imageH);
}

@end
