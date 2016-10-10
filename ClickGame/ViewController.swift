//
//  ViewController.swift
//  ClickGame
//
//  Created by Imran Aftab Rana on 10/10/2016.
//  Copyright © 2016 Imran Aftab Rana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var clicks:Int = 0

    @IBOutlet weak var btnPlay: UIButton!
    @IBOutlet weak var btnExit: UIButton!
    @IBOutlet weak var lblscore: UILabel!
    @IBOutlet weak var firebtn: UIButton!
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var btnFire: UIButton!
    override func viewDidLoad() {
        btnFire.hidden = true
        btnExit.hidden = true
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playBtnClick(sender: AnyObject) {
        logoImg.hidden = true
        btnFire.hidden = true
        firebtn.hidden = false
        lblscore.text = "0 Shoots!"
        lblscore.hidden = false
        btnPlay.hidden = true
        btnExit.hidden = false
        
    }
    @IBAction func fireClick(sender: AnyObject) {
        clicks = clicks + 1
        lblscore.text = String( clicks) + " Shoots!"
    }
    
   
    @IBAction func exitt(sender: AnyObject) {
        clicks = 0
        lblscore.text = ""
        
        logoImg.hidden = false
        btnFire.hidden = false
        firebtn.hidden = true
        lblscore.hidden = true
        btnExit.hidden = true
        btnPlay.hidden = false

    }
   
}

