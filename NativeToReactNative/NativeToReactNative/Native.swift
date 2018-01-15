//
//  Native.swift
//  NativeToReactNative
//
//  Created by Pulkit on 1/10/18.
//  Copyright © 2018 Pulkit. All rights reserved.
//

import UIKit
import React

class Native: UIViewController {

    var nativeView: RCTRootView!
    var value = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        
        print(value)
        
        nativeView = RCTRootView(
            bundleURL: URL(string: "http://localhost:8081/index.ios.bundle?platform=ios"),
            moduleName: "NativeApp",
            initialProperties: ["name":value],
            launchOptions: nil)
            self.view.addSubview(nativeView)
    }
    
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
    
            nativeView.frame = self.view.bounds
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


//class AddRatingViewController: UIViewController {
//
//    var mixer: Mixer!
//    var addRatingView: RCTRootView!
//
//    @IBOutlet weak var closeButton: UIButton!
//
//    var currentRating: Int {
//        get {
//            return UserDefaults.standard.integer(forKey: "currentRating-\(mixer.identifier)")
//        }
//        set {
//            UserDefaults.standard.set(newValue, forKey: "currentRating-\(mixer.identifier)")
//        }
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        //    addRatingView = RCTRootView(
//        //        bundleURL: URL(string: "http://localhost:8081/index.ios.bundle?platform=ios"),
//        //        moduleName: "AddRatingApp",
//        //        initialProperties: nil,
//        //        launchOptions: nil)
//
//        addRatingView = MixerReactModule.sharedInstance.viewForModule(
//            "AddRatingApp",
//            initialProperties: ["identifier": mixer.identifier, "currentRating": currentRating])
//        self.view.addSubview(addRatingView)
//
//    }
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//
//        addRatingView.frame = self.view.bounds
//    }
//
//    @IBAction func cancelButtonTapped(_ sender: UIButton) {
//        dismiss(animated: true, completion: nil)
//    }
//
//}

