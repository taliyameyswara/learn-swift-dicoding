//
//  main.swift
//  PenghitungNilai
//
//  Created by Taliya Meyswara on 15/03/24.
//

import Foundation

print("Selamat Datang di Program Penghitung Nilai")
print("----------------------------------")
print("Masukkan nilai yang akan dinilai", terminator: ": ");
let total = readLine() ?? ""
print("----------------------------------")

// Memastikan input adalah angka
if let totalItem: Int = Int(total){
    // Membuat array kosong untuk menyimpan nilai-nilai yang dimasukkan
    var allValues = [Int]()
    
    //     Input nilai setiap item
    for index in 1...totalItem{
        print("Masukkan item ke \(index)", terminator: ": ");
        let newItem = Int(readLine() ?? "") ?? 0
        
        // Menambahkan nilai baru ke dalam array 'allValues'
        allValues.append(newItem)
    }
    
    //    menjumlah semua nilai yang ada
    var sum: Int = 0
    for value in allValues{
        sum += value
    }
    
    //    mendapatkan rata-rata nilai
    let average = sum / totalItem
    var grade = ""
    
    //    mendapatkan grade dari rata-rata nilai
    switch average
    {
    case 0...40:
        grade = "E"
    case 41...50:
        grade = "D"
    case 51...60:
        grade = "C"
    case 61...70:
        grade = "C+"
    case 71...80:
        grade = "B"
    case 81...90:
        grade = "B+"
    case 91...100:
        grade = "A"
    default:
        grade = "Tidak Valid"
    }
    
    // Mencetak nilai akhir
    if grade != "Tidak Valid"{
        print("Anda mendapatkan grade \(grade) dari total nilai \(total)")
        print("Anda mendapatkan total nilai \(sum) dengan rata-rata \(average).")
    }else{
        print("Nilai tidak Valid")
    }
}else{
    print("Nilai tidak Valid")
}
