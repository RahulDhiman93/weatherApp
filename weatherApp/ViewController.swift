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
    
    @IBOutlet weak var ssun: UIImageView!
    @IBOutlet weak var temp: UILabel!
    @IBOutlet weak var rainy: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

   var animationPerformedOnce = false
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        
        self.sun360(360)
    }
   
    //℃
    
    @IBAction func seasonbtn(_ sender: Any) {
        
        UIView.transition(with: temp,
                          duration: 1.0,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.temp.text = String("16℃")
            }, completion: nil)
        
        UIView.transition(with: weatherImg,
                          duration: 1.0,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.weatherImg.image = UIImage(named: "rain.jpg")
            }, completion: nil)
        
        UIView.transition(with: rainy,
                          duration: 2.0,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.rainy.image = UIImage(named: "raindrop.png")
            }, completion: nil)
        
        
        
        self.ssun.isHidden = true
       
       
        
    }
    
    func sun360(_ Angle:CGFloat){
        UIView.animate(withDuration: 30) { () -> Void in
            self.ssun.transform = CGAffineTransform(rotationAngle: Angle)
        }
        
        UIView.animate(withDuration: 30, delay: 0.15, options: UIViewAnimationOptions.curveEaseIn, animations: { () -> Void in
            self.ssun.transform = CGAffineTransform(rotationAngle: Angle)
        }, completion: nil)
        
    }
    
    
  
    
    func raindrop(){
        
        
        
    }
    
}

