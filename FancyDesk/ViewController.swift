//
//  ViewController.swift
//  FancyDesk
//
//  Created by Manolescu Mihai Alexandru on 12/02/2018.
//  Copyright © 2018 Manolescu Mihai Alexandru. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController
{
    @IBOutlet var headerViewHeight: NSLayoutConstraint!
    
 
    
    
    @IBOutlet var headerView: UIView!
    
    @IBOutlet var viewX: UIViewX!
    
    
    @IBOutlet var startButton: UIButton!
    @IBAction func startButton(_ sender: Any)
    {
        animateStart()
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
      
        
        
    }

   func animateStart()
   {
    self.view.layoutIfNeeded()
    
    //change the constraint and only then we can animate the change:
    //self.headerViewHeight.constant = 100
    
       UIView.animate(withDuration: 1.5)
       {
        self.headerView.transform = CGAffineTransform.identity.scaledBy(x: 1, y: 4)
        
        self.viewX.transform = CGAffineTransform.identity.translatedBy(x: -4*self.view.frame.width, y: 0)
       }
    
    
    
    }

}

