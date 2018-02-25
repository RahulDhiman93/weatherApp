//
//  ViewController.swift
//  weatherApp
//
//  Created by Rahul Dhiman on 23/02/18.
//  Copyright © 2018 Rahul Dhiman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var info: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
          info.constant -= view.bounds.width
    }

   var animationPerformedOnce = false
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
    if !animationPerformedOnce {
    UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
    self.info.constant += self.view.bounds.width
    self.view.layoutIfNeeded()
    }, completion: nil)
    
    
    animationPerformedOnce = true
    }
    
    }

}

