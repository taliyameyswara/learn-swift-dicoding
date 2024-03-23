//
//  main.swift
//  ResepMakanan
//
//  Created by Taliya Meyswara on 15/03/24.
//

import Foundation

print("Selamat Datang di Program Membuat Makanan")
print("----------------------------------")
// Memasukan resep dan jumlah item dalam resep
print("Apa yang ingin anda buat" , terminator: ": ") ; let food = readLine() ?? ""
print("Masukkan jumlah bahan yang ingin anda buat", terminator: ": ") ;
let newItem = readLine() ?? "0"
print("----------------------------------")

// Mengonversi jumlah item yang harus dimasukkan
if let totalItem: Int = Int(newItem){
    
    // Array
    var recipe = [String]()
    
    
    for index in 1...totalItem {
        print("Masukkanlah bahan ke \(index)", terminator: ": "); let newItem = String(readLine() ?? "")
//         menggunakan fungsi append untuk memasukkan data ke array
        recipe.append(newItem)
      }
    
//    Memasukkan waktu yang dibutuhkan untuk membuat resep.
    print("Berapa lama proses yang dibutuhkan? " , terminator: ": ") ; let time = readLine() ?? ""
//    Mengurutkan item resep (dalam array)
    recipe.sort()
    
//    Menampilkan hasil resep
    print("Anda akan membuat \(food) selama \(time) menit dengan resep: ")
    
//    enumerated untuk mengambil urutan(index)
    for (index, value) in recipe.enumerated() {
        print("\(index + 1). \(value)")
      }
    
}else{
    // MARK: Menampilkan Error ketika input tidak valid.
     print("Input tidak valid!")
}


