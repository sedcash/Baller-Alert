//
//  LeagueVC.swift
//  Baller-Alert
//
//  Created by Sedrick Cashaw Jr on 2/9/18.
//  Copyright © 2018 Sedrick Cashaw Jr. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }

    @IBAction func mensBtnPressed(_ sender: Any) {
        selectLeague(leagueType: "Mens")
    }
    
    @IBAction func womensBtnPressed(_ sender: Any) {
        selectLeague(leagueType: "Womens")
    }
    
    @IBAction func coedBtnPreseed(_ sender: Any) {
        selectLeague(leagueType: "Coed")
    }
    
    @IBAction func nextBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
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
