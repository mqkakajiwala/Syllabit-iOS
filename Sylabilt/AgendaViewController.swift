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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        if self.revealViewController() != nil {
//            menuButton.target = self.revealViewController()
//            menuButton.action = "revealToggle:"
//            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
//        }
        
//        if DeviceType.IS_IPHONE_6P {
//            self.lineViewBottomConstraint.constant = 12
//        }else{
//            self.lineViewBottomConstraint.constant = 4
//        }
        
        
        
//        self.nextLabel.transform = CGAffineTransform(rotationAngle: CGFloat(-0.25));
//        self.nextLabel?.font = UIFont.completeItemTextFontWithItalic(size: 24)
//        self.bioLabel?.font = UIFont.completeItemTextFontWithItalic(size: 24)
//        self.bioLabel.transform = CGAffineTransform(rotationAngle: CGFloat(-0.25));
//        self.dateLabel.font = UIFont.completeItemTextFontWithRegular(size: 30)
//        self.dayLabel.font = UIFont.completeItemTextFontWithRegular(size: 18)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
