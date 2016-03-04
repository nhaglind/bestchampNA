//
//  ViewController.swift
//  Best Champ NA
//
//  Created by Nick Haglind on 2/18/16.
//  Copyright © 2016 Nick Haglind. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var removeChamp: UIButton!
  @IBOutlet weak var reset: UIButton!
  @IBOutlet weak var randomChamp: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func displayChamp(sender: AnyObject) {
    
    randomChamp.image = UIImage(named: "sprite\(arc4random_uniform(5) + 1).png")

    removeChamp.hidden = true
    randomChamp.hidden = false
    reset.hidden = false
    
  }

  @IBAction func resetObject(sender: AnyObject) {
    removeChamp.hidden = false
    reset.hidden = true
    randomChamp.hidden = true
  }
}

