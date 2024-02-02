//
//  UIImage+Svga.m
//  SVGAPlayer-iOS
//
//  Created by SuperC on 2024/2/2.
//

#import "UIImage+Svga.h"

@implementation UIImage (Svga)

-(UIImage *)imageByResizeToSize:(CGSize)size {
    if (size.width <= 0 || size.height <= 0) return nil;
    UIGraphicsBeginImageContextWithOptions(size, NO, self.scale);
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
