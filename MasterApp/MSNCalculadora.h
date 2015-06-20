//
//  MSNCalculadora.h
//  MasterApp
//
//  Created by Alexis Martínez on 19/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSNCalculadora : NSObject

typedef enum{
    SUMAR,
    RESTAR,
    MULTIPLICAR,
    DIVIDIR
}MSNOperation;

@property (readwrite,copy, getter=numero, setter=setNumero:)NSNumber *a;
@property (readwrite,copy, getter=memoria, setter=setMemoria:)NSNumber *m;
@property MSNOperation *op;

- (id)init;
- (id)initWithInitialValue:(NSNumber *) valorInicial;

- (NSNumber *)suma:(NSNumber *)valor;
- (NSNumber *)resta:(NSNumber *)valor;
- (NSNumber *)multiplica:(NSNumber *)valor;
- (NSNumber *)divide:(NSNumber *)valor;
- (void)printFullState;

+ (NSNumber *) suma:(NSNumber *) valor1 valor2:(NSNumber *) valor2;
+ (NSNumber *) resta:(NSNumber *) valor1 valor2:(NSNumber *) valor2;


@end
