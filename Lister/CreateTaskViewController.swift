//
//  CreateTaskViewController.swift
//  Lister
//
//  Created by Dhruv Mishra on 07/02/17.
//  Copyright © 2017 dhruvinity. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var TextfieldTask: UITextField!
    var pvc = ViewController()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
    @IBAction func AddTapped(_ sender: Any) {
        //creating a task object
        let task = Task()
        task.name = TextfieldTask.text!
        task.important = importantSwitch.isOn
        //putting data inside the table view
        pvc.tasks.append(task)
        pvc.tableView.reloadData()
        navigationController!.popViewController(animated: true)//to go back from just tapping on the add button
    }

}
