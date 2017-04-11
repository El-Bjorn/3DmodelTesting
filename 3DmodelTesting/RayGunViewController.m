//
//  WrenchViewController.m
//  3DmodelTesting
//
//  Created by BjornC on 3/7/14.
//  Copyright (c) 2014 BjornC. All rights reserved.
//

#import "RayGunViewController.h"

@interface RayGunViewController ()

@end

@implementation RayGunViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //NGLView *theView = [[NGLView alloc] initWithFrame:CGRectMake(40, 40, 240, 360)];
    //NGLView *rayGunView = self.rayGunView;
    self.rayGunView.backgroundColor = [UIColor blackColor];
    self.rayGunView.delegate = self;
    [self.view addSubview:self.rayGunView];
    self.rayGunView.contentScaleFactor = [[UIScreen mainScreen] scale];
    NSDictionary *settings = @{ kNGLMeshKeyCentralize: kNGLMeshCentralizeYes,
                                kNGLMeshKeyNormalize: @"0.3" };
    _mesh = [[NGLMesh alloc] initWithFile:@"Alien_Gun.dae" settings:settings delegate:nil];
    _camera = [[NGLCamera alloc] initWithMeshes:_mesh, nil];
    [self.view sendSubviewToBack:self.rayGunView];
    //[[NGLDebug debugMonitor] startWithView:(NGLView*)self.view];
}

-(void) drawView {
    _mesh.rotateY += 0.5;
    //_mesh.rotateX += 0.2;
    //_mesh.rotateZ += 0.1;
    [_camera drawCamera];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
