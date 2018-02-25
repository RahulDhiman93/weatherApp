//
//  ViewController.swift
//  weatherApp
//
//  Created by Rahul Dhiman on 23/02/18.
//  Copyright © 2018 Rahul Dhiman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var sun: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

   var animationPerformedOnce = false
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 40) { () -> Void in
            self.sun.transform = CGAffineTransform(rotationAngle: 360)
        }
        
        UIView.animate(withDuration: 40, delay: 0.15, options: UIViewAnimationOptions.curveEaseIn, animations: { () -> Void in
            self.sun.transform = CGAffineTransform(rotationAngle: 360)
        }, completion: nil)
    
    }

}

