//
//  modelView.h
//  proj3-drawing
//
//  Created by James Woyevodsky on 4/13/21.
//  Copyright © 2021 Binghamton University. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface modelView : UIView
@property (nonatomic) float model_x, model_y;
@property (nonatomic) int num_moves;
@end

NS_ASSUME_NONNULL_END
