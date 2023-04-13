//
//  ViewController.swift
//  HealthCheckup
//
//  Created by Nyulas Jozsef on 24.03.2023.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    

            let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
            backgroundImage.image = UIImage(named: "background")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFit
            self.view.insertSubview(backgroundImage, at: 0)

        
       // self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png") ?? "")
    }


}

