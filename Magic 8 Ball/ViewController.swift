//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Mariah Baysic on 23/07/2018.
//  Copyright © 2018 SpacedOut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mjShakeBall() {
        ballImage.image = UIImage(named: "ball" + String(arc4random_uniform(5) + 1))
    }

    @IBAction func shakeBall(_ sender: UIButton) {
        mjShakeBall()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        mjShakeBall()
    }
    
}

