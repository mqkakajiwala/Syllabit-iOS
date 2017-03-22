//
//  ExportViewController.swift
//  Sylabilt
//
//  Created by Muzamil Hassan on 2/26/17.
//  Copyright © 2017 Sobia. All rights reserved.
//

import UIKit

class ExportViewController: UIViewController {
    @IBOutlet weak var menuButton:UIBarButtonItem!
    @IBOutlet weak var emailButton1:UIButton!
    @IBOutlet weak var emailButton2:UIButton!
    @IBOutlet weak var DownloadButton:UIButton!
    @IBOutlet weak var ExportButton:UIButton!
    @IBOutlet weak var CancelButton:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
         self.addLeftBarButtonWithImage(UIImage.init(named: "menu")!)
    }



}
