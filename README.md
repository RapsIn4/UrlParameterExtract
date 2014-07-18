Objective-C Url Parameter Extraction
===================

Usage:
-------------------
    NSString* url = @"http://example.com?title=hello";
    NSString* extractedTitle = [[ExtractParam alloc] initWithUrl:url withParam:@"title"];
    
Results in *extractedTitle* = hello.
