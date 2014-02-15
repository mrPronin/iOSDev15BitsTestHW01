//
//  RITAppDelegate.m
//  15BitsTestHW01
//
//  Created by Aleksandr Pronin on 15.02.14.
//  Copyright (c) 2014 Aleksandr Pronin. All rights reserved.
//

#import "RITAppDelegate.h"
#import "RITStudent.h"

@implementation RITAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    NSMutableArray* students = [NSMutableArray array];
    
    for (int i = 0; i < 10; i++) {
        RITStudent* student = [[RITStudent alloc] init];
        
        NSInteger categories = 0;
        
        for (int j = 0; j < 25; j++) {
            categories = categories | (arc4random() % 2 << j);
        }
        
        student.sciencesCategories = categories;
        
        [students addObject:student];
        
        NSLog(@"Studen %02d\n%@\n\n", i, student);
    };
    
    return YES;
}

- (NSString*) binaryStringWithInteger:(NSInteger) value {
    NSMutableString*    string = [NSMutableString string];
    while (value) {
        [string insertString:(value & 1) ? @"1" : @"0" atIndex:0];
        //value/=2;
        value = value >> 1;
    }
    return string;
}

/*
 NSLog(@"RITCourseraSCArts: %32@", [self binaryStringWithInteger:RITCourseraSCArts]);
 NSLog(@"RITCourseraSCBiologyAndLifeSciences: %@", [self binaryStringWithInteger:RITCourseraSCBiologyAndLifeSciences]);
 NSLog(@"RITCourseraSCBusinessAndManagement: %@", [self binaryStringWithInteger:RITCourseraSCBusinessAndManagement]);
 NSLog(@"RITCourseraSCChemistry: %@", [self binaryStringWithInteger:RITCourseraSCChemistry]);
 NSLog(@"RITCourseraSCCSArtificialIntelligence: %@", [self binaryStringWithInteger:RITCourseraSCCSArtificialIntelligence]);
 NSLog(@"RITCourseraSCCSSoftwareEngineering: %@", [self binaryStringWithInteger:RITCourseraSCCSSoftwareEngineering]);
 NSLog(@"RITCourseraSCCSSystemsAndSecurity: %@", [self binaryStringWithInteger:RITCourseraSCCSSystemsAndSecurity]);
 NSLog(@"RITCourseraSCCSTheory: %@", [self binaryStringWithInteger:RITCourseraSCCSTheory]);
 NSLog(@"RITCourseraSCEconomicsFinance: %@", [self binaryStringWithInteger:RITCourseraSCEconomicsFinance]);
 NSLog(@"RITCourseraSCEducation: %@", [self binaryStringWithInteger:RITCourseraSCEducation]);
 NSLog(@"RITCourseraSCEnergyEarthSciences: %@", [self binaryStringWithInteger:RITCourseraSCEnergyEarthSciences]);
 NSLog(@"RITCourseraSCEngineering: %@", [self binaryStringWithInteger:RITCourseraSCEngineering]);
 NSLog(@"RITCourseraSCFoodAndNutrition: %@", [self binaryStringWithInteger:RITCourseraSCFoodAndNutrition]);
 NSLog(@"RITCourseraSCHealthSociety: %@", [self binaryStringWithInteger:RITCourseraSCHealthSociety]);
 NSLog(@"RITCourseraSCHuanities: %@", [self binaryStringWithInteger:RITCourseraSCHuanities]);
 NSLog(@"RITCourseraSCInformationTechAndDesign: %@", [self binaryStringWithInteger:RITCourseraSCInformationTechAndDesign]);
 NSLog(@"RITCourseraSCLaw: %@", [self binaryStringWithInteger:RITCourseraSCLaw]);
 NSLog(@"RITCourseraSCMathematics: %@", [self binaryStringWithInteger:RITCourseraSCMathematics]);
 NSLog(@"RITCourseraSCMedicine: %@", [self binaryStringWithInteger:RITCourseraSCMedicine]);
 NSLog(@"RITCourseraSCMusicFilmAndAudio: %@", [self binaryStringWithInteger:RITCourseraSCMusicFilmAndAudio]);
 NSLog(@"RITCourseraSCPhysicalAndEarthSciences: %@", [self binaryStringWithInteger:RITCourseraSCPhysicalAndEarthSciences]);
 NSLog(@"RITCourseraSCPhusics: %@", [self binaryStringWithInteger:RITCourseraSCPhusics]);
 NSLog(@"RITCourseraSCSocialSciences: %@", [self binaryStringWithInteger:RITCourseraSCSocialSciences]);
 NSLog(@"RITCourseraSCStatisticsAndDataAnalysis: %@", [self binaryStringWithInteger:RITCourseraSCStatisticsAndDataAnalysis]);
 NSLog(@"RITCourseraSCTeacherProfessionalDevelopment: %@", [self binaryStringWithInteger:RITCourseraSCTeacherProfessionalDevelopment]);
 
 NSLog(@"%@", [self binaryStringWithInteger:
 RITCourseraSCTeacherProfessionalDevelopment |
 RITCourseraSCChemistry
 ]);
 */

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
