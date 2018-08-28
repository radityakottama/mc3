//
//  MainMenuViewController.swift
//  Pawpaws Project
//
//  Created by Klaudius Ivan on 20/08/18.
//  Copyright © 2018 Klaudius. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController   {

    
    @IBOutlet weak var obedienceTitleTrain: UILabel!
    @IBOutlet weak var behavioralTitleTrain: UILabel!
    
    @IBOutlet weak var obedienceTrainCollection: UICollectionView!
    @IBOutlet weak var behavioralTrainCollection: UICollectionView!
    
    var myIndex = 0
    var obedienceTrain = TrainBank.obedienceTrainData()
    var behavioralTrain = TrainBank.behavioralTrainData()
    
    var sendTitleTrainBank : String = ""
    
    let cellScaling: CGFloat = 0.6
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for family in UIFont.familyNames.sorted(){
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font name: \(names)")
        }
        
        obedienceTitleTrain.font = UIFont(name: "KeepCalm-Medium", size: 17)
        behavioralTitleTrain.font = UIFont(name: "KeepCalm-Medium", size: 17)
        UIFont.fontNames(forFamilyName: "KeepCalm-Medium.ttf")
        let screenSize = UIScreen.main.bounds.size
        let layout = obedienceTrainCollection!.collectionViewLayout as!  UICollectionViewFlowLayout
        obedienceTrainCollection.backgroundColor = UIColor(displayP3Red: 111/255, green: 83/255, blue: 54/255, alpha: 0.0)
        
        let layout2 = behavioralTrainCollection!.collectionViewLayout as! UICollectionViewFlowLayout
        behavioralTrainCollection.backgroundColor = UIColor(displayP3Red: 111/255, green: 83/255, blue: 54/255, alpha: 0.0)
        
        obedienceTrainCollection?.dataSource = self
        behavioralTrainCollection?.dataSource = self
        
        obedienceTrainCollection.delegate = self
        behavioralTrainCollection.delegate = self
        
    }

}

extension MainMenuViewController: UICollectionViewDataSource, UICollectionViewDelegate {
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
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        
//        let cell2 = behavioralTrainCollection.dequeueReusableCell(withReuseIdentifier: "BehavioralTrainCell", for: indexPath) as! BehavioralCollectionViewCell
//        cell2.train1 = behavioralTrain[indexPath.item]
//        
//        
//        return cell2
//    }
  
}
