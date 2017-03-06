//
//  SecondViewController.swift
//  ModalTransitionCustomAnimation
//
//  Created by kotaro on 2017/03/04.
//  Copyright © 2017年 kotaro. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIViewControllerTransitioningDelegate {
    let animator = Animator()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.transitioningDelegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissPrevViewController(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return animator
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return animator
    }
}
