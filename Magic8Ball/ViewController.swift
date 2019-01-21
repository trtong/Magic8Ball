//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Trinh Tong on 11/23/18.
//  Copyright © 2018 Trinh Tong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let startups = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]
    
    let nouns = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    @IBOutlet weak var nounLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func shakeButtonTapped(_ sender: UIButton) {
        
        generateAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else {return}
        generateAnswer()
    }
    
    func generateAnswer() {
        let maxIndex = UInt32(startups.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = startups[randomIndex]
        
        let maxNouns = UInt32(nouns.count)
        let randomNoun = Int(arc4random_uniform(maxNouns))
        
        nounLabel.text = nouns[randomNoun]
        
        
    }
    
}

