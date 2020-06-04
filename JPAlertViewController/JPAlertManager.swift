//
//  JPAlertManager.swift
//  AlertViewContoller
//
//  Created by CompIndia on 17/05/16.
//  Copyright © 2016 CompIndia. All rights reserved.
//

import Foundation
import UIKit

class JPAlertManager: NSObject {
    var commonAlertController : UIAlertController!
    
    class var sharedInstance: JPAlertManager {
        struct Static {
            static let instance: JPAlertManager = JPAlertManager()
        }
        return Static.instance
    }
    
    func alertViewController(title: String, message: String) {
        commonAlertController = UIAlertController(title:title , message: message, preferredStyle: .alert)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
            print("you have pressed OK button");
        }
        commonAlertController.addAction(OKAction)
    }

    func showWindowAlertWithTitle(title: String, message: String, onView:UIWindow) {
        self.alertViewController(title: title, message: message)
        let alertWindow: UIWindow? = UIWindow(frame: UIScreen.main.bounds)
        alertWindow!.rootViewController = UIViewController.init()
        alertWindow!.windowLevel = UIWindow.Level.alert + 1
        alertWindow!.makeKeyAndVisible()
        alertWindow!.rootViewController!.present(commonAlertController, animated: true, completion: nil)
    }
    
    func showVCAlertWithTitle(title: String, message: String, onView:UIViewController) {
        self.alertViewController(title: title, message: message)
        UIApplication.shared.keyWindow?.rootViewController?.present(commonAlertController, animated: true, completion: nil)
    }
    
}

