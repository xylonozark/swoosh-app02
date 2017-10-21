//
//  LeagueVC.swift
//  Swoosh-App02
//
//  Created by Xantes Fabela on 10/20/17.
//  Copyright © 2017 Xantes Fabela. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    @IBOutlet weak var mensBtn: UIButton!
    @IBOutlet weak var womensBtn: UIButton!
    @IBOutlet weak var coedBtn: UIButton!
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func unwindFromMensVC(unwindSegue: UIStoryboardSegue) {
        
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        if mensBtnTapped {
        performSegue(withIdentifier: "mensVCSegue", sender: self)
        } else if womensBtnTapped {
            performSegue(withIdentifier: "womensVCSegue", sender: self)
        }else if coedBtnTapped {
            performSegue(withIdentifier: "coedVCSegue", sender: self)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
