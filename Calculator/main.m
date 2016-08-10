//
//  main.m
//  Calculator
//
//  Created by Александр Кудина on 09.08.16.
//  Copyright © 2016 Aleksandr Kudina. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        char str[80];
        
        scanf("%[^\n]s", str);
        
        NSString *tmpStr = [[NSString alloc] initWithBytes:str length: sizeof(str) encoding:NSASCIIStringEncoding];
        
        NSArray *array = [tmpStr componentsSeparatedByString:@" "];
        
        NSLog(@"%@",array[0]);
        NSLog(@"%@",array[1]);
        NSLog(@"%@",array[2]);
        
        float operand1 = [array[1] floatValue];
        float operand2 = [array[2] floatValue];
        float rezalt;
        
        NSString *operator = array[0];
        
        
        if([operator isEqualToString:@"-"]){
            rezalt = operand1-operand2;
            
        }
        
        else if([operator isEqualToString:@"+"]){
            rezalt = operand1+operand2;
            
        }
        
        else if([operator isEqualToString:@"*"]){
            rezalt = operand1*operand2;
            
        }
        
        else if([operator isEqualToString:@"/"]){
            rezalt = operand1/operand2;
           
        }
        else if([operator isEqualToString:@"powf"]){
            rezalt = powf(operand1, operand2);
          
        }
        
        else if([operator isEqualToString:@"mod"]){
            rezalt = (int)operand1 % (int)operand2;
          
        }
        
        else if([operator isEqualToString:@"sqrt"]){
            rezalt = powf(operand1, 1/operand2);
            
        }
        
        else if([operator isEqualToString:@"%"]){
            rezalt = operand1*100/operand2;
            
        }
        
        NSLog(@"%f", rezalt);
    }
    return 0;
}
