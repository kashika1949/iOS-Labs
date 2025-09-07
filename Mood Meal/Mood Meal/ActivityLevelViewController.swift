//
//  ActivityLevelViewController.swift
//  Mood Meal
//
//  Created by Hardik on 07/08/25.
//

import UIKit

class ActivityLevelViewController: UIViewController {
    
    
    @IBOutlet weak var activityButton1: UIButton!
    @IBOutlet weak var activityButton2: UIButton!
    @IBOutlet weak var activityButton3: UIButton!
    @IBOutlet weak var activityButton4: UIButton!
    
    @IBOutlet weak var activityLabel1: UILabel!
    @IBOutlet weak var activityLabel2: UILabel!
    @IBOutlet weak var activityLabel3: UILabel!
    @IBOutlet weak var activityLabel4: UILabel!
    
    
//    var activitys: [Activity] = []
//    var buttonChosen: [Activity] = []
//    var buttonIndex = 0
    
    var selectedMood: Mood?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        updateUI()
        
        if let selectedMood = selectedMood {
            print(selectedMood)
        }
        
        // Do any additional setup after loading the view.
    }
    func updateUI(){
//        updateActivityLevelStack()
    }
    
    func updateActivityLevelStack(){
        activityButton1.setTitle("🪑", for: .normal)
        activityButton2.setTitle("🚶🏼‍♂️", for: .normal)
        activityButton3.setTitle("🏃🏼‍♂️", for: .normal)
        activityButton4.setTitle("🏋🏻‍♂️", for: .normal)
        activityLabel1.text = "Sedentary"
        activityLabel2.text = "Lightly active"
        activityLabel3.text = "Moderately active"
        activityLabel4.text = "Very active"
    }
    
    @IBAction func activityLevelButtonPressed(_ sender: UIButton) {
//        var currentButton = activitys
//        
//        switch sender {
//            case activityButton1:
//                currentButton.append(buttonChosen[0])
//        case activityButton2:
//                currentButton.append(buttonChosen[1])
//        case activityButton3:
//                currentButton.append(buttonChosen[2])
//        case activityButton4:
//                currentButton.append(buttonChosen[3])
//        default:
//            break
//        }
        
        performSegue(withIdentifier: "SummaryViewController", sender: nil)

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
