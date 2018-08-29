//
//  MainMenuViewController.swift
//  Pawpaws Project
//
//  Created by Klaudius Ivan on 20/08/18.
//  Copyright © 2018 Klaudius. All rights reserved.
//

import UIKit

class MainMenuCatTrainingViewController: UIViewController   {
    //MARK: - Outlets2
    @IBOutlet var changePetView: UIView!
    
    @IBOutlet weak var visualEffectView: UIVisualEffectView!
    @IBOutlet weak var obedienceTitleTrain: UILabel!
    @IBOutlet weak var behavioralTitleTrain: UILabel!
    
    @IBOutlet weak var obedienceTrainCollection: UICollectionView!
    @IBOutlet weak var behavioralTrainCollection: UICollectionView!
    
    //MARK: - Variable
    var effect:UIVisualEffect!
    var myIndex = 0
    var obedienceTrain = TrainBank.obedienceCatTrainData()
    var behavioralTrain = TrainBank.behavioralCatTrainData()
    
    var sendTitleTrainBank : String = ""
    let cellScaling: CGFloat = 1.0
    
    
    //MARK: - Function Button
    @IBAction func changePet(_ sender: Any) {
        animateIn()
    }
    
    @IBAction func kucingJenisPeliharaanButton(_ sender: Any) {
        animateOut()
    }
    
    //MARK: - Function all
    func animateOut(){
        UIView.animate(withDuration: 0.3, animations: {
            self.changePetView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            self.changePetView.alpha = 0
            
            self.visualEffectView.isHidden = true
        }) {(success:Bool) in
            self.changePetView.removeFromSuperview()
        }
    }
    func animateIn(){
        self.view.addSubview(changePetView)
        visualEffectView.isHidden = false
        changePetView.center = self.view.center
        
        changePetView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3  )
        changePetView.alpha = 0
        
        UIView.animate(withDuration: 0.4) {
            self.visualEffectView.effect = self.effect
            self.changePetView.alpha = 1
            self.changePetView.transform = CGAffineTransform.identity
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        effect = visualEffectView.effect
        visualEffectView.isHidden = true
        
        obedienceTitleTrain.font = UIFont(name: "KeepCalm-Medium", size: 17)
        behavioralTitleTrain.font = UIFont(name: "KeepCalm-Medium", size: 17)
        UIFont.fontNames(forFamilyName: "KeepCalm-Medium.ttf")
        
//                let layout = obedienceTrainCollection!.collectionViewLayout as!  UICollectionViewFlowLayout
//                obedienceTrainCollection.backgroundColor = UIColor(displayP3Red: 111/255, green: 83/255, blue: 54/255, alpha: 0.0)
//
//                let layout2 = behavioralTrainCollection!.collectionViewLayout as! UICollectionViewFlowLayout
//                behavioralTrainCollection.backgroundColor = UIColor(displayP3Red: 111/255, green: 83/255, blue: 54/255, alpha: 0.0)
        
        obedienceTrainCollection?.dataSource = self
        behavioralTrainCollection?.dataSource = self
        
        obedienceTrainCollection.delegate = self
        behavioralTrainCollection.delegate = self
        
    }
    
}

extension MainMenuCatTrainingViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.obedienceTrainCollection{
            return obedienceTrain.count
        } else{
            return behavioralTrain.count
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = obedienceTrainCollection.dequeueReusableCell(withReuseIdentifier: "ObedienceTrainCell", for: indexPath) as! ObedienceCollectionViewCell
        if collectionView == self.obedienceTrainCollection {
            let cell = obedienceTrainCollection.dequeueReusableCell(withReuseIdentifier: "ObedienceTrainCell", for: indexPath) as! ObedienceCollectionViewCell
            cell.train = obedienceTrain[indexPath.item]
            return cell
        }
        else if collectionView == self.behavioralTrainCollection {
            
            let cell = behavioralTrainCollection.dequeueReusableCell(withReuseIdentifier: "BehavioralTrainCell", for: indexPath) as! BehavioralCollectionViewCell
            cell.train1 = behavioralTrain[indexPath.item]
            return cell
        }
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        
        if collectionView == self.obedienceTrainCollection {
            sendTitleTrainBank = obedienceTrain[indexPath.item].titletrain
            
        }else if collectionView == self.behavioralTrainCollection {
            sendTitleTrainBank = behavioralTrain[indexPath.item].titletrain
        }
        performSegue(withIdentifier: "toTrain", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as? InstructionSCENEViewController
        
        destination?.titleTrain = sendTitleTrainBank
    }
    
}
