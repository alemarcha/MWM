//
//  MSNCalculadora.m
//  MasterApp
//
//  Created by Alexis Martínez on 19/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import "MSNCalculadora.h"

@implementation MSNCalculadora

@synthesize m=_memoria;

- (id)init{
    return [self initWithInitialValue:nil];
}

- (id)initWithInitialValue:(NSNumber *)valorInicial{
    self=[super init];
    if(self){
        if(valorInicial!=nil){
            _memoria=valorInicial;
            _a=valorInicial;

        }else{
            _memoria=nil;
            _a=nil;
        }
    }
    return self;
}

- (NSNumber *)suma:(NSNumber *)valor{
    _a=valor;
    if(self.memoria!=nil){
        _memoria=[NSNumber numberWithFloat:[self.memoria floatValue] + [valor floatValue]];
        _a=valor;
    }else{
        _memoria=valor;
    }
    
    return _memoria;

}

- (NSNumber *) resta:(NSNumber *)valor{
    self.a=valor;
    
    if([self memoria]!=nil){
        _memoria=[NSNumber numberWithFloat:[self.memoria floatValue] - [valor floatValue]];
    }else{
        [self setMemoria:nil];
    }
    
    return self.memoria;
}

- (NSNumber *) multiplica:(NSNumber *)valor{
    [self setNumero:valor];
    
    if(_memoria!=nil){
        _memoria=[NSNumber numberWithFloat:[_memoria floatValue] * [valor floatValue]];
    }else{
        [self setMemoria:valor];
    }
    
    return self.memoria;
}

- (NSNumber *) divide:(NSNumber *)valor{
    self.a=valor;
    
    if([self memoria]!=nil){
        _memoria=[NSNumber numberWithFloat:[_memoria floatValue] / [valor floatValue]];
    }else{
        [self setMemoria:valor];
    }
    
    return [self memoria];
}

- (void)printFullState{
    NSLog(@"El valor de a es : %f y el de memoria es %@",self.a.floatValue,_memoria);
}

+ (NSNumber *)suma:(NSNumber *)valor1 valor2:(NSNumber *)valor2{
    return[NSNumber numberWithFloat:[valor2 floatValue] + [valor1 floatValue]];
}

+ (NSNumber *) resta:(NSNumber *)valor1 valor2:(NSNumber *)valor2{
    return [NSNumber numberWithFloat:valor1.floatValue - valor2.floatValue];
}

@end
