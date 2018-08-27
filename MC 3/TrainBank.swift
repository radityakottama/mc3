//
//  TrainBank.swift
//  Pawpaws Project
//
//  Created by Klaudius Ivan on 21/08/18.
//  Copyright © 2018 Klaudius. All rights reserved.
//

import UIKit

class TrainBank {
    // MARK: - Public API
    var titletrain = ""
    var trainImage: [UIImage]
   
    
    init(titletrain: String, trainImage: [UIImage])
    {
        self.titletrain = titletrain
        self.trainImage = trainImage
    }
    // MARK: - Private
    // dummy data
    static func obedienceTrainData() -> [TrainBank]
    {
        return [
            TrainBank(titletrain: "Duduk", trainImage: [UIImage(named: "sit_button")!,UIImage(named: "sit_button_clicked")!,UIImage(named: "guide_2")!]),
            TrainBank(titletrain: "Berbaring", trainImage: [UIImage(named: "down_button")!,UIImage(named: "down_button_clicked")!,UIImage(named: "guide_1")!]),
            TrainBank(titletrain: "Datang", trainImage: [UIImage(named: "come_button")!, UIImage(named: "come_button_clicked")!]),
            TrainBank(titletrain: "Diam", trainImage: [UIImage(named: "stay_button")!, UIImage(named: "stay_button_clicked")!])
        ]
    }
    static func behavioralTrainData() -> [TrainBank]
    {
        return [
            TrainBank(titletrain: "Menggongong Berlebihan", trainImage: [UIImage(named: "bark_button")!, UIImage(named: "bark_button_clicked")!]),
            TrainBank(titletrain: "Mengunyah", trainImage: [UIImage(named: "chewing_button")!, UIImage(named: "chewing_button_clicked")!]),
            TrainBank(titletrain: "Memberantakan Rumah", trainImage: [UIImage(named: "breaking_rule_button")!, UIImage(named: "breaking_rule_button_clicked")!])
        ]
    }

}
