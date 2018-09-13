//
//  RobotViewController.swift
//  MC 3
//
//  Created by Klaudius Ivan on 23/08/18.
//  Copyright © 2018 Raditya Kottama. All rights reserved.
//

import UIKit
import AVFoundation
class RobotViewController: UIViewController {

    var captureSession = AVCaptureSession()
    var backCamera: AVCaptureDevice?
    var frontCamera: AVCaptureDevice?
    var currentCamera: AVCaptureDevice?
    
    
    var photoOutput: AVCapturePhotoOutput?
    var cameraPreviewLayer: AVCaptureVideoPreviewLayer?
    var effect: UIVisualEffect!
    var chosenAnimal: String = ""
    @IBOutlet weak var visualEffectView: UIVisualEffectView!
    
    @IBOutlet weak var feedbackLabel: UILabel!
    @IBOutlet var feedbackFoodButtonView: UIView!
    @IBOutlet var feedbackWifiButtonView: UIView!
    @IBOutlet var feedbackPlayButtonView: UIView!
    @IBOutlet var feedbackMicButtonView: UIView!
    
    @IBOutlet weak var tidakFoodViewButton: UIButton!
    @IBOutlet weak var tidakPlayViewButton: UIButton!
    @IBOutlet weak var tidakWifiViewButton: UIButton!
    @IBOutlet weak var tidakMicViewButton: UIButton!
    
    @IBOutlet weak var wifiButton: UIButton!
    @IBOutlet weak var foodButton: UIButton!
    @IBOutlet weak var micButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    //MARK: - Function Button
    
    
    @IBAction func funcFoodButton(_ sender: Any) {
        animateIn(feedbackView: feedbackFoodButtonView)
    }
    @IBAction func funcWifiButton(_ sender: Any) {
        animateIn(feedbackView: feedbackWifiButtonView)
    }
    @IBAction func funcPlayButton(_ sender: Any) {
        animateIn(feedbackView: feedbackPlayButtonView)
    }
    @IBAction func funcMicButton(_ sender: Any) {
        animateIn(feedbackView: feedbackMicButtonView)
    }
    
    
    
    @IBAction func yaFoodViewFunc(){
        robotScreenFeedBackLabel(labelFeedback: "Robot mengeluarkan makanan untuk peliharaanmu")
        animateOut(feedbackView: feedbackFoodButtonView)
        feedbackLabel.isHidden = false

    }
    @IBAction func yaWifiFunc(){
        robotScreenFeedBackLabel(labelFeedback: "Perangkat berhasil terhubung dengan robot")
        animateOut(feedbackView: feedbackWifiButtonView)
        feedbackLabel.isHidden = false

    }
    @IBAction func yaPlayViewFunc(){
        if chosenAnimal == "Dog"{
        robotScreenFeedBackLabel(labelFeedback: "Robot melemparkan bola")
        }else {
            robotScreenFeedBackLabel(labelFeedback: "Robot menembakkan laser")
        }
        animateOut(feedbackView: feedbackPlayButtonView)
        feedbackLabel.isHidden = false

    }
    @IBAction func yaMicViewFunc(){
        robotScreenFeedBackLabel(labelFeedback: "Robot bisa mengeluarkan suaramu")
        animateOut(feedbackView: feedbackMicButtonView)
        feedbackLabel.isHidden = false

    }
    
    
    
    @IBAction func tidakFoodViewFunc(_ sender: Any) {
        animateOut(feedbackView: feedbackFoodButtonView)
        feedbackLabel.isHidden = true
    }
    @IBAction func tidakMicViewFunc(_ sender: Any){
        animateOut(feedbackView: feedbackMicButtonView)
        feedbackLabel.isHidden = true
    }
    @IBAction func tidakPlayViewFunc(_ sender: Any) {
        animateOut(feedbackView: feedbackPlayButtonView)
        feedbackLabel.isHidden = true
    }
    @IBAction func tidakWifiViewFunc(_ sender: Any){
        animateOut(feedbackView: feedbackWifiButtonView)
        feedbackLabel.isHidden = true
    }
    @IBAction func backButton(_ sender: Any) {if chosenAnimal == "Dog"{
        performSegue(withIdentifier: "dog", sender: self)
    }else if chosenAnimal == "Cat"{
        performSegue(withIdentifier: "cat", sender: self)
        }
        
    }
    
    
    
    
    //MARK: - Function all
    func robotScreenFeedBackLabel(labelFeedback:String){
        feedbackLabel.text=labelFeedback
        UIView.animate(withDuration: 0.4) {
//            labelFeedback.alpha = 1
//            labelFeedback.transform = CGAffineTransform.identity
        }
        
        
    }
    
    func animateOut(feedbackView: UIView){
        UIView.animate(withDuration: 0.3, animations: {
            feedbackView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            feedbackView.alpha = 0
            
            self.visualEffectView.isHidden = true
        }) {(success:Bool) in
            feedbackView.removeFromSuperview()
        }
    }
    func animateIn(feedbackView: UIView){
        self.view.addSubview(feedbackView)
        visualEffectView.isHidden = false
        feedbackView.center = self.view.center
        
        feedbackView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3  )
        feedbackView.alpha = 0
        
        UIView.animate(withDuration: 0.4) {
            self.visualEffectView.effect = self.effect
            feedbackView.alpha = 1
            feedbackView.transform = CGAffineTransform.identity
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chosenAnimal = UserDefaults.standard.value(forKey: "chosenAnimal") as! String
        if chosenAnimal == "Dog"{
            playButton.setImage(#imageLiteral(resourceName: "dog play button-1"), for: .normal)
            
        }
        else {playButton.setImage(#imageLiteral(resourceName: "cat play button-1"), for: .normal)
        }
        feedbackLabel.isHidden = true
        effect = visualEffectView.effect
        visualEffectView.isHidden = true
        setupCaptureSession()
        setupDevice()
        setupInputOutput()
        setupPreviewLayer()
        startRunningCaptureSession()
        
        
        
        // Do any additional setup after loading the view.
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return UIInterfaceOrientationMask.landscapeRight
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupCaptureSession(){
        captureSession.sessionPreset = AVCaptureSession.Preset.photo
    }
    func setupDevice(){
        let deviceDiscoverySession = AVCaptureDevice.DiscoverySession(deviceTypes: [AVCaptureDevice.DeviceType.builtInWideAngleCamera], mediaType: AVMediaType.video, position: AVCaptureDevice.Position.unspecified)
        let devices = deviceDiscoverySession.devices
        
        for device in devices{
            if device.position == AVCaptureDevice.Position.back{
                backCamera = device
            }else if device.position == AVCaptureDevice.Position.front{
                frontCamera = device
            }
        }
        currentCamera = backCamera
    }
    func setupInputOutput(){
        do{
            let captureDeviceInput = try AVCaptureDeviceInput(device:currentCamera!)
            captureSession.addInput(captureDeviceInput)
            photoOutput?.setPreparedPhotoSettingsArray([AVCapturePhotoSettings(format: [AVVideoCodecKey: AVVideoCodecType.jpeg])], completionHandler: nil)
        }catch{
            print("error")
        }
        
    }
    func setupPreviewLayer(){
        cameraPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        cameraPreviewLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
        cameraPreviewLayer?.connection?.videoOrientation = AVCaptureVideoOrientation.landscapeRight
        cameraPreviewLayer?.frame = CGRect(x: 0, y: 0, width: 825, height: 419)
        self.view.layer.insertSublayer(cameraPreviewLayer!, at: 0)
    }
    func startRunningCaptureSession(){
        captureSession.startRunning()
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
