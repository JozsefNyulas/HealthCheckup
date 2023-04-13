//
//  DetailsViewController.swift
//  HealthCheckup
//
//  Created by Nyulas Jozsef on 06.04.2023.
//

import UIKit

class DetailsViewController: UIViewController
{
    @IBOutlet weak var imageToUpdate: UIImageView!
    @IBOutlet weak var labelToUpdate: UILabel!
    

    var changebaleImage: UIImage?
    var changebaleText: String?

    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageToUpdate.image = changebaleImage
       // labelToUpdate.text = changebaleText
    }
    
    func updateData(passedImage: UIImage)
    {
        self.changebaleImage = passedImage
       // self.changebaleText = passedText
    }


}
