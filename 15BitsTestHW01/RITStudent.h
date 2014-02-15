//
//  RITStudent.h
//  15BitsTestHW01
//
//  Created by Pronin Alexander on 15.02.14.
//  Copyright (c) 2014 Aleksandr Pronin. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 Arts
 Biology & Life Sciences
 Business & Management
 Chemistry
 Computer Science: Artificial Intelligence
 Computer Science: Software Engineering
 Computer Science: Systems & Security
 Computer Science: Theory
 Economics & Finance
 Education
 Energy & Earth Sciences
 Engineering
 Food and Nutrition
 Health & Society
 Humanities
 Information, Tech & Design
 Law
 Mathematics
 Medicine
 Music, Film and Audio
 Physical & Earth Sciences
 Physics
 Social Sciences
 Statistics and Data Analysis
 Teacher Professional Development
 */

// Coursera Sciences Categories (SC)
typedef enum {
    RITCourseraSCArts                               = 1 << 0,
    RITCourseraSCBiologyAndLifeSciences             = 1 << 1,
    RITCourseraSCBusinessAndManagement              = 1 << 2,
    RITCourseraSCChemistry                          = 1 << 3,
    RITCourseraSCCSArtificialIntelligence           = 1 << 4,
    RITCourseraSCCSSoftwareEngineering              = 1 << 5,
    RITCourseraSCCSSystemsAndSecurity               = 1 << 6,
    RITCourseraSCCSTheory                           = 1 << 7,
    RITCourseraSCEconomicsFinance                   = 1 << 8,
    RITCourseraSCEducation                          = 1 << 9,
    RITCourseraSCEnergyEarthSciences                = 1 << 10,
    RITCourseraSCEngineering                        = 1 << 11,
    RITCourseraSCFoodAndNutrition                   = 1 << 12,
    RITCourseraSCHealthSociety                      = 1 << 13,
    RITCourseraSCHuanities                          = 1 << 14,
    RITCourseraSCInformationTechAndDesign           = 1 << 15,
    RITCourseraSCLaw                                = 1 << 16,
    RITCourseraSCMathematics                        = 1 << 17,
    RITCourseraSCMedicine                           = 1 << 18,
    RITCourseraSCMusicFilmAndAudio                  = 1 << 19,
    RITCourseraSCPhysicalAndEarthSciences           = 1 << 20,
    RITCourseraSCPhusics                            = 1 << 21,
    RITCourseraSCSocialSciences                     = 1 << 22,
    RITCourseraSCStatisticsAndDataAnalysis          = 1 << 23,
    RITCourseraSCTeacherProfessionalDevelopment     = 1 << 24
} RITCourseraSciencesCategories;

@interface RITStudent : NSObject

@property (assign, nonatomic) RITCourseraSciencesCategories sciencesCategories;

@end
