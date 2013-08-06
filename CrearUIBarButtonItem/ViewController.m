//
//  ViewController.m
//  CrearUIBarButtonItem
//
//  Created by LLBER on 06/08/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

    // Seleccionamos nuestra vista del storyboard y desde Menu/Editor/Embed it...
    // Creamos NavigationController y lo ponemos en color negro

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Creamos la imagen
    UIImage * new = [UIImage imageNamed:@"new.png"];
    CGRect imagen = CGRectMake(0, 0, 120, 80);// Si tuviésemos la imagen editada en tamaño: (0, 0, image3.size.width, image3.size.height);
    
    // Creamos el botón
    UIButton * boton = [[UIButton alloc] initWithFrame:imagen];
    [boton setBackgroundImage:new
                     forState:UIControlStateNormal];
    
    // Creamos el @selector
    [boton addTarget:self
              action:@selector(nombreSelector)
    forControlEvents:UIControlEventTouchUpInside];
    
    // Añadimos el efecto HighLight cuando pulsemos el botón
    [boton setShowsTouchWhenHighlighted:YES];
    
    // Mostramos el botón en el NavigationController y lo colocamos a la derecha
    UIBarButtonItem * nombreDelBoton = [[UIBarButtonItem alloc] initWithCustomView:boton];
    self.navigationItem.rightBarButtonItem = nombreDelBoton;
}

    // Descripción del selector
-(void)nombreSelector:(id)sender {
    
    // Hacer algo en código...
    
    // Uso habitual: puede ser con un código concreto aquí mismo o crear una nueva clase para controlar lo que queremos hacer si es más complicado y llamarla desde aquí
    
}







- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
