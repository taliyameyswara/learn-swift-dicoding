//
//  main.swift
//  ControlFlow
//
//  Created by Taliya Meyswara on 15/03/24.
//

import Foundation

print("--------------------------------------")
print("Perulangan For In")
print("--------------------------------------")

// Array
let names = ["Fajar", "Dimas", "Robi"]

for (index, name) in names.enumerated(){
    print("\(index+1). Hello \(name)")
}

print("--------------------------------------")

// Dictionary
let numberOfLegs = ["Laba-laba":8, "Semut":6, "Kucing":4, "Ayam":2]

for(animalName, legCount) in numberOfLegs{
    print("\(animalName) memiliki kaki \(legCount)")
}

print("--------------------------------------")
// rentang angka
for index in 1...3{
    print("\(index) x 5 = \(index*5)")
}

print("--------------------------------------")
// jika tidak memerlukan nilai dalam urutan
let base = 3
let power = 10
var answer = 1
//  Mengalikan 1 dengan 3 selama 10 kali.
for _ in 1...power {
   answer *= base
}
print("Hasil akhrinya adalah \(answer).")

print("--------------------------------------")
let minutes = 60
let minuteInterval = 20
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print("V")
    // Menggambar tanda centang setiap 20 menit sekali (0, 20, 40).
}

print("\n--------------------------------------")
print("Perulangan While")
print("--------------------------------------")
// ular tangga
let finalSquare = 25 // Total kotak
var board = [Int](repeating: 0, count: finalSquare + 1) // Membuat papan permainan
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02 // Tangga
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08 // Ular
print("Nilai board saat ini: \(board)")

var square = 0 // Penampung kotak
var diceRoll = 0 // Penampung dadu

while square < finalSquare {
   // Mengocok Dadu
   diceRoll += 1
   // Jika dadu sama dengan 7, maka otomatis akan berubah menjadi 1 kembali
   if diceRoll == 7 { diceRoll = 1 }
   // Menggeser karakter sesuai dengan dadu yang diperoleh
   square += diceRoll
   if square < board.count {
       // Jika masih berada dalam papan permainan,
       // maka pastikan apakah karater bertemu ular dan tangga, atau tidak.
       square += board[square]
   }
   print(square)
}

