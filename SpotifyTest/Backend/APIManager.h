//
//  APIManager.h
//  SpotifyTest
//
//  Created by Natalie Ghidali on 7/16/18.
//  Copyright © 2018 Natalie Ghidali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <SpotifyAuthentication/SpotifyAuthentication.h>
#import <SpotifyAudioPlayback/SpotifyAudioPlayback.h>
#import <SpotifyMetadata/SpotifyMetadata.h>
#import <SafariServices/SafariServices.h>

@interface APIManager : NSObject <UIApplicationDelegate, SPTAudioStreamingDelegate>

@property (nonatomic, strong) SPTAuth *auth;
+ (instancetype) shared;

@end
