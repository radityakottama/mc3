//
//  BehavioralCollectionViewCell.swift
//  Pawpaws Project
//
//  Created by Klaudius Ivan on 22/08/18.
//  Copyright © 2018 Klaudius. All rights reserved.
//

import UIKit

class BehavioralCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var iconTrain: UIImageView!
    @IBOutlet weak var titleTrain: UILabel!
    
    var train1: TrainBank? {
        didSet{
            self.updateUI()
        }
    }
    func updateUI ()
    {
        if let train = train1 {
            iconTrain.image = train.trainImage[0]
            titleTrain.text = train.titletrain
        }
        else {
            iconTrain.image = nil
            titleTrain.text = nil
        }
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 3.0
        //layer.shadowRadius = 2
        //layer.shadowOpacity = 0.6
        //layer.shadowOffset = CGSize (width: 5, height: 10)
        
        self.clipsToBounds = false
    }
    
}
