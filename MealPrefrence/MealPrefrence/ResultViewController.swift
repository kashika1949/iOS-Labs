//
//  ViewController.swift
//  MealPrefrence
//
//  Created by Kashika Baweja on 06/08/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    var mood: Mood?
    var activity: Activity?
    
    init?(coder: NSCoder, mood: Mood, activity: Activity) {
        self.mood = mood
        self.activity = activity
        super.init(coder: coder)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Suggested Meal"
        
        if let mood, let activity {
            updateUI(mood: mood, activity: activity)
        }
    }
    
    func updateUI(mood: Mood, activity: Activity) {
        for meal in meals {
            if meal.mood.name == mood.name && meal.activity.name == activity.name {
                resultLabel.text = meal.suggestedMeal
            }
        }
    }
    


}

