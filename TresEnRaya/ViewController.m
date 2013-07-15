//
//  ViewController.m
//  TresEnRaya
//
//  Created by LLBER on 15/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize contador, limpiar, vista, toque, posicion, fondo, empezar;

- (void)viewDidLoad
{
    [super viewDidLoad];

    contador=1;
    limpiar=NO;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    
    toque = [touches anyObject];
    posicion = [toque locationInView:vista];
    
    if (contador==1) {
        contador=2;

        fondo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"O.png"]];
        fondo.frame = CGRectMake(posicion.x-64, posicion.y-64, 128, 128);
        [vista addSubview:fondo];
    } else {
        contador=1;
        
        fondo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"X.png"]];
        fondo.frame = CGRectMake(posicion.x-64, posicion.y-64, 128, 128);
        [vista addSubview:fondo];
    }
}

-(IBAction)jugar:(id)sender {
    
    if (limpiar==YES) {
        limpiar=NO;
        
        vista = [[UIView alloc] init ];
        [self.view addSubview:vista];
        [empezar setTitle:@"Limpiar" forState:UIControlStateNormal];
    } else {
        limpiar=YES;
        
        [vista removeFromSuperview];
        [empezar setTitle:@"Empezar" forState:UIControlStateNormal];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
