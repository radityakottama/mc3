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
                ["Hal yang wajar jika anak anjing suka meletakkan dan mengunyah sesuatu kedalam mulutnya. ", "Anak anjing menggunakan mulut mereka untuk mengeksplorasi dan memahami dunia di sekitar mereka. Sebaiknya, fokus pada pembentukan kepemimpinan anda sehingga anda dapat memerintah dalam mengunyah atau perilaku yang tidak diinginkan lainnya dalam jangka panjang.", "benar"],
                ["Anjing yang mengunyah sesuatu dapat disebabkan oleh gejala kecemasan karena berpisah dengan pemiliknya.","Jika perilaku itu terjadi ketika anda jauh dari rumah, maka itu mungkin merupakan gejala kecemasan karena perpisahan. Anda bisa membawanya jalan bersama sebelum pergi dari rumah. Tujuannya yaitu meninggalkan anjing anda dalam mode istirahat yang tenang saat anda pergi.","benar"],
                ["Anjing yang bosan dan energik cenderung mengunyah sesuatu.","Jika anjing anda memiliki energi berlebih, ia harus mengarahkannya ke suatu tempat / benda, bisa saja mainannya ataupun benda kepunyaan anda. Anda bisa mengalihkan energinya dengan mengajaknya jalan-jalan, ataupun bermain dengannya.","benar"],
                ["Anjing yang mengunyah benda kepunyaan anda sebaiknya dibiarkan saja karena merupakan hal yang alami.","Anjing suka mengunyah sejak ia kecil, ini adalah perilaku normal dan alami - selama tidak berlebihan. Tetapi itu tidak berarti anda membiarkannya. Sebaliknya, arahkan naluri mengunyah anjing ke arah objek yang tepat, seperti mainan mengunyah. Koreksi anjing anda dengan tenang dan segera  ketika ia mengunyah benda lain yang anda ingin dia hindari.","salah"],
                ["AAnjing yang mengunyah benda dapat disebabkan oleh masalah kesehatannya.","Beberapa kekurangan nutrisi dapat menyebabkan “pica”, yang merupakan naluri untuk makan barang-barang non-makanan. Dan juga beberapa anjing yang menderita masalah “gastrointestinal” mungkin menggunakan mengunyah untuk memicu muntah agar merasa lebih baik. ","benar"]
                
        ]
    }
    
    static func behavioralTrainDataBerantakan() -> [[String]]{
        return
            [
                ["Sebaiknya memberikan makanan sesuai jam makan yang telah ditentukan.", "Berikan pakan dengan menjadwalkan jam makan anjing anda secara konsisten. Beri makan anjing Anda pada waktu yang sama setiap hari dan bawa pergi mangkuk mereka di antara waktu makan.", "benar"]
                
        ]
    }
}
