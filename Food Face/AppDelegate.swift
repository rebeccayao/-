//
//  AppDelegate.swift
//  Food Face
//
//  Created by Tiffany Liu on 2/1/20.
//  Copyright © 2020 Tiffany Liu. All rights reserved.
//

import UIKit
import SwiftUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        // Use a UIHostingController as window root view controller.
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UIHostingController(rootView: contentView)
        self.window = window
        window.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }


}


import Foundation

let headers = [
    "x-rapidapi-host": "ivladmin-face-detection.p.rapidapi.com",
    "x-rapidapi-key": "57a4da814bmshf4b0d8452246307p10bdbcjsnc2c87932a535",
    "content-type": "application/x-www-form-urlencoded"
]

let postData = NSMutableData(data: "objecturl=http://er128.eyerecognize.com/img/jfd_group.jpg".data(using: String.Encoding.utf8)!)

let request = NSMutableURLRequest(url: URL(string: "https://ivladmin-face-detection.p.rapidapi.com/faceSearch/detectFaces"),
                                        cachePolicy: .useProtocolCachePolicy,
                                    timeoutInterval: 10.0,
                                    httpMethod: "POST",
                                    allHTTPHeaderFields: headers,
                                    httpBody: postData )

let session = URLSession.shared
let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
    if (error != nil) {
        print(error ?? <#default value#>)
    } else {
        let httpResponse = response as? HTTPURLResponse
        print(httpResponse ?? <#default value#>)
    }
})

//    dataTask.resume()
