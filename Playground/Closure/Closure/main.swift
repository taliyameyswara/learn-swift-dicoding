//
//  main.swift
//  Closure
//
//  Created by Taliya Meyswara on 16/03/24.
//

import Foundation

print("Belajar Swift Materi Closure")

/**
 ======================
 Closure Expression
 Ekspresi closure merupakan cara untuk menulis inline closure dalam sintaksis dengan singkat dan terfokus.
 ======================
 */

let names = ["Gilang", "Alex", "Dimas", "Arif", "Ahmad"]

// Inferring Type From Context
// Metode sorted(by:) dipanggil pada array string, sehingga argumennya harus berupa function bertipe data (String, String) -> Bool.

// Implicit Returns from Single-Expression Closures
var reversedNames2 = names.sorted(by: { s1, s2 in s1 > s2 } )


// Sintaksis Ekspresi Closure
var reversedNames = names.sorted(by: >)
print(reversedNames)

print("------------------------------------")



print("------------------------------------")

// Trailing Closure
let digitNames = [
   0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
   5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map { (number) -> String in
   var number = number
   var output = ""
   repeat {
       output = digitNames[number % 10]! + output
       number /= 10
   } while number > 0
   return output
}
print("strings bertipe data array string dan memiliki nilai \(strings).")


