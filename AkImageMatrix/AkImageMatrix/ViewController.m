//
//  ViewController.m
//  AkImageMatrix
//
//  Created by LEO on 2018/7/23.
//  Copyright © 2018年 Ak. All rights reserved.
//

#import "ViewController.h"

#import "AKImageMatrixView.h"

@interface ViewController ()

/**view*/
@property(nonatomic,strong)AKImageMatrixView * imageMatrixView ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray * arr = @[
                      //小图
                      @"http://wx1.sinaimg.cn/thumbnail/bfc243a3gy1febm7orgqfj20i80ht15x.jpg",
                      @"http://p7.pstatp.com/large/w960/5322000131e01b7a477d",
                      @"http://p7.pstatp.com/large/w960/5321000135125ebb938a",
                      @"http://wx4.sinaimg.cn/mw690/006ZrXHXgy1fsr0qx5cyzg307p06ve81.gif",
                      @"http://wx2.sinaimg.cn/thumbnail/bfc243a3gy1febm7pmnk7j20i70jidwo.jpg",
                      @"http://wx4.sinaimg.cn/mw690/006ZrXHXgy1fsr0qr99d6g305808wu0x.gif",
                      @"http://wx3.sinaimg.cn/mw690/006ZrXHXgy1fsr0qo6f9bg30dw074qv5.gif",
                      @"http://wx4.sinaimg.cn/mw690/006ZrXHXgy1fsr0qmudqwg3096062kjl.gif",
                      @"http://wx1.sinaimg.cn/thumbnail/bfc243a3gy1febm7n9eorj20i60hsann.jpg",
                      @"http://wx3.sinaimg.cn/mw690/006ZrXHXgy1fsr0qy8cp5g306z05mqqo.gif",
                      ];
    
    _imageMatrixView = [[AKImageMatrixView imageMatrixViewEdge:AKEdgeMake(20, 10, 15) imagesName:arr playModel:AKPlayModelSequence]addImageClick:^(NSInteger index) {
        NSLog(@"index: %ld",index);
    }];
    _imageMatrixView.frame = CGRectMake(0, 100, 375, _imageMatrixView.imageMatrixViewHeight);
    [self.view addSubview:_imageMatrixView];
}

- (IBAction)start:(id)sender {
     [_imageMatrixView startAllGifAnimating];
}

- (IBAction)stop:(id)sender {
     [_imageMatrixView stopAllGifAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
