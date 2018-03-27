//
//  ViewController.swift
//  weatherApp
//
//  Created by Rahul Dhiman on 23/02/18.
//  Copyright © 2018 Rahul Dhiman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var weatherImg: UIImageView!
    @IBOutlet weak var RC1: UIImageView!
    
    @IBOutlet weak var pony: UIImageView!
    @IBOutlet weak var ssun: UIImageView!
    @IBOutlet weak var temp: UILabel!
    @IBOutlet weak var rainy: UIImageView!
    @IBOutlet weak var RC2: UIImageView!
    
    @IBOutlet weak var cloud: UIImageView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.RC1.isHidden = true
        self.RC2.isHidden = true
        self.pony.isHidden = true
        
       
    }

   var animationPerformedOnce = false
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.sun360(360)
        DispatchQueue.main.asyncAfter(deadline: .now() + 6.0, execute: {
            self.sun360(360)
        })
    }
   
    //℃
    
    @IBAction func seasonbtn(_ sender: Any) {
        
        UIView.transition(with: temp,
                          duration: 2.5,
                          options: .transitionFlipFromBottom,
                          animations: { [weak self] in
                            self?.temp.text = String("16℃")
            }, completion: nil)
        
        UIView.transition(with: weatherImg,
                          duration: 2.5,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.weatherImg.image = UIImage(named: "rain.jpg")
            }, completion: nil)
        
        UIView.transition(with: rainy,
                          duration: 3.0,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.rainy.image = UIImage(named: "raindrop.png")
            }, completion: nil)
        
        /*UIView.transition(with: cloud,
                          duration: 3.0,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.cloud.image = UIImage(named: "rainycloud.png")
            }, completion: nil)*/
        
        UIView.transition(with: RC1,
                          duration: 3.0,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.RC1.isHidden = false
            }, completion: nil)
        
        UIView.transition(with: RC2,
                          duration: 3.0,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.RC2.isHidden = false
            }, completion: nil)
        
        
        UIView.transition(with: ssun,
                          duration: 2.0,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.ssun.isHidden = true
            }, completion: nil)
        
        UIView.transition(with: pony,
                          duration: 3.0,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.pony.isHidden = false
            }, completion: nil)
       
        
    }
    
    func sun360(_ Angle:CGFloat){
        UIView.animate(withDuration: 50) { () -> Void in
            self.ssun.transform = CGAffineTransform(rotationAngle: Angle)
        }
        
        UIView.animate(withDuration: 50, delay: 0.15, options: UIViewAnimationOptions.curveEaseIn, animations: { () -> Void in
            self.ssun.transform = CGAffineTransform(rotationAngle: Angle)
        }, completion: nil)
        
    }
    
    func raindrop(){
   
    }
        
    
}

