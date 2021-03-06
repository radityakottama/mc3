//
//  ClickerInfoSCENEViewController.swift
//  MC 3
//
//  Created by Raditya Kottama on 24/08/18.
//  Copyright © 2018 Raditya Kottama. All rights reserved.
//

import UIKit

class ClickerInfoSCENEViewController: UIViewController {

    
    @IBOutlet weak var dismissButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        dismissButton.layer.cornerRadius = dismissButton.frame.size.width / 2
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissAction(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
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
