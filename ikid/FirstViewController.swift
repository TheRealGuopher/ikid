//
//  FirstViewController.swift
//  ikid
//
//  Created by JJ Guo on 2/3/18.
//  Copyright © 2018 JJ Guo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var jokeImage: UIImageView!
    @IBOutlet weak var jokeChangeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func jokeChangeButtonPressed(_ sender: Any) {
        if jokeImage.description == "question" {
            
        }
    }
    


}

