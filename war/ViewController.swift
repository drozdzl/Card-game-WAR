//
//  ViewController.swift
//  war
//
//  Created by luk dro on 3/1/17.
//  Copyright © 2017 luk dro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    var playerScore = 0
    var cpuScore = 0
    let arrayOfCards = ["card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king","ace"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftnubmber:Int = Int(arc4random_uniform(13))
        let rightnumber:Int = Int(arc4random_uniform(13))
        
        leftImageView.image = UIImage(named: arrayOfCards[leftnubmber])
        rightImageView.image = UIImage(named: arrayOfCards[rightnumber])
        addPoints(playerCard: leftnubmber, cpuCard: rightnumber)
    }
    func addPoints(playerCard: Int, cpuCard : Int)
    {
        
        if playerCard > cpuCard
        {
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
        }
        else
        {
            cpuScore += 1
            cpuScoreLabel.text = String(cpuScore)
        }
    }

}

