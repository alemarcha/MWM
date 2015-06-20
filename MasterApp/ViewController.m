//
//  ViewController.m
//  MasterApp
//
//  Created by Alexis Martínez on 16/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import "ViewController.h"
#import "Usuario.h"

@interface ViewController ()

@end

@implementation ViewController

typedef unsigned int MiEnteroInstancia;
typedef struct{
    unsigned char red;
    unsigned char blue;
    unsigned char green;
}Colores;
typedef enum{
    PORCHE,
    NISSAN,
    FORD,
    FIAT
}carsModel;
int years[]={1991,102,112};
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int a=3;
    MiEnteroInstancia miEntero=138;
    
    Colores colores={10,10,11};
    for (int i=0; i<3; i++) {
        NSLog(@"El valor del valor actual del array %i es igual a: %i",i,years[i]);
    }
    
    //NSString *nombreCompleto=[Usuario getNombreCompleto:@"Luis" apellidos:@"García"];
    
    
    NSLog(@"Valor de a:%d",a);
    NSLog(@"Valor de miEntero:%u",miEntero);
    NSLog(@"Valor de Colores: {R:%hhu, G:%hhu, B:%hhu}",colores.red,colores.green,colores.blue);
//    NSLog(@"Valor de nombreCompleto:%@",nombreCompleto);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
