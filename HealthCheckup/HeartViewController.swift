//
//  HeartViewController.swift
//  HealthCheckup
//
//  Created by Nyulas Jozsef on 26.03.2023.
//

import UIKit

class HeartViewController: UIViewController
{
    var userHeartResult: String = "value is out of bounds"
    var textForLabel: String = ""

    @IBOutlet weak var labelHeart: UILabel!
    
    @IBOutlet weak var txtFieldSystolic: UITextField!
    
    
    @IBOutlet weak var txtFieldDiastolic: UITextField!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // normal blood pressure between 90/60 and 120/80
    func bloodPressTest(sys: Int, dias: Int) -> String
    {
        var heartResult: String = ""
        
        if (sys < 90 || dias < 60)
        {
            heartResult = "Low"
            labelHeart.textColor = UIColor.systemPink
            
        }
        else if(sys > 120 || dias > 80)
        {
            heartResult = "High"
            labelHeart.textColor = UIColor.systemPink
            
        }
        else
        {
            heartResult = "Normal"
            labelHeart.textColor = UIColor.systemMint
            
        }
        
        return heartResult
    
        
    }
    
    
    @IBAction func btnConfirmHeart(_ sender: Any)
    {
        let systolicString = txtFieldSystolic.text!
        let systolicInt = Int(systolicString) ?? 0
        
        let diastolicString = txtFieldSystolic.text!
        let diastolicInt = Int(diastolicString) ?? 0
        
        userHeartResult = bloodPressTest(sys: systolicInt, dias: diastolicInt)
        labelHeart.text = "Your blood pressure is in the " + userHeartResult + " range"
        
        UserManager.shared.updateResults(heartResult: userHeartResult)
        
        txtFieldSystolic.text?.removeAll()
        txtFieldDiastolic.text?.removeAll()
        
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
