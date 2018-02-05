//
//  SecondViewController.swift
//  ikid
//
//  Created by JJ Guo on 2/3/18.
//  Copyright © 2018 JJ Guo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var joke: UITextView!
    var lines: [String] = ["Knock Knock", "Who's there", "Canoe", "Canoe who?", "Canoe give me a job please?"]
    var curr = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func nextPressed(_ sender: Any) {
        curr += 1
        joke.text = lines[curr]
        UIView.transition(with: joke, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
    }
    
    @IBAction func backPressed(_ sender: Any) {
        curr -= 1
        joke.text = lines[curr]
        UIView.transition(with: joke, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
    }
    
}

