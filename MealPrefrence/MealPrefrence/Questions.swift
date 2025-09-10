//
//  Questions.swift
//  MealPrefrence
////  Created by Kashika Baweja on 07/08/25.
//
import Foundation
struct Mood{
    var emoji: String
    var name: String
}
//enum MoodType: Character{
//    case Happy = "😊", Sad = "🥲", Stressed = "😩", Energetic = "⚡️"//}
struct Activity{
    var emoji: String
    var name: String
}
//enum ActivityType: Character{
//    case Sedantary = "🪑", light = "🚶‍♂️", Heavy = "🏃‍♂️" , Intense = "🏋️‍♂️"
//}

struct Meal{
    var mood: Mood
    var activity: Activity
    var suggestedMeal: String
}
var meals: [Meal] =   // 😊 Happy
[Meal(mood: Mood(emoji: "😊", name:"Happy"), activity: Activity(emoji: "🪑", name: "Sedentary"), suggestedMeal: "Masala Dosa with Coconut Chutney"),
Meal(mood: Mood(emoji: "😊", name:"Happy"), activity: Activity(emoji: "🚶‍♂️", name: "Light"), suggestedMeal: "Vegetable Upma with Filter Coffee"),
Meal(mood: Mood(emoji: "😊", name:"Happy"), activity: Activity(emoji: "🏃", name: "Moderate"), suggestedMeal: "Paneer Bhurji with Whole Wheat Paratha"),
Meal(mood: Mood(emoji: "😊", name:"Happy"), activity: Activity(emoji: "🏋️‍♀️", name: "Intense"), suggestedMeal: "Vegetable Biryani with Raita"),

// 😢 Sad
Meal(mood: Mood(emoji: "😢", name: "Sad"), activity: Activity(emoji: "🪑", name: "Sedentary"), suggestedMeal: "Moong Dal Khichdi with Ghee and Papad"),
Meal(mood: Mood(emoji: "😢", name: "Sad"), activity: Activity(emoji: "🚶‍♂️", name: "Light"), suggestedMeal: "Curd Rice with Mango Pickle"),
Meal(mood: Mood(emoji: "😢", name: "Sad"), activity: Activity(emoji: "🏃", name: "Moderate"), suggestedMeal: "Rajma Chawal"),
Meal(mood: Mood(emoji: "😢", name: "Sad"), activity: Activity(emoji: "🏋️‍♀️", name: "Intense"), suggestedMeal: "Paneer Butter Masala with Naan"),

// 😩 Stressed
Meal(mood: Mood(emoji: "😩", name: "Stressed"), activity: Activity(emoji: "🪑", name: "Sedentary"), suggestedMeal: "Idli with Sambar"),
Meal(mood: Mood(emoji: "😩", name: "Stressed"), activity: Activity(emoji: "🚶‍♂️", name: "Light"), suggestedMeal: "Poha with Peanuts"),
Meal(mood: Mood(emoji: "😩", name: "Stressed"), activity: Activity(emoji: "🏃", name: "Moderate"), suggestedMeal: "Vegetable Pulao with Cucumber Raita"),
Meal(mood: Mood(emoji: "😩", name: "Stressed"), activity: Activity(emoji: "🏋️‍♀️", name: "Intense"), suggestedMeal: "Palak Paneer with Jeera Rice"),

// ⚡️ Energetic
Meal(mood: Mood(emoji: "⚡️", name: "Energetic"), activity: Activity(emoji: "🪑", name: "Sedentary"), suggestedMeal: "Chole Bhature"),
Meal(mood: Mood(emoji: "⚡️", name: "Energetic"), activity: Activity(emoji: "🚶‍♂️", name: "Light"), suggestedMeal: "Aloo Paratha with Curd"),
Meal(mood: Mood(emoji: "⚡️", name: "Energetic"), activity: Activity(emoji: "🏃", name: "Moderate"), suggestedMeal: "Pav Bhaji"),
Meal(mood: Mood(emoji: "⚡️", name: "Energetic"), activity: Activity(emoji: "🏋️‍♀️", name: "Intense"), suggestedMeal: "Vegetarian Haleem")
]
