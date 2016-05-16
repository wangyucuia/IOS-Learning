//
//  AppDelegate.swift
//  ElectricStationBoard
//
//  Created by Galaxy on 16/5/13.
//  Copyright © 2016年 Iris. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    var vc1 = ViewController();
    var vc2 = ChargingViewController();
    var vc3 = MeViewController();
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        //self.setTabBarItem1();
        
    

        
        return true
    }
    func setTabBarItem1() ->Void {
        
        let mainSB = UIStoryboard(name: "Main", bundle: nil);
        self.vc1 = mainSB.instantiateViewControllerWithIdentifier("holdon") as! ViewController;
        vc1.setTabBarItem();
        self.vc2 = mainSB.instantiateViewControllerWithIdentifier("charging") as! ChargingViewController;
        vc2.setTabBarItem();
        self.vc3 = mainSB.instantiateViewControllerWithIdentifier("me") as! MeViewController;
        vc3.setTabBarItem();
        
        
//        let mainStory = UIStoryboard(name:)
//        let vc1 = UIStoryboard.chi        //instantiateViewControllerWithIdentifier();
//        let vc2 = ChargingViewController();
//        let vc3 = MeViewController();
//        
//        vc1.setTabBarItem();
//        vc2.setTabBarItem();
//        vc3.setTabBarItem();
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

