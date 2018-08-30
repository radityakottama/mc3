//
//  ViewController.swift
//  MC 3
//
//  Created by Raditya Kottama on 14/08/18.
//  Copyright © 2018 Raditya Kottama. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayerDog: AVAudioPlayer!
    var audioPlayerCat: AVAudioPlayer!
    
    @IBOutlet weak var dogImage: UIImageView!
    @IBOutlet weak var catImage: UIImageView!
    
    
    @IBAction func dogButton(_ sender: Any) {
        
        if(catImage.image == #imageLiteral(resourceName: "cat_2"))
        {
            catImage.image = #imageLiteral(resourceName: "cat")
            catImage.alpha = 0.5
            dogImage.alpha = 1.0
            dogImage.image = #imageLiteral(resourceName: "dog_2")
            audioPlayerDog.play()
        }else
        {
        dogImage.image = #imageLiteral(resourceName: "dog_2")
        audioPlayerDog.play()
        }
    }
    @IBAction func catButton(_ sender: Any) {
        
        if(dogImage.image == #imageLiteral(resourceName: "dog_2"))
        {
            dogImage.image = #imageLiteral(resourceName: "dog")
            dogImage.alpha = 0.5
            catImage.alpha = 1.0
            catImage.image = #imageLiteral(resourceName: "cat_2")
            audioPlayerCat.play()
        }else
        {
        catImage.image = #imageLiteral(resourceName: "cat_2")
        audioPlayerCat.play()
        }
    }
    
    
    @IBAction func startButton(_ sender: Any) {
        
        performSegue(withIdentifier: "toGuide", sender: self)
        
    }
    

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //SUARA ANJING
        let urlDog = Bundle.main.url(forResource: "dogbark", withExtension: "wav")
        dogImage.image = #imageLiteral(resourceName: "dog_2")
        catImage.alpha = 0.5
        do{
            audioPlayerDog = try AVAudioPlayer(contentsOf: urlDog!)
            audioPlayerDog.prepareToPlay()
        }catch let error as NSError {
            print(error.debugDescription)
        }
        
        //SUARA KUCING
        let urlCat = Bundle.main.url(forResource: "catmeow", withExtension: "wav")
        
        do{
            audioPlayerCat = try AVAudioPlayer(contentsOf: urlCat!)
            audioPlayerCat.prepareToPlay()
        }catch let error as NSError {
            print(error.debugDescription)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

