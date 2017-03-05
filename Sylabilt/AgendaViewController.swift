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
    @IBOutlet var agendaBarButtonOutlet: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        if DeviceType.IS_IPHONE_6P {
            self.lineViewBottomConstraint.constant = 12
        }else{
            self.lineViewBottomConstraint.constant = 4
        }
        
        self.addLeftBarButtonWithImage(UIImage.init(named: "menu")!)
        
        
        self.dayBarButtonOutlet.setTitleTextAttributes([NSFontAttributeName:UIFont.completeItemTextFontWithItalic(size: 24)], for: UIControlState.normal)
        
        self.monthBarButtonOutlet.setTitleTextAttributes([NSFontAttributeName:UIFont.completeItemTextFontWithItalic(size: 24)], for: UIControlState.normal)
        
        self.weekBarButtonOutlet.setTitleTextAttributes([NSFontAttributeName:UIFont.completeItemTextFontWithItalic(size: 24)], for: UIControlState.normal)
        
               self.agendaBarButtonOutlet.setTitleTextAttributes([NSFontAttributeName:UIFont.completeItemTextFontWithItalic(size: 24)], for: UIControlState.normal)
        
        self.nextLabel.transform = CGAffineTransform(rotationAngle: CGFloat(-0.25));
        self.bioLabel.transform = CGAffineTransform(rotationAngle: CGFloat(-0.25));
        
        
        //        let customFont = UIFont(name: "steelfish_rg_it.ttf", size: 17.0)  //don't forget to put real font name here - otherwise it won't work or may cause crash (see NOTES) !!!
        //        self.dayBarButtonOutlet.setTitleTextAttributes([NSFontAttributeName: customFont!], for: UIControlState.normal)
    }
    
    
    
    
    
    
    
}
