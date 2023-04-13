//
//  CreateAccountViewController.swift
//  HealthCheckup
//
//  Created by Nyulas Jozsef on 24.03.2023.
//

import UIKit
import Firebase

class CreateAccountViewController: UIViewController
{
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var fullNameTxtField: UITextField!
    
    @IBOutlet weak var emailTxtField: UITextField!
    
    @IBOutlet weak var passwordTxtField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
//    {
//        let destViewCtrl = segue.destination as! ResultsAndInfoViewController
//
//        destViewCtrl.fullName = fullNameTxtField.text!
//    }
    
    
    @IBAction func createAccBtn(_ sender: UIButton)
    {
        guard let email = emailTxtField.text else {return}
        guard let password = passwordTxtField.text else {return}
       
        
        Auth.auth().createUser(withEmail: email, password: password)
        { firebaseResult, error in
            if let e = error
            {
                print("++++++error \(e.localizedDescription)")
                
                self.errorLabel.textColor = UIColor.systemPink
                
                self.errorLabel.text = e.localizedDescription.description
                
            }
            else
            {
                
                // go to homescreen
                UserManager.shared.updateCurrentUser(fullName: self.fullNameTxtField.text ?? "")
                self.performSegue(withIdentifier: "goToMain", sender: self)
                
                
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
    
}
