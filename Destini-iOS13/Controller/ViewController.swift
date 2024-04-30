//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var storyBrain = StoryBrain()
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        udateTheView()
      
    }

    @IBAction func choiceButtonTapped(_ sender: UIButton) {
        if sender.titleLabel?.text == storyBrain.stories[storyBrain.numberOfStory].choice1{
            storyBrain.goToTiggerStory()
        }else{
            storyBrain.goToTresureStory()
        }
        udateTheView()
    }
    func udateTheView(){
        storyLabel.text = storyBrain.stories[storyBrain.numberOfStory].title
        choice1Button.setTitle(storyBrain.stories[storyBrain.numberOfStory].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.numberOfStory].choice2, for: .normal)
    }
}

