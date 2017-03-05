//
//  MenuController.swift
//  SidebarMenu
//
//  Created by Simon Ng on 2/2/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import UIKit


class MenuController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    //Mustafa Commenting
    var labelArray = ["Subscribe","Edit Profile","My Syllabilt","ISBN Book Deals","Export Calendar","Share App","Settings","Logout"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labelArray.count
    }
    
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let cellImage = cell.viewWithTag(1) as! UIImageView
        let cellLabel = cell.viewWithTag(2) as! UILabel
        
        cellImage.image = UIImage.init(named: labelArray[indexPath.row])
        cellLabel.text = labelArray[indexPath.row]
        
        return cell
    }
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
//            self.segueToControllers(ControllerIdentifier: "AGENDAVC")
            break
        case 1:
//            self.segueToControllers(ControllerIdentifier: "LOGINVC")
            break
        case 2:
//            self.segueToControllers(ControllerIdentifier: "LOGINVC")
            break
        case 3:
//            self.segueToControllers(ControllerIdentifier: "LOGINVC")
            break
        case 4:
//            self.segueToControllers(ControllerIdentifier: "LOGINVC")
            break
        case 5:
//            self.segueToControllers(ControllerIdentifier: "LOGINVC")
            break
        case 6:
//            self.segueToControllers(ControllerIdentifier: "LOGINVC")
            break
        case 7:
            self.segueToControllers(ControllerIdentifier: "LOGINVC")
            break
        default:
            break
        }
    }
    
    func segueToControllers (ControllerIdentifier : String) {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: ControllerIdentifier) {
            self.slideMenuController()?.mainViewController = controller
            self.slideMenuController()?.closeLeft()
        }
    }
    
}
