//
//  BmiViewController.swift
//  HealthCheckup
//
//  Created by Nyulas Jozsef on 27.03.2023.
//

import UIKit

class BmiViewController: UIViewController
{
    @IBOutlet weak var labelBmi: UILabel!
    
    @IBOutlet weak var weightTxt: UITextField!
    
    @IBOutlet weak var heightTxt: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        labelBmi.textColor = UIColor.white
        labelBmi.text = "Enter your weight in kg and height in cm:"
    }
    
    
    @IBAction func confirmBmi(_ sender: Any)
    {
        var bmiResult = ""
        
        let weightString = weightTxt.text!
        let weightDouble = Double(weightString) ?? 0
        
        
        let heightString = heightTxt.text!
        var heightDouble = Double(heightString) ?? 0
        heightDouble = heightDouble/100
        
        let bmi = (weightDouble / (heightDouble * heightDouble))
        
        
        
        if(bmi < 18.5)
        {
            bmiResult = "underweight"
            labelBmi.textColor = UIColor.systemPink
        }
        else if(bmi > 18.5 && bmi < 24.9)
        {
            bmiResult = "normal weight"
            labelBmi.textColor = UIColor.systemMint
        }
        else if(bmi > 25 && bmi < 29.9)
        {
            bmiResult = "overweight"
            labelBmi.textColor = UIColor.systemPink
        }
        else
        {
            bmiResult = "obesity"
            labelBmi.textColor = UIColor.systemPink
        }
        
        labelBmi.text = "Your bmi index is in the " + bmiResult + " range"
        
        UserManager.shared.updateResults(bmiResult: bmiResult)
        
        weightTxt.text?.removeAll()
        heightTxt.text?.removeAll()
        
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
