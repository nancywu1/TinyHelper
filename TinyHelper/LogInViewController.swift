//
//  LogInViewController.swift
//  TinyHelper
//
//  Created by Nancy Wu on 2021-01-16.
//  Copyright © 2021 Nancy Wu. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }

    @IBOutlet weak var signInButton: UIButton!
    
    @IBAction func signInButtonPressed(_ sender: Any) {
        /*let storyBoard : UIStoryboard = UIStoryboard(name: "TinyHelperStoryboard", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "HomeScreen") as! HomeScreenViewController
        self.present(nextViewController, animated:true, completion:nil)*/
        
        let storyboard : UIStoryboard = UIStoryboard(name: "TinyHelper", bundle:nil)
        let mainTabBarController = storyboard.instantiateViewController(withIdentifier: "MainTabBar") as! MainTabBarController
        //guard segue.destination is HomeScreenViewController else { return }
        //self.navigationController?.pushViewController((mainTabBarController.viewControllers?[TabType.HomeScreenViewController.rawValue] as? HomeScreenViewController)!, animated: true)
        //nextViewController.tabBarController?.selectedIndex = 0
        
         performSegue(withIdentifier: "goToTinyHelperStoryBoard", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToTinyHelperStoryBoard" {
            self.tabBarController?.selectedIndex = 2
          //  vc.segueText = segueTextField.textnex
        }
    }
}

