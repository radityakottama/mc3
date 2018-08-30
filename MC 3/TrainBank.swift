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
            TrainBank(titletrain: "Duduk", trainImage: [UIImage(named: "sit_button_2.0")!, UIImage(named: "duduk_1")!, UIImage(named: "duduk_2")!, UIImage(named: "duduk_3")!, UIImage(named: "duduk_4")!]),
            TrainBank(titletrain: "Berbaring", trainImage: [UIImage(named: "down_button_2.0")!, UIImage(named: "berbaring_1")!, UIImage(named: "berbaring_2")!, UIImage(named: "berbaring_3")!, UIImage(named: "berbaring_4")!]),
            TrainBank(titletrain: "Datang", trainImage: [UIImage(named: "come_button_2.0")!, UIImage(named: "datang_1")!, UIImage(named: "datang_2")!, UIImage(named: "datang_3")!]),
            TrainBank(titletrain: "Diam", trainImage: [UIImage(named: "stay_button_2.0")!, UIImage(named: "diam_1")!, UIImage(named: "diam_2")!, UIImage(named: "diam_3")!, UIImage(named: "diam_4")!])
        ]
    }
    static func obedienceCatTrainData() -> [TrainBank]
    {
        return [
            TrainBank(titletrain: "Duduk", trainImage: [UIImage(named: "stay_button_cat")!,UIImage(named: "duduk_kucing_1")!,UIImage(named: "duduk_kucing_2")!,UIImage(named: "duduk_kucing_3")!,UIImage(named: "duduk_kucing_4")!]),
            TrainBank(titletrain: "Datang", trainImage: [UIImage(named: "come_button_cat")!, UIImage(named: "datang_kucing_1")!, UIImage(named: "datang_kucing_2")!, UIImage(named: "datang_kucing_3")!, UIImage(named: "datang_kucing_4")!]),
            TrainBank(titletrain: "Tangkap", trainImage: [UIImage(named: "fetch_button_2.0")!, UIImage(named: "tangkap_kucing_1")!, UIImage(named: "tangkap_kucing_2")!, UIImage(named: "tangkap_kucing_3")!, UIImage(named: "tangkap_kucing_4")!])
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
    static func behavioralCatTrainData() -> [TrainBank]
    {
        return [
            TrainBank(titletrain: "Mencakar Perabotan", trainImage: [UIImage(named: "breaking_rule_cat_button")!])
        ]
    }

}
