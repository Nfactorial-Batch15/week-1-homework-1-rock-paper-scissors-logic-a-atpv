//
//  main.swift
//  First_HW
//
//  Created by Алдияр Айтпаев on 01.12.2021.
//

import Foundation

print("Pleace, enter your name" )
let name = readLine()


if let b = name {
    print("Ok,\(b), we are playing Rock Paper Scissors. Make your choise (R, P or S)")
}
let a = readLine()
if a != "R" && a != "P" && a != "S" {
    print("Your input is wrong. Try again")
    exit(0)
}

//if a != "R" && a != "P" && a != "S" {
//    print("Try again")
//}
    
    //func check(name: String) throws ->Bool {
    //    if a != "R" || a != "P" || a != "S" {
    //        print("Try again")
    //        throw NSError(domain: "Illegal Argument", code: 1)
    //    }
    //    return true
    //}

//procol Gesture{
//
//}
    
enum gestures {
case rock
case paper
case scissors
    
}
func randomGesture() -> gestures {
    let randomNumber = Int.random(in: 1...3)
    if randomNumber == 1 {
        return .rock
    }
    else if randomNumber == 2 {
        return .paper
    }
    else {
        return .scissors
    }
}





    func battle(choise: String) {
        let a = randomGesture()
        switch a {

        case .rock:
            print("Rock")
            if choise == "P" {
                print("You win!")
            }
            else if choise == "S" {
                print("You lose")
            }
            else {
                print("Draw")
            }

        case .paper:
            print("Paper")
            if choise == "S" {
                print("You win!")
            }
            else if choise == "R" {
                print("You lose")
            }
            else {
                print("Draw")
            }

        case .scissors:
            print("Scissors")
            if choise == "R" {
                print("You win!")
            }
            else if choise == "P" {
                print("You lose")
            }
            else {
                print("Draw")
            }

        }
    }
//if let b = a {
//    try check(name: b)
//}

if let b = a {
    battle(choise: b)
}

