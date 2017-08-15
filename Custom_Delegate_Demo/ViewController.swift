//
//  ViewController.swift
//  Custom_Delegate_Demo
//
//  Created by Soeng Saravit on 7/9/17.
//  Copyright © 2017 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ProcessDelegate {

    @IBOutlet weak var processLabel: UILabel!
    var process:Process?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.processLabel.text = "Processing..."
        process = Process()
        process?.delegate = self
        process?.startProcess()
    }
    
    func didFinishTask(msg: String) {
        self.processLabel.text = msg
    }

}

//extension ViewController:ProcessDelegate {
//    func didFinishTask(msg: String) {
//        self.processLabel.text = msg
//    }
//
//}

