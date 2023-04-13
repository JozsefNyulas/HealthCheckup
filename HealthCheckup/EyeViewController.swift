//
//  EyeViewController.swift
//  HealthCheckup
//
//  Created by Nyulas Jozsef on 26.03.2023.
//

import UIKit

class EyeViewController: UIViewController
{

    @IBOutlet weak var lblEyeCheck: UILabel!
    @IBOutlet weak var btnsStack: UIStackView!
    var eyeTest = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        lblEyeCheck.numberOfLines = 0
        lblEyeCheck.lineBreakMode = .byWordWrapping
        lblEyeCheck.text = "Is the image between 39 and 42 mm? Use a ruler to measure it"
        lblEyeCheck.frame.size.width = 400
        lblEyeCheck.sizeToFit()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        super.viewWillDisappear(animated)
        btnsStack.alpha = 1
        lblEyeCheck.textColor = UIColor.white
        lblEyeCheck.text = "Is the image between 39 and 42 mm? Use a ruler to measure it"
    }
    
    @IBAction func btnClicked(_ sender: UIButton)
    {
        
        if (sender.titleLabel!.text == "Yes")
        {
            UserManager.shared.updateResults(eyeResult: "healthy")
            lblEyeCheck.textColor = UIColor.green
            lblEyeCheck.text = "Eyes are healthy"
            btnsStack.alpha = 0
        }
        else if (sender.titleLabel!.text == "No")
        {
            UserManager.shared.updateResults(eyeResult: "Need further checkup")
            lblEyeCheck.textColor = UIColor.red
            lblEyeCheck.text = "Eyes need further checkup"
            btnsStack.alpha = 0
        }
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
