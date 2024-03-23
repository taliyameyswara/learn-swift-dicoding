//
//  main.swift
//  MenuMakanan
//
//  Created by Taliya Meyswara on 16/03/24.
//

import Foundation

// Mendapatkan input dari pengguna
func getInput(message: String) -> String? {
    print(message, terminator: ": ")
    return readLine()
}

// Mendapatkan input dari pengguna dengan tipe data interger
func getInputInt(message: String) -> Int? {
    if let inputString = getInput(message: message){
        return Int(inputString)
    } else {
        return nil
    }
}

// Enumeration Makanan Berat
enum HeavyMeal: Int, CaseIterable{
    case nasiGoreng = 1, mieInstan, magelangan, nasiKuning, kwetiaw, nasiPutih
}

// Enumeration Makanan Ringan
enum SideDish: Int, CaseIterable {
    case ikan = 1, telur, tempe, tahu, kerupuk
}

// Enumeration Minuman
enum Drinks: Int, CaseIterable{
    case esTeh = 1, esJeruk, kopi, airPutih
}

// Menampilkan semua makanan
func showAllHeavyMeal(){
    print("Makanan Berat")
    for heavyMeal in HeavyMeal.allCases {
        print("[\(heavyMeal.rawValue)] \(heavyMeal)")
    }
}

// Menampilkan semua makanan ringan
func showAllSideDish(){
    print("Lauk")
    for sideDish in SideDish.allCases {
        print("[\(sideDish.rawValue)] \(sideDish)")
    }
}

// Menampilkan semua minuman
func showAllDrink(){
    print("Minuman")
    for drink in Drinks.allCases{
        print("[\(drink.rawValue)] \(drink)")
    }
}

// Mendapatkan item sesuai dengan item dalamkeals enumeration
var total = 0
var item = ("", "", "")

// Memasukan makanan
func inputHeavyMeal(){
    if let position = getInputInt(message: "Pilih makanan"){
        if let heavyMeal = HeavyMeal(rawValue: position){
            switch heavyMeal{
            case .mieInstan:
                total += 6000
                item.0 = "Mie Instan"
            case .nasiGoreng:
                total += 9000
                item.0 = "Nasi Goreng"
            case .magelangan:
                total += 7000
                item.0 = "Magelangan"
            case .nasiKuning:
                total += 5000
                item.0 = "Nasi Kuning"
            case .kwetiaw:
                total += 10000
                item.0 = "Kwetiaw"
            case .nasiPutih:
                total += 3000
                item.0 = "Nasi Putih"
            }
        }else{
            print("Posisi \(position) tidak ditemukan")
        }
    }else{
        print("Input tidak valid")
    }
        
}

func inputSideDish(){
    if let position = getInputInt(message: "Pilih lauk"){
        if let sideDish = SideDish(rawValue: position){
            switch sideDish{
            case .ikan:
                total += 5000
                item.1 = "Ikan"
            case .telur:
                total += 3000
                item.1 = "Telur"
            case .tempe:
                total += 1000
                item.1 = "Tempe"
            case .tahu:
                total += 1000
                item.1 = "Tahu"
            case .kerupuk:
                total += 500
                item.1 = "Kerupuk"
            }
        }else {
            print("Posisi \(position) tidak ditemukan")
        }
    }else{
        print("Input tidak valid")
    }
}

func inputDrinks(){
    if let position = getInputInt(message: "Pilihlah Minuman"){
        if let drink = Drinks(rawValue: position) {
            switch drink {
            case .airPutih:
                total += 0
                item.2 = "Air Putih"
            case .esJeruk:
                total += 2500
                item.2 = "Es Jeruk"
            case .esTeh:
                total += 2000
                item.2 = "Es Teh"
            case .kopi:
                total += 3000
                item.2 = "Kopi"
            }
        } else {
            print("Posisi \(position) tidak ditemukan")
        }
    }else{
        print("Input tidak valid")
    }
}

func menu(){
    print("Selamat datang di Rumah Makan Dicoding")
    print("--------------------------------------")
    showAllHeavyMeal()
    inputHeavyMeal()
    print("--------------------------------------")
    showAllSideDish()
    inputSideDish()
    print("--------------------------------------")
    showAllDrink()
    inputDrinks()
    print("--------------------------------------")
    print("Anda memilih \(item.0), \(item.1), dan \(item.2) dengan total harga Rp. \(total)")
    print("--------------------------------------")
    print("Terima kasih, selamat datang kembali!")
}


menu()
