//
//  LaunchViewController.swift
//  weatherApp
//
//  Created by Rahul Dhiman on 26/02/18.
//  Copyright © 2018 Rahul Dhiman. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

    @IBOutlet weak var frontlabel: UILabel!
    @IBOutlet weak var im1: UIImageView!
    @IBOutlet weak var im2: UIImageView!
    @IBOutlet weak var im3: UIImageView!
    @IBOutlet weak var im4: UIImageView!
    @IBOutlet weak var im5: UIImageView!
    @IBOutlet weak var im6: UIImageView!
    @IBOutlet weak var leftconst: NSLayoutConstraint!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // leftconst.constant -= view.bounds.width

        // Do any additional setup after loading the view.
    }
    
     var animationPerformedOnce = false
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        self.pic()
        self.bounce()
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0, execute: {
            self.changetomain()
        })
    }
    
    func pic(){
        
    /*    if !animationPerformedOnce {
            UIView.animate(withDuration: 1.5, delay: 0, options: .curveEaseOut, animations: {
                self.leftconst.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            
            animationPerformedOnce = true
        }*/
        
        UIView.transition(with: im1,
                           duration: 1.0,
                           options: .transitionCrossDissolve,
                           animations: { [weak self] in
                            self?.im1.image = UIImage(named: "016-sun.png")
            }, completion: nil)
        
        UIView.transition(with: im2,
                          duration: 2.0,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.im2.image = UIImage(named: "012-storm.png")
            }, completion: nil)
        
        UIView.transition(with: im3,
                          duration: 3.0,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.im3.image = UIImage(named: "010-raining.png")
            }, completion: nil)
        
        UIView.transition(with: im4,
                          duration: 4.0,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.im4.image = UIImage(named: "009-wind-1.png")
            }, completion: nil)
        
        UIView.transition(with: im5,
                          duration: 4.5,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.im5.image = UIImage(named: "001-celsius.png")
            }, completion: nil)
        
        UIView.transition(with: im6,
                          duration: 5.0,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.im6.image = UIImage(named: "003-temperature.png")
            }, completion: nil)
        
       
    }
    
    func bounce(){
        let theButton = frontlabel as UILabel
        
        let bounds = theButton.bounds
        
        UIView.animate(withDuration: 5, delay: 0, usingSpringWithDamping: 4.5, initialSpringVelocity: 30, options: .curveEaseInOut, animations: {
            theButton.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 60, height: bounds.size.height)
        }) { (success:Bool) in
            if success {
                
                UIView.animate(withDuration: 2.5, animations: {
                    theButton.bounds = bounds
                })
                
            }
        }

    }
    
    func changetomain(){
        let editor = storyboard!.instantiateViewController(withIdentifier: "main")
        present(editor, animated: true, completion: nil)
    }
    

  
}
