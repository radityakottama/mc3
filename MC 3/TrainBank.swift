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
            TrainBank(titletrain: "Sit", trainImage: [UIImage(named: "sit_button_2.0")!,UIImage(named: "guide_1")!]),
            TrainBank(titletrain: "Down", trainImage: [UIImage(named: "down_button_2.0")!,UIImage(named: "guide_1")!]),
            TrainBank(titletrain: "Come", trainImage: [UIImage(named: "come_button_2.0")!, UIImage(named: "guide_1")!]),
            TrainBank(titletrain: "Stay", trainImage: [UIImage(named: "stay_button_2.0")!, UIImage(named: "guide_1")!])
        ]
    }
    static func behavioralTrainData() -> [TrainBank]
    {
        return [
            TrainBank(titletrain: "Excessive Barking", trainImage: [UIImage(named: "bark_button_2.0")!, UIImage(named: "guide_1")!]),
            TrainBank(titletrain: "Chewing", trainImage: [UIImage(named: "chewing_button_2.0")!, UIImage(named: "guide_1")!]),
            TrainBank(titletrain: "House Breaking", trainImage: [UIImage(named: "breaking_rule_button_2.0")!, UIImage(named: "guide_1")!])
        ]
    }

}
