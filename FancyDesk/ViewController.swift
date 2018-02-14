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
    
    @IBOutlet var scrollView: UIScrollView!
    
    
    var imageView = UIImageView()
    
    var imagesForScrollView = [UIImageView]()
    
    var animationContainerView: UIView!
    
    @IBOutlet var startButton: UIButton!
    @IBAction func startButton(_ sender: Any)
    {
        animateStart()
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
      
        
    }

    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
        
        
        scrollView.layer.cornerRadius = 20
        
        var contentWidth: CGFloat = 0.0
        
        for x in 0...2
        {
            let image = UIImage(named: "wood\(x).jpg")
            let imageView = UIImageView(image: image)
            imagesForScrollView.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = CGFloat(0.8) * view.frame.size.width * CGFloat(x)
            
            contentWidth += scrollView.frame.width
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX, y: 0, width: scrollView.frame.width, height: scrollView.frame.height)
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: scrollView.frame.size.height)
        
//        var contentWidth: CGFloat = 0.0
//
//        for x in 0...2
//        {
//            let image = UIImage(named: "wood\(x).jpg")
//            let imageView = UIImageView(image: image)
//            imagesForScrollView.append(imageView)
//
//            var newX: CGFloat = 0.0
//
//            newX = view.frame.midX + view.frame.size.width * CGFloat(x)
//
//            contentWidth += newX
//
//            scrollView.addSubview(imageView)
//
//            imageView.frame = CGRect(x: newX - 75, y: (view.frame.size.height / 2) - 75, width: 300, height: 300)
//        }
//
//        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        
    }
    
   func animateStart()
   {

    UIView.animate(withDuration: 3, delay: 0, usingSpringWithDamping: 0, initialSpringVelocity: 0, options: [.curveEaseIn], animations: {self.headerView.transform = CGAffineTransform.identity.scaledBy(x: 1, y: 5)})
    

    imageView = UIImageView(image: UIImage(named: "saw.png"))
    imageView.backgroundColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.3)
    imageView.layer.cornerRadius = 10.0
    imageView.layer.masksToBounds = true
    imageView.translatesAutoresizingMaskIntoConstraints = false
    
//    view.addSubview(imageView)
//
//    let conX = imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//
//    let conBottom = imageView.bottomAnchor.constraint(equalTo:
//        view.bottomAnchor, constant: imageView.frame.height/3)
//
//    let conWidth = imageView.widthAnchor.constraint(equalTo:
//        view.widthAnchor, multiplier: 0.6, constant: 0)
//
//    let conHeight = imageView.heightAnchor.constraint(equalTo:
//        imageView.widthAnchor)
//
//    NSLayoutConstraint.activate([conX,conBottom,conWidth,conHeight])
//
//    view.layoutIfNeeded()
    
    
    UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: [.curveEaseInOut] ,animations:
    {
        //conBottom.constant = -300
        
        self.view.layoutIfNeeded()
    })
    
    UIView.animate(withDuration: 3, delay: 0, usingSpringWithDamping: 0, initialSpringVelocity: 0, options: [.curveEaseInOut] ,animations:
    {
            self.viewX.transform = CGAffineTransform.identity.scaledBy(x: 0.01, y: 0.01)
            self.viewX.alpha = 0
            self.view.layoutIfNeeded()
    }, completion: { (value: Bool) in
        self.viewX.transform = CGAffineTransform.identity.translatedBy(x: -2*self.viewX.center.x, y: 0)
       
    } )
    
    
    
    
    
    
    
    }

}

