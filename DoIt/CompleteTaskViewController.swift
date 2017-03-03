//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Christian Wasmer on 03/03/2017.
//  Copyright © 2017 Christian Wasmer. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!

    var task = Task()
    var previousVC = TasksViewController()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important {
            taskLabel.text = "‼️ \(task.name)"
        }
        else {
            taskLabel.text = task.name
        }
        
    }

    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedindex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)

        
    }
    

}
