//
//  ViewController.swift
//  cardgame
//
//  Created by Jay Shah on 2019-09-20.
//  Copyright © 2019 Jay Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var LeftImageView: UIImageView!
    @IBOutlet weak var RightImageView: UIImageView!
    @IBOutlet weak var LeftScore: UILabel!
    @IBOutlet weak var RightScore: UILabel!
    var LeftPoint = 0
    var RightPoint = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func DealTapped(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        LeftImageView.image = UIImage(named:"card\(leftNumber)")
        LeftImageView.image = UIImage(named:"card\(leftNumber)")
        RightImageView.image = UIImage(named:"card\(rightNumber)")
        
        if leftNumber > rightNumber{
            LeftPoint += 1
            LeftScore.text = String(LeftPoint)
        } else if rightNumber > leftNumber{
            RightPoint += 1
            RightScore.text = String(RightPoint)
        } else{
            LeftPoint -= 1
            RightPoint -= 1
            LeftScore.text = String(LeftPoint)
            RightScore.text = String(RightPoint)
            
        }
        
        
    }
    
}

