//
//  LoginViewController.swift
//  HealthCheckup
//
//  Created by Nyulas Jozsef on 24.03.2023.
//

import UIKit
import Firebase

class LoginViewController: UIViewController
{
    
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginBtnClicked(_ sender: UIButton)
    {
        
        
        guard let email = emailTxtField.text else {return}
        guard let password = passwordTxtField.text else {return}
        
        Auth.auth().signIn(withEmail: email, password: password)
        { firebaseResult, error in
            if let e = error
            {
                print("++++++error \(e.localizedDescription)")
            }
            else
            {
                // go to homescreen
                UserManager.shared.updateCurrentUser(fullName: email)
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

