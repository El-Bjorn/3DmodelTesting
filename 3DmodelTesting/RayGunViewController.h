//
//  WrenchViewController.h
//  3DmodelTesting
//
//  Created by BjornC on 3/7/14.
//  Copyright (c) 2014 BjornC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <NinevehGL/NinevehGL.h>

@interface RayGunViewController : UIViewController <NGLViewDelegate> {
    NGLCamera *_camera;
    NGLMesh *_mesh;
}
@property (strong, nonatomic) IBOutlet NGLView *rayGunView;

@end
