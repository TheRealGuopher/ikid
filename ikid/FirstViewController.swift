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
    let question = UIImage(named: "question.png")
    let answer = UIImage(named: "answer.png")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func jokeChangeButtonPressed(_ sender: Any) {
        if jokeImage.image == question {
            jokeImage.image = answer
            UIView.transition(with: jokeImage, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        } else {
            jokeImage.image = question
            UIView.transition(with: jokeImage, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
    }
    


}

