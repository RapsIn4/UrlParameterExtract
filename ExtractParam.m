//
//  ExtractParam.m
//
//  Created by Michael Ye on 2014-07-11.
//

#import "ExtractParam.h"

@implementation ExtractParam
- (id)initWithUrl :(NSString *)url withParam:(NSString *)param
{
    self = [super init];
    if (self)
    {
        NSRange pos = [url rangeOfString:param];
        
        if (pos.location == NSNotFound) {
            return @"";
        }
        
        NSString *query = [url substringFromIndex:pos.location+[param length]+1];
        
        
        pos = [query rangeOfString:param];
        
        NSUInteger end = [query rangeOfString:@"&"].location;
        
        if (end == NSNotFound) {
            return query;
        } else {
            return [query substringWithRange:NSMakeRange(0,end)];
        }
        
    }
    return self;
}
@end
