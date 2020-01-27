//
//  ViewController.swift
//  DropboxSDKIntegration
//
//  Created by Kunal Gupta on 26/01/20.
//  Copyright © 2020 Kunal Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionBtnFetchFiles(sender: Any) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        appDelegate?.chooser.open(for: DBChooserLinkTypeDirect, from: self, completion: { (val) in
            print(val)
        })
    }
}

