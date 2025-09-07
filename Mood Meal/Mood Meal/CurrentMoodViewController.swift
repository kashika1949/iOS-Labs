//
//  CurrentMoodViewController.swift
//  Mood Meal
//
//  Created by Hardik on 07/08/25.
//

import UIKit

class CurrentMoodViewController: UIViewController {

    @IBOutlet weak var moodButton1: UIButton!
    @IBOutlet weak var moodButton2: UIButton!
    @IBOutlet weak var moodButton3: UIButton!
    @IBOutlet weak var moodButton4: UIButton!
    
    @IBOutlet weak var moodLabel1: UILabel!
    @IBOutlet weak var moodLabel2: UILabel!
    @IBOutlet weak var moodLabel3: UILabel!
    @IBOutlet weak var moodLabel4: UILabel!
    
//    var moods: [Mood] = []
//    var buttonChosen: [Mood] = []
//    var buttonIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        // Do any additional setup after loading the view.
    }
    
    func updateUI(){
//        updateCurrentMoodStack()
        moodButton1.setTitle(meals[0].mood.emoji, for: .normal)
        moodButton2.setTitle(meals[4].mood.emoji, for: .normal)
        moodButton3.setTitle(meals[8].mood.emoji, for: .normal)
        moodButton4.setTitle(meals[12].mood.emoji, for: .normal)
        
        moodLabel1.text = meals[0].mood.name
        moodLabel2.text = meals[4].mood.name
        moodLabel3.text = meals[8].mood.name
        moodLabel4.text = meals[12].mood.name
    }
    
//    func updateCurrentMoodStack(){
//        moodButton1.setTitle("😊", for: .normal)
//        moodButton2.setTitle("😢", for: .normal)
//        moodButton3.setTitle("😩", for: .normal)
//        moodButton4.setTitle("⚡️", for: .normal)
//        moodLabel1.text = "Happy"
//        moodLabel2.text = "Sad"
//        moodLabel3.text = "Angry"
//        moodLabel4.text = "Anxious"
//    }
    
    @IBAction func currentMoodButtonPressed(_ sender: UIButton) {
//        var currentButton = moods
//        
//        switch sender {
//            case moodButton1:
//                currentButton.append(buttonChosen[0])
//        case moodButton2:
//                currentButton.append(buttonChosen[1])
//        case moodButton3:
//                currentButton.append(buttonChosen[2])
//        case moodButton4:
//                currentButton.append(buttonChosen[3])
//        default:
//            break
//        }
        
        performSegue(withIdentifier: "ActivityLevelViewController", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let activityVC = segue.destination as? ActivityLevelViewController else{
            return
        }
        
        guard let selectedButton = sender as? UIButton else{
            return
        }
        
        switch selectedButton {
            case moodButton1:
                activityVC.selectedMood = meals[0].mood
            case moodButton2:
                activityVC.selectedMood = meals[4].mood
            case moodButton3:
                activityVC.selectedMood = meals[8].mood
            case moodButton4:
                activityVC.selectedMood = meals[12].mood
            default:
                break
        }
        
//        activityVC.selectedMood = selectedButton.currentTitle
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
