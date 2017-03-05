//
//  SylabiltViewController.swift
//  Sylabilt
//
//  Created by Muzamil Hassan on 2/24/17.
//  Copyright © 2017 Sobia. All rights reserved.
//

import UIKit

class SylabiltViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.titleTextAttributes =
            [NSForegroundColorAttributeName: UIColor.white,
             NSFontAttributeName: UIFont.completeItemTextFontWithItalic(size: 24)]
        
        self.addLeftBarButtonWithImage(UIImage.init(named: "menu")!)
        
        
    }


}
