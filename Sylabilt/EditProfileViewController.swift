//
//  EditProfileViewController.swift
//  Sylabilt
//
//  Created by Muzamil Hassan on 2/24/17.
//  Copyright © 2017 Sobia. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {
   
    @IBOutlet var confirmButtonTopConstraint: NSLayoutConstraint!
    @IBOutlet var handleFieldTopConstraint: NSLayoutConstraint!
    @IBOutlet var shareProfileButtonTopConstraint: NSLayoutConstraint!
    @IBOutlet var emailStackTopConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.addLeftBarButtonWithImage(UIImage.init(named: "menu")!)
        
        if DeviceType.IS_IPHONE_5 {
            self.shareProfileButtonTopConstraint.constant = 10;
            self.handleFieldTopConstraint.constant = 10;
            self.emailStackTopConstraint.constant = 10;
            self.confirmButtonTopConstraint.constant = 10;
        }
    }
    
    
}
