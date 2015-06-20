//
//  Usuario.m
//  MasterApp
//
//  Created by Alexis Martínez on 17/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import "Usuario.h"

@implementation Usuario

@synthesize nombre=nombreUsuario;

- (NSString*) nombreCompleto{
    NSMutableString * res=[NSMutableString string];
    [res appendString:self.nombre];
    //[res appendString:[self nombre]];
    //[res appendString:nombreUsuario];
    [res appendString:@" "];
    [res appendString:self.apellido];
    return res;
}
@end
