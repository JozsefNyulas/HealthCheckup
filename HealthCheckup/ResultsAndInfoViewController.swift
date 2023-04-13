//
//  ResultsAndInfoViewController.swift
//  HealthCheckup
//
//  Created by Nyulas Jozsef on 26.03.2023.
//

import UIKit

class ResultsAndInfoViewController: UIViewController
{
    
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        guard let userToPrint = UserManager.shared.getOnlyUser else
        { return}
        
        // Do any additional setup after loading the view.
        infoLabel.text = "Results for " + userToPrint.fullName + " are: " +
        "\n Blood pressure: " + userToPrint.heartResult +
        "\n Hearing: " + userToPrint.hearingResult +
        "\n Eyesight: " + userToPrint.hearingResult +
        "\n Bmi index: " + userToPrint.bmiResult
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
