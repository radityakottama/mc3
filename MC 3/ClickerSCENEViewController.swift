//
//  ClickerSCENEViewController.swift
//  MC 3
//
//  Created by Raditya Kottama on 21/08/18.
//  Copyright © 2018 Raditya Kottama. All rights reserved.
//

import UIKit
import AVFoundation

class ClickerSCENEViewController: UIViewController {

    var audioPlayerClicked: AVAudioPlayer!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let urlClicked = Bundle.main.url(forResource: "clickerfix2", withExtension: "wav")
        
        do{
            audioPlayerClicked = try AVAudioPlayer(contentsOf: urlClicked!)
            audioPlayerClicked.prepareToPlay()
        }catch let error as NSError {
            print(error.debugDescription)
        }
        
        
        
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var clickerImage: UIImageView!
    
    @IBOutlet weak var clickerButtonOutlet: UIButton!
    
    
    @IBAction func clickerButtonClicked(_ sender: Any) {
        
        clickerImage.image = #imageLiteral(resourceName: "clicker")
        audioPlayerClicked.play()
        if audioPlayerClicked.isPlaying == true {
            audioPlayerClicked.currentTime = 0
        }

    }
   
    @IBAction func clickerButotn(_ sender: Any) {
        
        clickerImage.image = #imageLiteral(resourceName: "clicker_2")

    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
