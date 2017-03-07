//
//  MapViewController.swift
//  SidebarMenu
//
//  Created by Simon Ng on 2/2/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import UIKit
import PageMenu

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
    
    var pageMenu : CAPSPageMenu?
    var controllerArray : [UIViewController] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.navigationItem.title = "HOME"
        
        
        let vc1 = self.storyboard?.instantiateViewController(withIdentifier: "CHILDVC")
        vc1?.title = "AGENDA"
       
        let vc2 = self.storyboard?.instantiateViewController(withIdentifier: "CHILDVC")
        vc2?.title = "DAY"
        
        let vc3 = self.storyboard?.instantiateViewController(withIdentifier: "CHILDVC")
        vc3?.title = "MONTH"
        
        let vc4 = self.storyboard?.instantiateViewController(withIdentifier: "CHILDVC")
        vc4?.title = "WEEK"
        
        controllerArray.append(vc1!)
        controllerArray.append(vc2!)
        controllerArray.append(vc3!)
        controllerArray.append(vc4!)
        
        
        let parameters: [CAPSPageMenuOption] = [
            .scrollMenuBackgroundColor(UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0)),
            .scrollMenuBackgroundColor(UIColor(red: 0.153, green: 0.698, blue: 0.365, alpha: 1.00)),
            .selectionIndicatorColor(UIColor.white),
            .bottomMenuHairlineColor(UIColor(red: 70.0/255.0, green: 70.0/255.0, blue: 80.0/255.0, alpha: 1.0)),
            .menuItemFont(UIFont.completeItemTextFontWithItalic(size: 24.0)),
            .menuHeight(40.0),
            .menuItemWidth(UIScreen.main.bounds.size.width/5),
            .centerMenuItems(true),
            .unselectedMenuItemLabelColor(UIColor.black)
        ]
        
        
        
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 0.0, self.view.frame.width, self.view.frame.height), pageMenuOptions: parameters)
        
        self.view.addSubview(pageMenu!.view)

        
        if DeviceType.IS_IPHONE_6P {
            self.lineViewBottomConstraint.constant = 12
        }else{
            self.lineViewBottomConstraint.constant = 4
        }
        
        self.addLeftBarButtonWithImage(UIImage.init(named: "menu")!)
        
        
//        self.dayBarButtonOutlet.setTitleTextAttributes([NSFontAttributeName:UIFont.completeItemTextFontWithItalic(size: 24)], for: UIControlState.normal)
//        
//        self.monthBarButtonOutlet.setTitleTextAttributes([NSFontAttributeName:UIFont.completeItemTextFontWithItalic(size: 24)], for: UIControlState.normal)
//        
//        self.weekBarButtonOutlet.setTitleTextAttributes([NSFontAttributeName:UIFont.completeItemTextFontWithItalic(size: 24)], for: UIControlState.normal)
//        
//               self.agendaBarButtonOutlet.setTitleTextAttributes([NSFontAttributeName:UIFont.completeItemTextFontWithItalic(size: 24)], for: UIControlState.normal)
        
        self.nextLabel.transform = CGAffineTransform(rotationAngle: CGFloat(-0.25));
        self.bioLabel.transform = CGAffineTransform(rotationAngle: CGFloat(-0.25));
        
        
        //        let customFont = UIFont(name: "steelfish_rg_it.ttf", size: 17.0)  //don't forget to put real font name here - otherwise it won't work or may cause crash (see NOTES) !!!
        //        self.dayBarButtonOutlet.setTitleTextAttributes([NSFontAttributeName: customFont!], for: UIControlState.normal)
    }
    
    
    func CGRectMake(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect {
        return CGRect(x: x, y: y, width: width, height: height)
    }
    
    
    
    
}
