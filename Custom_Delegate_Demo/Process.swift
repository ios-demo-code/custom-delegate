//
//  Process.swift
//  Custom_Delegate_Demo
//
//  Created by Soeng Saravit on 7/9/17.
//  Copyright © 2017 Soeng Saravit. All rights reserved.
//

import Foundation

class Process {
    var delegate:ProcessDelegate?
    
    func startProcess() {
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(self.finishedProcess), userInfo: nil, repeats: false)
    }
    
    @objc func finishedProcess(){
        delegate?.didFinishTask(msg: "Process completed")
    }
    
}


protocol ProcessDelegate {
    func didFinishTask(msg:String)
}
