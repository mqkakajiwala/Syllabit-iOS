//
//  ExportViewController.swift
//  Sylabilt
//
//  Created by Muzamil Hassan on 2/26/17.
//  Copyright © 2017 Sobia. All rights reserved.
//

import UIKit

class ExportViewController: UIViewController {
    @IBOutlet weak var menuButton:UIBarButtonItem!
    @IBOutlet weak var emailButton1:UIButton!
    @IBOutlet weak var emailButton2:UIButton!
    @IBOutlet weak var DownloadButton:UIButton!
    @IBOutlet weak var ExportButton:UIButton!
    @IBOutlet weak var CancelButton:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
//        if self.revealViewController() != nil {
//            menuButton.target = self.revealViewController()
//            menuButton.action = "revealToggle:"
//            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
//        }
//        self.emailButton1.titleLabel?.font = UIFont.completeItemTextFontWithRegular(size: 24)
//        self.emailButton2.titleLabel?.font = UIFont.completeItemTextFontWithRegular(size: 24)
//        self.DownloadButton.titleLabel?.font = UIFont.completeItemTextFontWithRegular(size: 18)
//        self.ExportButton.titleLabel?.font = UIFont.completeItemTextFontWithRegular(size: 24)
//        self.CancelButton.titleLabel?.font = UIFont.completeItemTextFontWithRegular(size: 24)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
