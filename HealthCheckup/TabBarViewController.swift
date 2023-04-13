//
//  TabBarViewController.swift
//  HealthCheckup
//
//  Created by Nyulas Jozsef on 07.04.2023.
//

import UIKit

class TabBarViewController: UITabBarController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .black
        let selectedColor = UIColor.white
    
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
        
        //to change text color when item is selected
        
            //UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        

        // Do any additional setup after loading the view.
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
