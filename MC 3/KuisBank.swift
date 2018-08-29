//
//  KuisBank.swift
//  MC 3
//
//  Created by Raditya Kottama on 28/08/18.
//  Copyright © 2018 Raditya Kottama. All rights reserved.
//

import Foundation

class KuisBank {
    
    var titleTrain = ""
    var kuisList = [[Kuis]]()
    var i: Int = 0
    
    init(titletrain: String, question: [[Kuis]]){

        self.titleTrain = titletrain


    }
    
    
    static func behavioralTrainData() -> [[String]]{
        return
        [
            ["Menggonggong adalah cara anjing untuk berkomunikasi, mengungkapkan kegembiraan, melindungi wilayah dan kumpulannya.", "Menggonggong adalah cara bagi anjing untuk berkomunikasi. Gonggongan ditujukan untuk mengungkapkan kegembiraan, melindungi wilayah dan kumpulannya. Selain itu, anjing juga kerap menggonggong ketika ada sesuatu yang salah.", "benar"],
            ["Anjing yang menggonggong secara berlebihan tidak perlu diberi kasih sayang.","Anjing yang menggonggong secara berlebihan perlu  diberikan kasih sayang, tetapi hanya ketika anjing anda dalam keadaan tenang, tunduk.","salah"],
            ["Anjing yang menggonggong secara berlebihan perlu diberi latihan dan disiplin.","Anjing yang menggonggong secara berlebihan membutuhkan latihan, disiplin, dan kasih sayang. Latihan dan Disiplin akan memberikan rangsangan fisik dan psikologis yang sangat diinginkan oleh anjing anda. Berikan anjing anda banyak olahraga melalui berjalan, serta memberinya pekerjaan untuk dilakukan dan perintah untuk belajar.","benar"],
            ["Anjing kecil yang bersemangat dan tidak berhenti menggonggong sebaiknya digendong agar ia berhenti menggonggong.","Sayangnya, ini adalah pendekatan yang salah. Perhatian dan kasih sayang dengan menggendong anjing  yang menggonggong karena senang, diartikan sebagai anda suka apa yang dilakukan oleh anjing anda.","salah"]
            
        ]
    }
    
    static func behavioralTrainDataMengunyah() -> [[String]]{
        return
            [
                ["pertanyaan", "penjelasan", "benar"],
                ["Anjing yang menggonggong secara berlebihan tidak perlu diberi kasih sayang.","Anjing yang menggonggong secara berlebihan perlu  diberikan kasih sayang, tetapi hanya ketika anjing anda dalam keadaan tenang, tunduk.","salah"],
                ["Anjing yang menggonggong secara berlebihan perlu diberi latihan dan disiplin.","Anjing yang menggonggong secara berlebihan membutuhkan latihan, disiplin, dan kasih sayang. Latihan dan Disiplin akan memberikan rangsangan fisik dan psikologis yang sangat diinginkan oleh anjing anda. Berikan anjing anda banyak olahraga melalui berjalan, serta memberinya pekerjaan untuk dilakukan dan perintah untuk belajar.","benar"],
                ["Anjing kecil yang bersemangat dan tidak berhenti menggonggong sebaiknya digendong agar ia berhenti menggonggong.","Sayangnya, ini adalah pendekatan yang salah. Perhatian dan kasih sayang dengan menggendong anjing  yang menggonggong karena senang, diartikan sebagai anda suka apa yang dilakukan oleh anjing anda.","salah"]
                
        ]
    }
    
    static func behavioralTrainDataBerantakan() -> [[String]]{
        return
            [
                ["Berantakan pertanyaan", "Berantakan penjelasan", "benar"],
                ["Anjing yang menggonggong secara berlebihan tidak perlu diberi kasih sayang.","Anjing yang menggonggong secara berlebihan perlu  diberikan kasih sayang, tetapi hanya ketika anjing anda dalam keadaan tenang, tunduk.","salah"],
                ["Anjing yang menggonggong secara berlebihan perlu diberi latihan dan disiplin.","Anjing yang menggonggong secara berlebihan membutuhkan latihan, disiplin, dan kasih sayang. Latihan dan Disiplin akan memberikan rangsangan fisik dan psikologis yang sangat diinginkan oleh anjing anda. Berikan anjing anda banyak olahraga melalui berjalan, serta memberinya pekerjaan untuk dilakukan dan perintah untuk belajar.","benar"],
                ["Anjing kecil yang bersemangat dan tidak berhenti menggonggong sebaiknya digendong agar ia berhenti menggonggong.","Sayangnya, ini adalah pendekatan yang salah. Perhatian dan kasih sayang dengan menggendong anjing  yang menggonggong karena senang, diartikan sebagai anda suka apa yang dilakukan oleh anjing anda.","salah"]
                
        ]
    }
}
