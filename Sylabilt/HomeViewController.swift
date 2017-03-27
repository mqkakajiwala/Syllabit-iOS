//
//  HomeViewController.swift
//  Sylabilt
//
//  Created by Mustafa Qutbuddin on 3/8/17.
//  Copyright © 2017 Sobia. All rights reserved.
//

import UIKit
import PageMenu

class HomeViewController: UIViewController {

    var pageMenu : CAPSPageMenu?
    var controllerArray : [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "HOME"
        
        self.addLeftBarButtonWithImage(UIImage.init(named: "menu")!)
        
        let vc1 = self.storyboard?.instantiateViewController(withIdentifier: "AGENDAVC")
        vc1?.title = "AGENDA"

        let vc2 = self.storyboard?.instantiateViewController(withIdentifier: "CHILDVC")
        vc2?.title = "DAY"
        
        let vc3 = self.storyboard?.instantiateViewController(withIdentifier: "CHILDVC")
        vc3?.title = "WEEK"

        let vc4 = self.storyboard?.instantiateViewController(withIdentifier: "CHILDVC")
        vc4?.title = "MONTH"

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
        
        
        
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0.0, y: 0.0, width: self.view.frame.width, height: self.view.frame.height), pageMenuOptions: parameters)

        
        self.addChildViewController(pageMenu!)
        self.view.addSubview(pageMenu!.view)
        
        pageMenu!.didMove(toParentViewController: self)

    }
    
    func CGRectMake(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect {
        return CGRect(x: x, y: y, width: width, height: height)
    }

   

}
