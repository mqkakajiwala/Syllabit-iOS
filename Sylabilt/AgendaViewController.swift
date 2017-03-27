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
        
    
    var controllerArray : [UIViewController] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nextLabel.transform = CGAffineTransform(rotationAngle: CGFloat(-0.25));
        self.bioLabel.transform = CGAffineTransform(rotationAngle: CGFloat(-0.25));
    }
    
    
    
    
}
