//
//  Usuario.h
//  MasterApp
//
//  Created by Alexis Martínez on 17/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Usuario : NSObject

@property (readonly) NSString *idUsuario;
@property NSString *nombre;
@property NSString *apellido;
@property (getter=getEdad, setter=setEdad:) NSNumber *edad;

- (NSString*) nombreCompleto;
- (BOOL) esEdadMayorQue:(NSNumber *) edadComparar;
- (BOOL) esEdadEntre:(NSNumber *) edadInferior edadSuperior:(NSNumber *) edadSuperior;

+(NSString*)getNombreCompleto:(NSString*) nombre apellidos:(NSString*) apellidos;

@end
