//
//  HomeScreenViewController.swift
//  TinyHelper
//
//  Created by Nancy Wu on 2021-01-16.
//  Copyright © 2021 Nancy Wu. All rights reserved.
//

import Foundation
import UIKit

class HomeScreenViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        dailyStreakProgressView.transform = dailyStreakProgressView.transform.scaledBy(x: 1, y: 5)
        weeklyGoalProgressView.transform = weeklyGoalProgressView.transform.scaledBy(x: 1, y: 5)
    
        //tabBarController?.selectedIndex = 0
        
        self.tabBarController?.selectedIndex = 0
       
    }
    
    @IBOutlet var homeScreenView: UIView!
    
    @IBOutlet weak var dailyStreakProgressView: UIProgressView!
    
    @IBOutlet weak var weeklyGoalProgressView: UIProgressView!
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
