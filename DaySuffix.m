//
//  DaySuffix.m
//
//  Created by Paradigm New Media Group
//
//  Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php
// 
#import "DaySuffix.h"

@implementation DaySuffix

/*
    Find the suffix for a given day ("st", "th", etc.)
    
    Based on: http://stackoverflow.com/questions/739241/python-date-ordinal-output/739266#739266
*/
+ (NSString *)suffixForDay:(NSInteger) day {
    NSString *s = [[NSString stringWithString:@"st,nd,rd"] autorelease];
    if((day >= 4 && day <= 20) || (day >= 24 && day <= 30)){
        return [NSString stringWithFormat:@"th"];
    }
    
    NSArray *suffixes = [s componentsSeparatedByString:@","];
    NSInteger index = (day % 10) - 1;
    return [NSString stringWithFormat:@"%@", [suffixes objectAtIndex:index]];
}

@end