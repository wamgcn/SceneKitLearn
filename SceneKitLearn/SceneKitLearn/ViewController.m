//
//  ViewController.m
//  SceneKitLearn
//
//  Created by new on 2018/11/1.
//  Copyright © 2018年 new. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    SCNView *_scnView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self makeScene];
}

#pragma mark - 初始化Scene
-(void)makeScene {
    _scnView = [[SCNView alloc]initWithFrame:CGRectMake(0, 0, 300, 300)];
    [self.view addSubview:_scnView];
    _scnView.center = self.view.center;
    [_scnView setBackgroundColor:[UIColor whiteColor]];
    //设置场景
    SCNScene *scene = [SCNScene sceneNamed:@"HellowWorld"];
    _scnView.scene = scene;
}


@end
