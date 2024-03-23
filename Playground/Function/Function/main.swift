//
//  main.swift
//  Function
//
//  Created by Taliya Meyswara on 15/03/24.
//

import Foundation

print("Belajar Function di Swift")

// Function tanpa parameter
func sayHello() -> String{
    return "Hello world!"
}
print(sayHello())

// Function dengan parameter
func greet(person: String) -> String {
    let greeting  = "Hello, " + person + "!"
    return greeting
}

var name = greet(person: "Taliya")
print(name)

print("-----------------------------")

// Functions dengan Berbagai Nilai Balikan/Multiple Return Values
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    return(currentMin, currentMax)
}
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")


print("-----------------------------")

// Functions dengan Implicit Return
func greeting(for person: String) -> String {
    "Hello, " + person + "!"
}
print(greeting(for: "Gilang"))

func anotherGreeting(for person: String) -> String {
    return "Hello, " + person + "!"
}
print(anotherGreeting(for: "Mario"))

print("-----------------------------")


/* ======================================================
 Label Argumen dan Nama Parameter dalam Function
  ======================================================
 */

func greet(person: String, from hometown:String) -> String {
    return "Hello \(person)! Glad you could visit \(hometown)😚"
}

print(greet(person: "Mario", from: "Semarang"))

// Variadic Parameters -> menerima nol atau lebih nilai dari tipe data yang ditentukan.

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

print(arithmeticMean(1,2,3,4))

// In-Out Parameters
// mengubah nilai parameter di dalam function dan perubaha tersebut bertahan setelah pemanggilan function

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var angka1 = 5
var angka2 = 10
swapTwoInts(&angka1, &angka2)
print("Angka 1 = \(angka1)")
print("Angka 2 = \(angka2)")

print("-----------------------------")

/* ======================================================
    Tipe Data dalam Function
  ======================================================
 */

// Menggunakan tipe data dalam function
func addTwoInts(_ a: Int, _ b: Int) -> Int {
   return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
   return a * b
}

var mathFunction: (Int, Int) -> Int = addTwoInts

print("Hasil dari 2 + 3 adalah \(mathFunction(2,3))")

mathFunction = multiplyTwoInts

print("Hasil dari 2 * 3 adalah \(mathFunction(2,3))")


// Tipe Data dalam Function sebagai Tipe Data Parameter
func addTwoInts2(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func printMathResult(_ mathFunction2: (Int, Int) -> Int, _ a: Int, _ b: Int){
    print("Hasilnya adalah \(mathFunction2(a, b))")
}

printMathResult(addTwoInts, 3, 5)

// Tipe Data Function sebagai Tipe Data Balikan/Return Types
func stepForward(_ input: Int) -> Int {
   return input + 1
}
func stepBackward(_ input: Int) -> Int {
   return input - 1
}
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
   return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

print("Counting to zero:")
while currentValue != 0 {
   print("\(currentValue)... ")
   currentValue = moveNearerToZero(currentValue)
}
print("zero!")

print("-----------------------------")

/* ======================================================
                    Function Bersarang
  ======================================================
 */

func chooseStepNestedFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(_ input: Int) -> Int {
       return input + 1
    }
    func stepBackward(_ input: Int) -> Int {
       return input - 1
    }
    return backward ? stepBackward : stepForward
}

var currentValue2 = -4
let moveNearerToZero2 = chooseStepFunction(backward: currentValue > 0)

while currentValue2 != 0 {
   print("\(currentValue2)... ")
   currentValue2 = moveNearerToZero2(currentValue2)
}

print("zero!")

