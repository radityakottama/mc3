//
//  InstructionSCENEViewController.swift
//  MC 3
//
//  Created by Raditya Kottama on 21/08/18.
//  Copyright © 2018 Raditya Kottama. All rights reserved.
//

import UIKit

class InstructionSCENEViewController: UIViewController, UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for train in obedienceTrain {
            if train.titletrain == self.titleTrain{
                images = train.trainImage
                break
            }
        }
        
        for train in behavioralTrain {
            if train.titletrain == self.titleTrain{
                images = train.trainImage
                break
            }
        }

        
        for index in 0..<images.count{
            
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            
            let imageView = UIImageView(frame: frame)
            imageView.image = images[index]
            self.scrollView.addSubview(imageView)
        }
        
        scrollView.contentSize = CGSize(width:(scrollView.frame.size.width * CGFloat(images.count)), height: scrollView.frame.size.height)
        scrollView.delegate = self
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    var titleTrain : String = ""
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    var images : [UIImage] = []
    var obedienceTrain = TrainBank.obedienceTrainData()
    var behavioralTrain = TrainBank.behavioralTrainData()
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(pageNumber)
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
