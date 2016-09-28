//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    var favoriteFlavorsOfIceCream = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
    
    
    
    
    
    func names(forFlavor: String) -> [String] {
        let name = favoriteFlavorsOfIceCream
        var iceCreamMatches: [String] = []
        
        for (name, flavor) in name {
            if flavor == forFlavor {
                print("\(name) likes \(flavor) ice cream")
                iceCreamMatches.append(name)
            }
        }
        return(iceCreamMatches)
    }
    
    
    
    
    
    
    // 3.
    
    
    func count(forFlavor: String) -> Int {
        let name1 = favoriteFlavorsOfIceCream
        var iceCreamMatches1: [String] = []
        
        for (name1, flavor) in name1 {
            if flavor == forFlavor {
                iceCreamMatches1.append(name1)
            }
        }
        print(iceCreamMatches1.count)
        return(iceCreamMatches1.count)
    }

    
    
    
    
    // 4.
    
    func flavor(forPerson: String) -> String {
    
        if favoriteFlavorsOfIceCream[forPerson] != nil {
            print(favoriteFlavorsOfIceCream[forPerson])
            return(favoriteFlavorsOfIceCream[forPerson])!
        } else {
            return "nil"
        }
        
    }
    
    // 5.
    
    func replace(flavor: String, forPerson: String) -> Bool {
        
        if favoriteFlavorsOfIceCream[forPerson] != nil {
            favoriteFlavorsOfIceCream[forPerson] = flavor
             return true
        } else {
           return false
            
            
        }
    }
    

    
    // 6.
    
    
    func remove(person: String) -> Bool {
        
            if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = nil
            print("true")
            return true
        } else {
            print("False")
            return false
            }
        }
    
    
    
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        let num = favoriteFlavorsOfIceCream.keys
        print(num.count)
        return(num.count)
    }
    
    
    
    // 8.
    
    func add(person: String, withFlavor: String) -> Bool {
        
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = withFlavor
            print("true")
            return true
        } else {
            print("False")
            return false
        }
    }
    
    
    

    // 9.
    
    func attendeeList() -> String {
        
        var attendees: String = ""
        
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()

        for (index, person) in allNames.enumerated() {
            
                if let uflavor = favoriteFlavorsOfIceCream[person] {
                  attendees += "\(person) likes \(uflavor)"
                    
                    if index < (allNames.count - 1){
                        attendees += "\n"
                    }
                }
        }
        return attendees
    }
    
    
    
    
    
    
}
