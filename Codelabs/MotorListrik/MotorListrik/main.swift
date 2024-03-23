//
//  main.swift
//  MotorListrik
//
//  Created by Taliya Meyswara on 16/03/24.
//

import Foundation

/*
 ===================
 Mendapatkan Input
 ===================
 */

// Mendapatkan nilai string dari pengguna
func getInput(message: String) -> String? {
    print(message, terminator: ": ")
    return readLine()
}

// Mendapatkan nilai interger dari pengguna
func getInputInt(message: String) -> Int? {
    if let inputString = getInput(message: message){
        return Int(inputString)
    }else{
        return nil
    }
}

/*
 ===================
 Mengatur Kecepatan
 ===================
 */

var speedTotal = 0

// Closure untuk mendapatkan kecepatan
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    func incrementer() -> Int{
        speedTotal += amount
        return speedTotal
    }
    return incrementer
}

// Closure untuk mengurangi kecepatan
func makeDecrementer(forDecrement amount: Int) -> () -> Int {
    func decrementer() -> Int{
        speedTotal -= amount
        return speedTotal
    }
    return decrementer
}

// Menentukan nilai penambahan dan pengurangan
let incrementByTen = makeIncrementer(forIncrement: 10)
let decrementByTen = makeDecrementer(forDecrement: 10)


/*
 ===================
 Aksi
 ===================
 */

// Menyalakan mesin motor listrik
func turnOnEngine(){
    print("Hidupkan mesin....")
    print("Selamat datang di Motor Listrik")
    print("Brem brem brem")
}

// Mematikan mesin motor listrik
func turnOffEngine(){
    print("Citttttttttt.....")
    print("Motor berhenti!!")
}

// Menampilan kecepatan saat ini
func showSpeed(){
    print("Kecepatan saat ini : \(speedTotal)")
    print("Ngeeeenggg")
}

// Memberikan aksi ke motor listrik
func action(){
    print("----------------------------------")
    print("Ayo beraksi: ")
    print("[1] Tambahkan kecepatan")
    print("[2] Kurangi kecepatan")
    print("[3] Matikan mesin")
    
    if let state = getInputInt(message: "Masukkan aksi anda"){
        switch state {
        case 1:
            speedTotal = incrementByTen()
            showSpeed()
            action()
        case 2:
            if speedTotal > 0{
                speedTotal = decrementByTen()
                showSpeed()
                action()
            }else{
                turnOffEngine()
                break
            }
        case 3:
            turnOffEngine()
            break
        default:
            break
        }
    } else {
      print("Input tidak valid")
    }
}

// Memulai Program
turnOnEngine()
action()
