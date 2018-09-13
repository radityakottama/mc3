 //
//  ClickerSCENEViewController.swift
//  MC 3
//
//  Created by Raditya Kottama on 21/08/18.
//  Copyright © 2018 Raditya Kottama. All rights reserved.
//

import UIKit
import AVFoundation

class ClickerSCENEViewController: UIViewController, UIViewControllerTransitioningDelegate {

    var audioPlayerClicked: AVAudioPlayer!
    var chosenAnimal:String = ""
    let transition = CircularTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chosenAnimal = UserDefaults.standard.value(forKey: "chosenAnimal") as! String
        infoButton.layer.cornerRadius = infoButton.frame.width / 2
        print(chosenAnimal)
        let urlClicked = Bundle.main.url(forResource: "clickerfix2", withExtension: "wav")
        
        do{
            audioPlayerClicked = try AVAudioPlayer(contentsOf: urlClicked!)
            audioPlayerClicked.prepareToPlay()
        }catch let error as NSError {
            print(error.debugDescription)
        }
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var infoButton: UIButton!
    
    @IBOutlet weak var clickerImage: UIImageView!
    
    @IBOutlet weak var clickerButtonOutlet: UIButton!
    
    
    @IBAction func clickerButtonClicked(_ sender: Any) {
        
        clickerImage.image = #imageLiteral(resourceName: "clicker_guguk_clicked") //clicked
        audioPlayerClicked.play()
        if audioPlayerClicked.isPlaying == true {
            audioPlayerClicked.currentTime = 0
        }

    }
   
    @IBAction func clickerButotn(_ sender: Any) {
        
        clickerImage.image = #imageLiteral(resourceName: "clicker_guguk")

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondVC = segue.destination as? ClickerInfoSCENEViewController{
            secondVC.transitioningDelegate = self
            secondVC.modalPresentationStyle = .custom
        }
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = infoButton.center
        transition.circleColor = infoButton.backgroundColor!
        
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dismiss
        transition.startingPoint = infoButton.center
        transition.circleColor = infoButton.backgroundColor!
        
        return transition
    }
    
    @IBAction func MainMenuButton(_ sender: Any) {
        if chosenAnimal == "Dog"{
        performSegue(withIdentifier: "toMainMenu", sender: self)
        }else if chosenAnimal == "Cat"{
            performSegue(withIdentifier: "cat", sender: self)
        }
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
