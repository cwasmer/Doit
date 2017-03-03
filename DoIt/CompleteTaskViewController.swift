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
    
    var task : Task? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task!.important {
            taskLabel.text = "‼️ \(String(describing: task!.name!))"
        }
        else {
            taskLabel.text = task!.name!
        }
        
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
        
        
    }
    
    
}
