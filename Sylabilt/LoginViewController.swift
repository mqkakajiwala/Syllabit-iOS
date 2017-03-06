//
//  LoginViewController.swift
//  Sylabilt
//
//  Created by Mustafa on 05/03/2017.
//  Copyright © 2017 Sobia. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var registerLabelTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var withLabelTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var withLabelBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var orLabelTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var orLabelBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var textFieldsViewBottomConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.addLeftBarButtonWithImage(UIImage.init(named: "menu")!)
        
        DispatchQueue.main.async {
            
        
        if DeviceType.IS_IPHONE_5  {
            self.registerLabelTopConstraint.constant = 40
            self.withLabelTopConstraint.constant = 25
            self.withLabelBottomConstraint.constant = 25
            self.orLabelTopConstraint.constant = 25
            self.withLabelTopConstraint.constant = 20
            self.textFieldsViewBottomConstraint.constant = 25;
        }
        else if DeviceType.IS_IPHONE_6 {
            self.registerLabelTopConstraint.constant = 50
        }
        else if DeviceType.IS_IPHONE_6P {
            self.registerLabelTopConstraint.constant = 100
        }
        
    }
}
  

}
