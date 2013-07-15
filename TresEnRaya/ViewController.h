//
//  ViewController.h
//  TresEnRaya
//
//  Created by LLBER on 15/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (nonatomic, strong) UIView * vista;
@property (nonatomic, strong) UITouch * toque;
@property (nonatomic, strong) UIImageView * fondo;

@property int contador;
@property CGPoint posicion;



@property (nonatomic, strong) IBOutlet UIButton * empezar;
@property BOOL limpiar;



-(IBAction)jugar:(id)sender;


@end




















