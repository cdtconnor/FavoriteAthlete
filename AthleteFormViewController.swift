//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Connor Thompson on 4/1/20.
//

import UIKit

class AthleteFormViewController: UIViewController {

    var athlete: Athlete?
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view.
    }
    
    
    func updateView() {
        guard let existingAthlete = athlete else {return}
        nameTextField.text = existingAthlete.name
        ageTextField.text = existingAthlete.age
        leagueTextField.text = existingAthlete.league
        teamTextField.text = existingAthlete.team
        
    }

    @IBAction func saveButtonTapped(_ sender: UIButton) {
        guard let name = nameTextField.text,
            let age = ageTextField.text,
            let league = leagueTextField.text,
            let team = teamTextField.text else {return}
        athlete = Athlete (name: name, age: age, league: league, team: team)
        performSegue(withIdentifier: "UnwindToAthleteTable", sender: self)
    }

}
