//
//  FirstViewController.swift
//  ikid
//
//  Created by JJ Guo on 2/3/18.
//  Copyright © 2018 JJ Guo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var joke: UITextView!
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
        let setup = "Having sex is like playing bridge."
        let punchLine = "If you don’t have a good partner, you’d better have a good hand."
        if joke.text != punchLine {
            joke.text = punchLine
            UIView.transition(with: joke, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            jokeChangeButton.setTitle("Back", for: .normal)
        } else {
            joke.text = setup
            UIView.transition(with: joke, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
            jokeChangeButton.setTitle("Next", for: .normal)
        }
    }
    


}

