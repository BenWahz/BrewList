//
//  ViewController.swift
//  BrewList2
//
//  Created by user180592 on 11/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var brewerTitleLabel: UILabel!
    @IBOutlet weak var brewerDescLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        brewerTitleLabel.text = brewerNames[myIndex]
        brewerDescLabel.text = brewerDesc[myIndex]
        self.title = brewerNames[myIndex]
        
    }


}

