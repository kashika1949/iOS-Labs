//
//  Meal.swift
//  Meal Tracker
//
//  Created by Kashika Baweja on 18/08/25.
//

import Foundation
struct Meal{
    var name: String
    var food:[Food]
}


var Meals: [Meal] {
    let preWorkout = Meal(name: "pre-workout", food: [
        Food(name: "Energy Bar", description: "fast-digesting carbs for quick fuel"),
        Food(name: "Peanut Butter Toast", description: "healthy fats and sustained energy"),
        Food(name: "Black Coffee", description: "boosts focus and performance")
    ])
    
    let postWorkout = Meal(name: "post-workout", food: [
        Food(name: "Protein Shake", description: "aids muscle recovery"),
        Food(name: "Chicken Breast", description: "lean protein for repair"),
        Food(name: "Sweet Potatoes", description: "refills glycogen stores")
    ])
    
    let lateNightSnack = Meal(name: "late-night snack", food: [
        Food(name: "Cottage Cheese", description: "slow-digesting protein for overnight recovery"),
        Food(name: "Walnuts", description: "rich in omega-3 and sleep-friendly nutrients"),
        Food(name: "Chamomile Tea", description: "relaxes and promotes better sleep")
    ])
    
    return [preWorkout,postWorkout,lateNightSnack]
}
