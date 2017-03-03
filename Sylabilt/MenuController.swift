//
//  MenuController.swift
//  SidebarMenu
//
//  Created by Simon Ng on 2/2/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import UIKit


class MenuController: UITableViewController {
    
    let labelArray = ["Subscribe","Edit Profile","My Syllabit","ISBN Book Deals","Export Calendar","Share App","Settings","Logout"];
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
        func tableView(tableView: UITableView, numberOfRowsInSection: Int) {
            self.labelArray.count
        }
        
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath) as UITableViewCell
            
            var cellLabel = cell.contentView.viewWithTag(1) as! UILabel
            
            cellLabel.text = self.labelArray[IndexPath.row] as! String
            
            
            
            return cell
            
        }
        
    
    

       
   
}
