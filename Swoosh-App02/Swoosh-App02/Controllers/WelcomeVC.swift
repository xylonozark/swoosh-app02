//
//  ViewController.swift
//  Swoosh-App02
//
//  Created by Xantes Fabela on 10/20/17.
//  Copyright © 2017 Xantes Fabela. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var noviceBtn: UIButton!
    @IBOutlet weak var veteranBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func unwindFromLeagueVC(unwindSegue: UIStoryboardSegue) {
        
    }


}

