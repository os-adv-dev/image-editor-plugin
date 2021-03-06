//
//  ColorCollectionViewCell.m
//  OSPhotoEditor
//
//  Created by Luis Bouça on 26/02/2021.
//  Copyright © 2021 André Gonçalves. All rights reserved.
//

#import "ColorCollectionViewCell.h"

@implementation ColorCollectionViewCell

- (void)awakeFromNib{
    [super awakeFromNib];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    self.colorView.layer.cornerRadius = self.colorView.frame.size.width/2;
    self.colorView.clipsToBounds = true;
    self.colorView.layer.borderWidth = 1.0;
    self.colorView.layer.borderColor = UIColor.whiteColor.CGColor;
}

- (void)setIsSelected:(BOOL) isSelected{
    if (isSelected) {
        CGAffineTransform previousTransform = self.colorView.transform;
        [UIView animateWithDuration:0.2 animations:^{
            self.colorView.transform = CGAffineTransformScale(self.colorView.transform, 1.3, 1.3);
        }completion:^(BOOL finished) {
            [UIView animateWithDuration:0.2 animations:^{
                self.colorView.transform  = previousTransform;
            }];
        }];
    }
}

@end

