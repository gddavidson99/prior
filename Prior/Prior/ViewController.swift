//
//  ViewController.swift
//  Prior
//
//  Created by Greg Davidson on 2/10/18.
//  Copyright © 2018 Greg Davidson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itemTextView: UITextView!
    
    var tasks = [Task]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemTextView.inputAccessoryView = addButton
        
    }
    
    private lazy var addButton: UIButton = {
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        button.setTitle("ADD", for: UIControlState.normal)
        button.backgroundColor = #colorLiteral(red: 0.4498280443, green: 0.8908208165, blue: 1, alpha: 1)
        button.addTarget(self, action: #selector(ViewController.addItem), for: UIControlEvents.touchUpInside)
        
        return button
        
    }()
    
    @objc func addItem() {
        
        if let taskText = itemTextView.text {
            
            tasks.append(Task(userName: taskText, userPriority: 5))
            
        }
        
        itemTextView.endEditing(true)
        
    }

}

