//
//  MapViewController.swift
//  SidebarMenu
//
//  Created by Simon Ng on 2/2/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import UIKit


class AgendaViewController: UIViewController {
    @IBOutlet weak var menuButton:UIBarButtonItem!
    @IBOutlet weak var nextLabel:UILabel!
    @IBOutlet weak var bioLabel:UILabel!
    @IBOutlet weak var dateLabel:UILabel!
    @IBOutlet weak var dayLabel:UILabel!
    @IBOutlet var lineViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet var dayBarButtonOutlet: UIBarButtonItem!
    @IBOutlet var monthBarButtonOutlet: UIBarButtonItem!
    @IBOutlet var weekBarButtonOutlet: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        if self.revealViewController() != nil {
        //            menuButton.target = self.revealViewController()
        //            menuButton.action = "revealToggle:"
        //            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        //        }
        
        if DeviceType.IS_IPHONE_6P {
            self.lineViewBottomConstraint.constant = 12
        }else{
            self.lineViewBottomConstraint.constant = 4
        }
        
        
        
        self.nextLabel.transform = CGAffineTransform(rotationAngle: CGFloat(-0.25));
        self.bioLabel.transform = CGAffineTransform(rotationAngle: CGFloat(-0.15));
        
//        let customFont = UIFont(name: "steelfish_rg_it.ttf", size: 17.0)  //don't forget to put real font name here - otherwise it won't work or may cause crash (see NOTES) !!!
//        self.dayBarButtonOutlet.setTitleTextAttributes([NSFontAttributeName: customFont!], for: UIControlState.normal)
    }
    
    
    
    
    
    
    
}
