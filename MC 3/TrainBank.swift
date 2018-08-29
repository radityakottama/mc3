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
            TrainBank(titletrain: "Duduk", trainImage: [UIImage(named: "sit_button_2.0")!,UIImage(named: "guide_2")!]),
            TrainBank(titletrain: "Berbaring", trainImage: [UIImage(named: "down_button_2.0")!,UIImage(named: "guide_1")!]),
            TrainBank(titletrain: "Datang", trainImage: [UIImage(named: "come_button_2.0")!]),
            TrainBank(titletrain: "Diam", trainImage: [UIImage(named: "stay_button_2.0")!])
        ]
    }
    static func behavioralTrainData() -> [TrainBank]
    {
        return [
            TrainBank(titletrain: "Menggonggong Berlebihan", trainImage: [UIImage(named: "bark_button_2.0")!]),
            TrainBank(titletrain: "Mengunyah", trainImage: [UIImage(named: "chewing_button_2.0")!]),
            TrainBank(titletrain: "Memberantakan Rumah", trainImage: [UIImage(named: "breaking_rule_button_2.0")!])
        ]
    }

}
