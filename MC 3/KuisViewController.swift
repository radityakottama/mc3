//
//  KuisViewController.swift
//  MC 3
//
//  Created by Raditya Kottama on 28/08/18.
//  Copyright © 2018 Raditya Kottama. All rights reserved.
//

import UIKit

class KuisViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var penjelasanLabel: UILabel!
    @IBOutlet weak var benarButton: UIButton!
    @IBOutlet weak var salahButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var checkButton: UIImageView!
    @IBOutlet weak var checkImage: UIImageView!
    @IBOutlet weak var infoJawaban: UILabel!
    @IBOutlet weak var blurImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if(titleTrain == "Menggonggong Berlebihan"){
            tempKuis = KuisBank.behavioralTrainData()
        }else if(titleTrain == "Mengunyah"){
            tempKuis = KuisBank.behavioralTrainDataMengunyah()
        }
        else if(titleTrain == "Memberantakan Rumah"){
            tempKuis = KuisBank.behavioralTrainDataBerantakan()
        }
        
        questionLabel.text = tempKuis[penampung][0]
        nextButton.isHidden = true
        checkImage.isHidden = true
        penjelasanLabel.isHidden = true
        infoJawaban.isHidden = true
        blurImage.isHidden = true
        
        print(titleTrain)
        
        
    }

    var titleTrain : String = ""
    var penampung: Int = 0
    var tempKuis : [[String]] = []

//    var behavioralTrainKuis = KuisBank.behavioralTrainData()
    
    
    @IBAction func benarButton(_ sender: Any) {
        checkImage.isHidden = false
        penjelasanLabel.isHidden = false
        infoJawaban.isHidden = false
        blurImage.isHidden = false
        if(tempKuis[penampung][2] == "benar"){
            penjelasanLabel.text = tempKuis[penampung][1]
            checkImage.image = #imageLiteral(resourceName: "check")
            infoJawaban.text = "Jawaban anda benar!"
        nextButton.isHidden = false
        questionLabel.isHidden = true
        benarButton.isHidden = true
        salahButton.isHidden = true
        }else if(tempKuis[penampung][2] == "salah"){
            penjelasanLabel.text = tempKuis[penampung][1]
            checkImage.image = #imageLiteral(resourceName: "wrong")
            infoJawaban.text = "Jawaban anda kurang tepat!"
        nextButton.isHidden = false
        questionLabel.isHidden = true
        benarButton.isHidden = true
        salahButton.isHidden = true
        }
        
    }
    
    @IBAction func salahButton(_ sender: Any) {
        checkImage.isHidden = false
        penjelasanLabel.isHidden = false
        infoJawaban.isHidden = false
        blurImage.isHidden = false
        if(tempKuis[penampung][2] == "benar"){
            penjelasanLabel.text = tempKuis[penampung][1]
            checkImage.image = #imageLiteral(resourceName: "wrong")
            infoJawaban.text = "Jawaban anda kurang tepat!"
            nextButton.isHidden = false
            questionLabel.isHidden = true
            benarButton.isHidden = true
            salahButton.isHidden = true
        }else if(tempKuis[penampung][2] == "salah"){
            penjelasanLabel.text = tempKuis[penampung][1]
            checkImage.image = #imageLiteral(resourceName: "check")
            infoJawaban.text = "Jawaban anda benar!"
            nextButton.isHidden = false
            questionLabel.isHidden = true
            benarButton.isHidden = true
            salahButton.isHidden = true
        }
    }
    @IBAction func nextButtonAction(_ sender: Any) {
        penampung += 1
        checkImage.isHidden = true
        blurImage.isHidden = true
        infoJawaban.isHidden = true
        questionLabel.isHidden = false
        if(penampung == tempKuis.endIndex)
        {
            performSegue(withIdentifier: "toTrain", sender: self)
        
        }else{
            questionLabel.text = tempKuis[penampung][0]
            penjelasanLabel.isHidden = true
            nextButton.isHidden = true
            benarButton.isHidden = false
            salahButton.isHidden = false
        }
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
