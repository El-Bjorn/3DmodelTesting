//
//  BoltViewController.m
//  3DmodelTesting
//
//  Created by BjornC on 3/7/14.
//  Copyright (c) 2014 BjornC. All rights reserved.
//

#import "CubeViewController.h"

@interface CubeViewController ()

@end

@implementation CubeViewController

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
    NGLView *cubeView = [[NGLView alloc] initWithFrame:CGRectMake(40, 40, 240, 280)];
    cubeView.delegate = self;
    [self.view addSubview:cubeView];
    cubeView.contentScaleFactor = [[UIScreen mainScreen] scale];
    NSDictionary *settings = @{ kNGLMeshKeyCentralize: kNGLMeshCentralizeYes,
                                kNGLMeshKeyNormalize: @"0.3" };
    _mesh = [[NGLMesh alloc] initWithFile:@"cube.dae" settings:settings delegate:nil];
    _camera = [[NGLCamera alloc] initWithMeshes:_mesh, nil];
}

-(void) drawView {
    _mesh.rotateY += 0.8;
    _mesh.rotateX += 0.8;
    [_camera drawCamera];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
