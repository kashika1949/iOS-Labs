/*:
## Exercise - Create Functions

 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself(){
    print("hello, my name is hemant and I am a student")
}

//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
import Foundation
func magicEightBall(){
    let randomNum = Int.random(in: 0...4)
    if randomNum == 0 {
        print("yes")
    }
    else if randomNum == 1 {
        print ("hlo ")
    }
    else if randomNum == 2 {
        print (" bye")
    }
    else if randomNum == 3{
        print (" yo")
    }
    else {
        print("sorry")
    }
}
magicEightBall()
/*:
page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
 */
