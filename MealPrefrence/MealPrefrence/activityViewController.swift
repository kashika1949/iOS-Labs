//
//  activityViewController.swift
//  MealPrefrence
//
//  Created by Kashika Baweja on 07/08/25.
//

import UIKit

class activityViewController: UIViewController {

    @IBOutlet weak var sedantarybutton: UIButton!
    @IBOutlet weak var lightbutton: UIButton!
    @IBOutlet weak var heavybutton: UIButton!
    @IBOutlet weak var intensebutton: UIButton!
    
    @IBOutlet weak var sedantarylabel1: UILabel!
    @IBOutlet weak var lightlabel2: UILabel!
    @IBOutlet weak var heavyabel3: UILabel!
    @IBOutlet weak var intenselabel4: UILabel!
    
    var mood: Mood?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            updateUI()
            navigationItem.title = "Select your activity level"
        }
        
    func updateUI() {
            sedantarylabel1.text = meals[0].activity.name
            setupButton(button: sedantarybutton, textString: meals[0].activity.emoji)
            lightlabel2.text = meals[1].activity.name
            setupButton(button: lightbutton, textString: meals[1].activity.emoji)
            heavyabel3.text = meals[2].activity.name
            setupButton(button: heavybutton, textString: meals[2].activity.emoji)
            intenselabel4.text = meals[3].activity.name
            setupButton(button: intensebutton, textString: meals[3].activity.emoji)
        }
        
        func setupButton(button: UIButton, textString: String) {  button.setAttributedTitle(NSAttributedString(string: textString, attributes: [.font: UIFont.systemFont(ofSize: 100)]) , for: .normal)
        }
    @IBAction func secondThirdAndFourthButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "activityhappyButtonSegue", sender: sender)   }
        
    @IBSegueAction func ActivitySegue(_ coder: NSCoder,sender : Any?) -> ResultViewController? {
        guard let button = sender as? UIButton, let mood = mood else {
            return nil
        
    }
    
      
            var index: Int = 0
            switch button {
            case sedantarybutton:
                index = 0
            case lightbutton:
                index = 1
            case heavybutton:
                index = 2
            case intensebutton:
                index = 3
            default:
                break
            }

            return ResultViewController(coder: coder, mood: mood, activity: meals[index].activity)
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


