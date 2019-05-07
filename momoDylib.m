//  momoDylib.m
//  momoDylib
//
//  Created by kwok on 2019/4/27.
//  Copyright (c) 2019 kwok. All rights reserved.
//
#import "momoDylib.h"
#import <CaptainHook/CaptainHook.h>
#import <UIKit/UIKit.h>
#import <Cycript/Cycript.h>
#import <MDCycriptManager.h>
#import <FLEX/FLEXManager.h>
CHDeclareClass(SettingViewController)
CHDeclareClass(InfTb)
CHDeclareClass(UserLevel)
CHOptimizedMethod0(self, long long,InfTb,wordsLimit){
    return 99999;
}
CHOptimizedMethod0(self, long long,InfTb,usableWordLimit){
    return 99999;
}
CHOptimizedMethod1(self, void, UserLevel, setLevel,long long,arg1){
    CHSuper1(UserLevel, setLevel, 999);
}

CHOptimizedMethod0(self, void, SettingViewController, loadTheme){
    UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Tips" message:@"Hook successed! \n By Kwok" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    CHSuper0(SettingViewController, loadTheme);
}
CHConstructor{
    CHLoadLateClass(SettingViewController);
    CHClassHook0(SettingViewController, loadTheme);
    CHLoadLateClass(InfTb);
    CHClassHook0(InfTb,wordsLimit);
    CHClassHook0(InfTb,usableWordLimit);
    CHLoadLateClass(UserLevel);
    CHClassHook1(UserLevel, setLevel);
}
