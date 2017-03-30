//
//  ISBNBookDealsViewController.swift
//  Sylabilt
//
//  Created by Mustafa on 30/03/2017.
//  Copyright © 2017 Sobia. All rights reserved.
//

import UIKit

class ISBNBookDealsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.addLeftBarButtonWithImage(UIImage.init(named: "menu")!)
    }
    
    //MARK: tableView DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    //MARK: tableView Delegate
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 147;
    }

}
