//
//  ViewController.swift
//  Lister
//
//  Created by Dhruv Mishra on 07/02/17.
//  Copyright © 2017 dhruvinity. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    var tasks : [Task] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tasks = MakeTask()
        tableView.dataSource = self
        tableView.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important{
            cell.textLabel?.text = "‼️\(task.name)"
        }
        else{
            cell.textLabel?.text = task.name
        }
        
       
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let task = tasks[indexPath.row]
        performSegue(withIdentifier: "selectTaskSegue", sender: task)
    }
    
    func MakeTask()->[Task]
    {
        let  task1 = Task()
        task1.name = "walk the dog"
        task1.important = false
        let  task2 = Task()
        task2.name = "water the plants"
        task2.important = true
        let  task3 = Task()
        task3.name = "download se7en"
        task3.important = false
       
        return [task1,task2,task3]
    }

    
  
    @IBAction func plusTapper(_ sender: Any) {
        performSegue(withIdentifier: "plusTapped", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "plusTapped"{
        let nvc = segue.destination as! CreateTaskViewController
            nvc.pvc = self
        }
        if segue.identifier == "selectTaskSegue" {
            let nvc = segue.destination as! completeTaskViewController
            nvc.task = sender as! Task
        }
        
    }
    


}

