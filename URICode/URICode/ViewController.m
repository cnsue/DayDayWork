//
//  ViewController.m
//  URICode
//
//  Created by scn孙长宁 on 2017/1/4.
//  Copyright © 2017年 scn. All rights reserved.
//

#import "ViewController.h"
#define IOS_VERSION_10 (NSFoundationVersionNumber >= NSFoundationVersionNumber_iOS_9_x_Max)?YES:NO


//URLFragmentAllowedCharacterSet  "#%<>[\]^`{|}
//URLHostAllowedCharacterSet      "#%/<>?@\^`{|}
//URLPasswordAllowedCharacterSet  "#%/:<>?@[\]^`{|}
//URLPathAllowedCharacterSet      "#%;<>?[\]^`{|}
//URLQueryAllowedCharacterSet     "#%<>[\]^`{|}
//URLUserAllowedCharacterSet      "#%/:<>?@[\]^`

@interface ViewController ()
@property(nonatomic,copy)NSString *urlString;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.urlString = @"eyJvaWQiOjI5MTU5MDI4MDEsImJ1c3R5cGUiOjEwMSwiZnJvbSI6ImZpbGU6Ly8vZGF0YS91c2VyLzAvY3RyaXAuYW5kcm9pZC52aWV3L2FwcF9jdHJpcHdlYmFwcF82MjEuMDAyLy9mbGlnaHRPcmRlckRldGFpbC9yZWJvb2tkZXRhaWwuaHRtbD9zZWc9MCZyYms9MCZzZXE9MCZmcm9tX25hdGl2ZV9wYWdlPTEiLCJzYmFjayI6ImZpbGU6Ly8vZGF0YS91c2VyLzAvY3RyaXAuYW5kcm9pZC52aWV3L2FwcF9jdHJpcHdlYmFwcF82MjEuMDAyLy9mbGlnaHRPcmRlckRldGFpbC9yZWJvb2tkZXRhaWwuaHRtbD9zZWc9MCZyYms9MCZzZXE9MCZmcm9tX25hdGl2ZV9wYWdlPTEmaXNwYXk9MSIsImViYWNrIjoiZmlsZTovLy9kYXRhL3VzZXIvMC9jdHJpcC5hbmRyb2lkLnZpZXcvYXBwX2N0cmlwd2ViYXBwXzYyMS4wMDIvL2ZsaWdodE9yZGVyRGV0YWlsL3JlYm9va2RldGFpbC5odG1sP3NlZz0wJnJiaz0wJnNlcT0wJmZyb21fbmF0aXZlX3BhZ2U9MSIsInJiYWNrIjoiZmlsZTovLy9kYXRhL3VzZXIvMC9jdHJpcC5hbmRyb2lkLnZpZXcvYXBwX2N0cmlwd2ViYXBwXzYyMS4wMDIvL2ZsaWdodE9yZGVyRGV0YWlsL3JlYm9va2RldGFpbC5odG1sP3NlZz0wJnJiaz0wJnNlcT0wJmZyb21fbmF0aXZlX3BhZ2U9MSIsImF1dGgiOiI3MzIxNkVGNUMwMEMyMTkzNkEyRTExRTUyNDRCOUI5M0Q2NDQ5MTA1M0FCMTE0NEM4Nzk4RTBGNjYxNjJFQjFBIiwidGl0bGUiOiLlpKflkIwt5rW35Y+jIiwiY3VycmVuY3kiOiJDTlkiLCJhbW91bnQiOjMwNCwiZXh0bm8iOiJhMWUzZmEwYjhmOTY0MTBkYTFiZTYzZGM1ZDdhMTgyZCIsImlzbG9naW4iOjAsInJlcXVlc3RpZCI6IlJfMGY4MjE2YTMtMGUxNC00MGNjLTgxOGItZGZjYjlmYTQ4NGJlIn0=";
}

-(IBAction)URIDecode
{
    NSString *decodeValue = [self.urlString stringByRemovingPercentEncoding];
    NSLog(@"URIDecode.....................%@",decodeValue);
}

-(IBAction)URIEncode
{
    NSString *encodeValue = [self.urlString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSLog(@"URIEncode.....................%@",encodeValue);
}

-(IBAction)URIComponentDecode
{
    NSString *decodeValue = [self.urlString stringByRemovingPercentEncoding];
    NSLog(@"URIComponentDecode.....................%@",decodeValue);
}

-(IBAction)URIComponentEncode
{
    NSString *encodeValue = [self.urlString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet characterSetWithCharactersInString:@"?!@#$^&%*+,:;='\"`<>()[]{}/\\| "].invertedSet];
    NSLog(@"encodeValue.....................%@",encodeValue);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
