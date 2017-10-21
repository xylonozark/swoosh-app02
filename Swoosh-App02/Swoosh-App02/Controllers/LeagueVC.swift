//
//  LeagueVC.swift
//  Swoosh-App02
//
//  Created by Xantes Fabela on 10/20/17.
//  Copyright © 2017 Xantes Fabela. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var mensBtn: UIButton!
    @IBOutlet weak var womensBtn: UIButton!
    @IBOutlet weak var coedBtn: UIButton!
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    @IBAction func unwindFromMensVC(unwindSegue: UIStoryboardSegue) {
     
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
    player.desiredLeague = leagueType
    nextBtn.isEnabled = true
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        if onMensTapped {
        performSegue(withIdentifier: "mensVCSegue", sender: self)
        } else if onWomensTapped {
            performSegue(withIdentifier: "womensVCSegue", sender: self)
        }else if onCoedTapped {
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
