//
//  ViewController.swift
//  feedDog
//
//  Created by Oscar Galvez on 1/15/21.
//  Implementing CoreData into the application called for the deletion of dictionaries and arrays that the rest of the program depended on to proceed.
//  Failure to build the class led to bricking the application. Working on rebuilding the application to learn from this.
//


import UIKit
import CoreData

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if dogFed[currentDog] == "YES" {
            self.view.backgroundColor = UIColor.green
        } else {
            self.view.backgroundColor = UIColor.red
        }
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func showMessage(sender: UIButton) {
        
        if self.view.backgroundColor == UIColor.red {
            let alertController = UIAlertController(title: "🐶", message: "\(Zoey.name) thanks you for their food!", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
            
            self.view.backgroundColor = UIColor.green
            sender.setTitle("YES", for: .normal)
            dogFed[currentDog] = "YES"
        } else {
            let alertController = UIAlertController(title: "🛑", message: "Did you mean to say no?", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
            
            self.view.backgroundColor = UIColor.red
            sender.setTitle("NO", for: .normal)
            dogFed[currentDog] = "NO"
        }
    }
    
    @IBAction func onButtonTap()
    {
        
    }
        
}

