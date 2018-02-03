//
//  ThirdViewController.swift
//  ikid
//
//  Created by JJ Guo on 2/3/18.
//  Copyright © 2018 JJ Guo. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var joke: UITextView!
    @IBOutlet weak var jokeChangeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func jokeChangeButtonPressed(_ sender: Any) {
        let setup = "Whenever the cashier at the grocery store asks my dad if he would like the milk in a bag..."
        let punchLine = "He replies, \"No, just leave it in the carton!\""
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
