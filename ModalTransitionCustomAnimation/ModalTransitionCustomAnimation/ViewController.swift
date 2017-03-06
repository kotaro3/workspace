//
//  ViewController.swift
//  ModalTransitionCustomAnimation
//
//  Created by kotaro on 2017/03/04.
//  Copyright © 2017年 kotaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func presentNextViewController(_ sender: Any) {
        let nextViewController = SecondViewController.init()

        present(nextViewController, animated: true, completion: nil)
    }
    
}

