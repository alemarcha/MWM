//
//  MSNCalculadora+MSNCalculadoraRaizCuadrada.m
//  MasterApp
//
//  Created by Alexis Martínez on 19/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import "MSNCalculadora+MSNCalculadoraRaizCuadrada.h"
#import "MSNCalculadora.h"

@implementation MSNCalculadora(MSNCalculadoraRaizCuadrada)


- (NSNumber *)raizCuadrada{
    
    if([self memoria]!=nil){
        [self setMemoria:[NSNumber numberWithFloat:sqrt([self.memoria floatValue])]];
    }
    return [self memoria];
}
@end
