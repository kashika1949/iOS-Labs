//
//  moodViewController.swift
//  MealPrefrence
//
//  Created by Kashika Baweja on 07/08/25.
//

import UIKit

class moodViewController: UIViewController {
    
    @IBOutlet weak var happybutton: UIButton!
    @IBOutlet weak var sadbutton: UIButton!
    @IBOutlet weak var stressedbutton: UIButton!
    @IBOutlet weak var energeticbutton: UIButton!
    
    @IBOutlet weak var happylabel1: UILabel!
    @IBOutlet weak var stressedlabel3: UILabel!
    @IBOutlet weak var sadlabel2: UILabel!
    @IBOutlet weak var energeticlabel4: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Select your current mood"
        updateUI()
    }
    func updateUI() {
        happylabel1.text = meals[0].mood.name
        setupButton(button: happybutton, textString: meals[0].mood.emoji)
        sadlabel2.text = meals[4].mood.name
        setupButton(button: sadbutton, textString: meals[4].mood.emoji)
        stressedlabel3.text = meals[8].mood.name
        setupButton(button: stressedbutton, textString: meals[8].mood.emoji)
        energeticlabel4.text = meals[12].mood.name
        setupButton(button: energeticbutton, textString: meals[12].mood.emoji)
    }
    
    func setupButton(button: UIButton, textString: String) {  // This way of settingup buttons was not required to be implement in ST (you can set it on storyboard), but you should know how to programmatically set it
        button.setAttributedTitle(NSAttributedString(string: textString, attributes: [.font: UIFont.systemFont(ofSize: 100)]) , for: .normal)
    }
    
    
    
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "moodToMeal", sender: sender)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {  // Data (Mood) is passed to ActivityVC using prepare Method
        guard let activityVC = segue.destination as? activityViewController else {
            return
        }
        guard let button = sender as? UIButton else {
            return
        }
        var index: Int = 0
        switch button {
        case happybutton:
            index = 0
        case sadbutton:
            index = 4
        case stressedbutton:
            index = 8
        case energeticbutton:
            index = 12
        default:
            break
        }
        activityVC.mood = meals[index].mood
    }
}
