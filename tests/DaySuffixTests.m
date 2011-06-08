//
//  DaySuffixTests.m
//
//  Created by Paradigm New Media Group
//
//  Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php
//

#import "DaySuffixTests.h"
#import "DaySuffix.h"

@implementation DaySuffixTests

- (void)testDaySuffix {
    NSString *numbers = @"1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31";
    NSString *answers = @"1st,2nd,3rd,4th,5th,6th,7th,8th,9th,10th,11th,12th,13th,14th,15th,16th,17th,18th,19th,20th,21st,22nd,23rd,24th,25th,26th,27th,28th,29th,30th,31st";
    
    NSArray *tests = [numbers componentsSeparatedByString:@","];
    NSArray *testAnswers = [answers componentsSeparatedByString:@","];
    
    for (int i = 0; i < [tests count]; i++) {
        NSInteger day = [[tests objectAtIndex:i] intValue];
        NSString *dayString = [NSString stringWithFormat:@"%d%@", day, [DaySuffix suffixForDay:day]];
        NSString *answer = [testAnswers objectAtIndex:i];
        STAssertTrue([answer isEqualToString:dayString], [NSString stringWithFormat:@"Fail for %d: %@ != %@", day, dayString, answer]);
    }
}

@end