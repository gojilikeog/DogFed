//
//  ViewController.swift
//  feedDog
//
//  Created by Oscar Galvez on 1/15/21.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.backgroundColor = UIColor.black
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "🐶", message: "Thanks you for her food!", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        self.view.backgroundColor = UIColor.green
        sender.setTitle("YES", for: .normal)
    }
        
}

