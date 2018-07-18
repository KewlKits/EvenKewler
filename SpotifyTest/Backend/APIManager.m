//
//  APIManager.m
//  SpotifyTest
//
//  Created by Natalie Ghidali on 7/16/18.
//  Copyright © 2018 Natalie Ghidali. All rights reserved.
//

#import "APIManager.h"
#import "AppDelegate.h"
#import <AFNetworking/AFNetworking.h>
#import <UNIRest/UNIRest.h>

@implementation APIManager

+ (instancetype)shared {
    static APIManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[self alloc] init];
    });
    return sharedManager;
}

-(void) test{
    NSDictionary* headers = @{@"accept": @"application/json"};
    NSDictionary* parameters = @{@"parameter": @"value", @"foo": @"bar"};
    
    UNIHTTPJsonResponse *response = [[UNIRest post:^(UNISimpleRequest *request) {
        [request setUrl:@"https://kk-backend.heroku.com"];
        [request setHeaders:headers];
        [request setParameters:parameters];
    }] asJson];
    NSLog(@"%@", response);
}

/*-(void)searchSpotify:(NSArray *) music error: (NSError *) error {
    NSURL *targetUrl = [NSURL URLWithString:@"https://api.spotify.com/v1/search"];
    NSDictionary *parameters = @{@"q":@"abba",@"type":@"artist"};
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setHTTPMethod:@"GET"];
    [request setURL:targetUrl];
    [self GET:@"https://api.spotify.com/v1/search"
    parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSArray *  _Nullable songDictionaries) {
        
    }
    
    //NSURLRequest *request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:10.0];
    
    NSError * __autoreleasing * requestFailed;
    NSURLRequest: * request = [SPTSearch createRequestForSearchWithQuery:@"Abba" queryType:@"artist" accessToken:self.auth.session.accessToken error:requestFailed];
}*/
@end
