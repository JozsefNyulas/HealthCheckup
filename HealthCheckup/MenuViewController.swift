//
//  MenuViewController.swift
//  HealthCheckup
//
//  Created by Nyulas Jozsef on 27.03.2023.
//

import UIKit

class MenuViewController: UIViewController
{

    @IBOutlet weak var labelGreeting: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        labelGreeting.text = "Welcome \(UserManager.shared.getOnlyUser?.fullName ?? "Stranger") "
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func getResultsClicked(_ sender: Any)
    {
        performSegue(withIdentifier: "goToResultsandInfo", sender: self)
    }
    
    
    func showDetailsViewController(image:UIImage)
    {
        let storyboard = UIStoryboard(name: "Details", bundle: nil)
        
        guard let instantiatedViewController = storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController
        else {return}
        
        instantiatedViewController.updateData(passedImage: image)
        
        present(instantiatedViewController, animated: true)
        
    }
   
    @IBAction func CardioTipsTapped(_ sender: Any)
    {
        showDetailsViewController(image: UIImage(named: "heartTips") ?? UIImage())
    }
    
    
    @IBAction func weightTipsTapped(_ sender: Any)
    {
     
        showDetailsViewController(image: UIImage(named: "weightTips") ?? UIImage())
    }
    
    
    @IBAction func wellBeingTapped(_ sender: Any)
    {
        showDetailsViewController(image: UIImage(named: "wellBeingTips") ?? UIImage())
    }
    
    
    @IBAction func eyeTipsTapped(_ sender: Any)
    {
        showDetailsViewController(image: UIImage(named: "eyeTips") ?? UIImage())
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
