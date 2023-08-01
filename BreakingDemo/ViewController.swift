//
//  ViewController.swift
//  BreakingDemo
//
//  Created by Eugene KIRILLOV on 01/08/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var model = Model()

    override func viewDidLoad() {
        textLabel.text = model.initialText
    }

    @IBAction func leftButtonTapped(_ sender: Any) {
        textLabel.text = model.nextLine()
    }
    
    @IBAction func rightButtonTapped(_ sender: Any) {
        if let text = model.nextLine() {
            textLabel.text = text
        } else {
            DispatchQueue.global().async {
                self.textLabel.text = ""
            }
        }
    }
}
