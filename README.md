# DaySuffix

Figure out the day suffix for a given day in Objective-C/iOS.

## Usage

    #import "DaySuffix.h"
    
    // ...

    // get today's date
    NSDate *date = [NSDate date];
    
    // month name
    NSDateFormatter *format = [[[NSDateFormatter alloc] init] autorelease];
    NSString *month = [[format monthSymbols] objectAtIndex:([dateComponents month] - 1)]
    
    // get the parts of our date so we can get the day number
    NSCalendar *gregorian = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
    NSDateComponents *dateComponents = [gregorian components:(NSDayCalendarUnit) fromDate:sourceDate];
    
    // make our day string
    NSString *day = [NSString stringWithFormat:"On the %d of %@", [DaySuffix suffixForDay:1]];

    // ...

## License

Copyright (c) 2011 Paradigm New Media Group

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.