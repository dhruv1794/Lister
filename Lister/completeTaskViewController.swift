//
//  completeTaskViewController.swift
//  Lister
//
//  Created by Dhruv Mishra on 07/02/17.
//  Copyright © 2017 dhruvinity. All rights reserved.
//

import UIKit

class completeTaskViewController: UIViewController {
    
    var task = Task()

    @IBOutlet weak var tasklabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tasklabel.text = task.name
    }

    @IBAction func completetask(_ sender: Any) {
    }


}
