//
//  ViewController.swift
//  6thSolution
//
//  Created by yaser on 10/16/18.
//  Copyright © 2018 Barsam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    override func viewDidLayoutSubviews() {
        okButton.layer.cornerRadius = CGFloat(okButton.frame.height / 3)
    }


}

