//
//  ViewController.swift
//  DropboxSDKIntegration
//
//  Created by Kunal Gupta on 26/01/20.
//  Copyright © 2020 Kunal Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK:- LIFE CYCLE

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK:- HELPER METHODS
    
    internal func uploadFileToServer(_ dict: JSON) {
        print(dict)
        // upload file to server
    }
    
    //MARK:- ACTION BUTTONS

    @IBAction func actionBtnFetchFiles(sender: Any) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        appDelegate?.chooser.open(for: DBChooserLinkTypeDirect, from: self, completion: { (val) in })
    }
}

