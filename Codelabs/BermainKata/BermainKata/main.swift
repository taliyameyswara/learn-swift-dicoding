//
//  main.swift
//  BermainKata
//
//  Created by Taliya Meyswara on 13/03/24.
//

import Foundation

print("Hello, World!")

print("Program Bermain Kata")
print("----------------------------------")

print("Masukkan nama depan : "); let firstName = String(readLine() ?? "")
print("Masukkan nama belakang : "); let lastName = String(readLine() ?? "")
print("----------------------------------")
print("Berikut adalah operator uang digunakan")

// Operator Concatenation
let concatenationString = firstName + lastName
print("1. String Operator Concatenation : \(concatenationString)")

// Operator Mutability
var mutabilityString = ""
mutabilityString += firstName
mutabilityString += lastName
print("2. String Operator Mutability : \(mutabilityString)")

// Operator Comparison
var comparisonString = ""
if firstName == lastName {
    comparisonString = String(true)
} else {
    comparisonString = String(false)
}

print("3. String Comparison Operator : \"\(comparisonString)\"")
print("----------------------------------")
print("Berikut adalah fungsi uang digunakan")

// Menggabungkan nama depan dan nama belakang
let fullName = firstName + " " + lastName

// Fungsi isEmpty
let empty = fullName.isEmpty
print("1. Fungsi isEmpty : \(empty))")

// Fungsi startIndex
let startIndex = fullName[fullName.startIndex]
print("2. Fungsi startIndex : \(startIndex)")

// Fungsi Fungsi Indexing Lainnya
let customIndex = fullName[fullName.index(fullName.startIndex, offsetBy: 5)]
print("4. Index ke lima : \"\(customIndex)\"")

// Fungsi endIndex
let endIndex = fullName[fullName.index(before: fullName.endIndex)]
print("5. Fungsi endIndex : \"\(endIndex)\"")

// Fungsi insert
var insert = fullName
insert.insert("!", at:insert.endIndex)
print("6. Fungsi insert : \"\(insert)\"")

// Fungsi remove
var remove = insert
remove.remove(at: remove.index(before: remove.endIndex))
print("7. Fungsi remove : \"\(remove)\"")

// Fungsi append
var append = firstName
append.append(lastName)
print("8. Fungsi append : \"\(append)\"")

// Fungsi count
let count = fullName.count
print("9. Fungsi length : \(count)")
print("----------------------------------")
