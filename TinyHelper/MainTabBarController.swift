//
//  MainTabBarController.swift
//  TinyHelper
//
//  Created by Nancy Wu on 2021-01-17.
//  Copyright © 2021 Nancy Wu. All rights reserved.
//

import UIKit

enum TabType:Int {
    case HomeScreenViewController
    case TaskScreenViewController
    case RewardScreenViewController
}

class MainTabBarController: UITabBarController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //self.selectedViewController = viewControllers?[TabType.HomeScreenViewController.rawValue] as! HomeScreenViewController
    
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        // bring user to Home tab
        self.selectedIndex = 2
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
