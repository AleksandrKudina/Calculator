//
//  main.m
//  Calculator
//
//  Created by Александр Кудина on 09.08.16.
//  Copyright © 2016 Aleksandr Kudina. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>


float calcFanction(NSString *operator, float operand1, float operand2);

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
     //   while (YES)
       //     {
       
                char str[80];
        
                scanf("%[^\n]s", str);
        
                NSString *tmpStr = [[NSString alloc] initWithBytes:str length: sizeof(str) encoding:NSASCIIStringEncoding];
        
                NSArray *array = [tmpStr componentsSeparatedByString:@" "];
        
                float operand1 = [array[1] floatValue];
                float operand2 = [array[2] floatValue];
        
                NSString *operator = array[0];
                
         //       if ([operator isEqualToString:@"end"])
           //         break;
        
                float rezalt = calcFanction(operator, operand1, operand2);
        
        
                NSLog(@"%f", rezalt);
        //}
    }
  
    return 0;
}

float calcFanction(NSString *operator, float operand1, float operand2)
{
    @try{
            if([operator isEqualToString:@"-"])
                return operand1-operand2;
        
            else if([operator isEqualToString:@"+"])
                return operand1+operand2;
        
            else if([operator isEqualToString:@"*"])
                return operand1*operand2;
        
            else if([operator isEqualToString:@"/"])
                return operand1/operand2;
            
            else if([operator isEqualToString:@"powf"])
                return powf(operand1, operand2);
        
            else if([operator isEqualToString:@"mod"])
                return (int)operand1 % (int)operand2;
        
            else if([operator isEqualToString:@"sqrt"])
                return powf(operand1, 1/operand2);
        
            else if([operator isEqualToString:@"%"])
                return operand1*100/operand2;

        }
    
    @catch(NSException *e)
        {
            NSLog(@"Вы ввели неверные входные данные Ошибка:%@", e);
        }
    
}





