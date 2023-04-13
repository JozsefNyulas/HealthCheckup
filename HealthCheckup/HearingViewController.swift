//
//  HearingViewController.swift
//  HealthCheckup
//
//  Created by Nyulas Jozsef on 27.03.2023.
//

import UIKit
import AVFoundation

class HearingViewController: UIViewController
{
    var audioPlayer: AVAudioPlayer?
    

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var btnsStack: UIStackView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
    
        super.viewWillDisappear(animated)
        audioPlayer?.stop()
        btnsStack.alpha = 1
        questionLabel.text = "Did you hear all the instruments?"
        questionLabel.textColor = UIColor.white
    }
    
    func addSoundUrl(resource: String) -> Void
    {
        let url = Bundle.main.url(forResource: resource, withExtension: "mp3")

        guard
            url != nil
        else
        {
            return
        }

        do
        {
        audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch
        {
            print("error for getting sound")
        }
    }
    
    
    @IBAction func guitarTapped(_ sender: Any)
    {
        addSoundUrl(resource: "guitarSound")
    }
    
    @IBAction func drumTapped(_ sender: Any)
    {
        addSoundUrl(resource: "drumsound")
    }
    
    
    @IBAction func violinTapped(_ sender: Any)
    {
        addSoundUrl(resource: "violinSound")
    }
    
    
    @IBAction func saxofoneTapped(_ sender: Any)
    {
        addSoundUrl(resource: "saxofonSound")
    }
    
    
    @IBAction func yesButtonTapped(_ sender: Any)
    {
        print("++++ yes")
        questionLabel.text = "Hearing is healthy"
        questionLabel.textColor = UIColor.green
        btnsStack.alpha = 0
        audioPlayer?.stop()
        UserManager.shared.updateResults(hearingResult: "healthy")
    }
    
    @IBAction func noBtnTapped(_ sender: Any)
    {
        print("++++ no")
        questionLabel.text = "Hearing needs further checkup"
        questionLabel.textColor = UIColor.red
        btnsStack.alpha = 0
        audioPlayer?.stop()
        UserManager.shared.updateResults(hearingResult: "Need further checkup")
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
