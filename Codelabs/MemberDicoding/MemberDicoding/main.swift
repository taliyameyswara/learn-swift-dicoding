//
//  main.swift
//  MemberDicoding
//
//  Created by Taliya Meyswara on 17/03/24.
//

import Foundation

// Mendapatkan input dari pengguna
func getInputString(message: String) -> String {
    print(message, terminator: " : ")
    return readLine() ?? ""
}

// Mendapatkan input interger
func getInputInt(message: String) -> Int {
    return Int(getInputString(message: message)) ?? 0
}

// Membuat Protocol
protocol PersonProtocol{
//     ketika protocol ini diimplementasikan ke dalam sebuah class, maka class tersebut harus terdapat 4 indikator ini.
    var firstName: String {set get}
    var lastName: String {set get}
    var adress: String {set get}
    func fullName() -> String
}

// Mengimplementaskan Person Protocol ke Class Person
class Person: PersonProtocol {
    var firstName: String
    var lastName: String
    var adress: String
//     Ketika melakukan initialization Anda wajib memasukkan tiga parameter tersebut. 
    init(firstName: String, lastName: String, adress: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.adress = adress
    }
    
    func fullName() -> String {
        var parts: [String] = []
        parts += [firstName]
        parts += [lastName]
        return parts.joined(separator: " ")
    }
}

// Protocol Student
protocol StudentProtocol{
    var school : String {set get}
    func getInformation() -> String
}

// Implementasi StudentProtocol dan Person ke kelas Student
// Person merupakan superclass dari student.
class Student: Person, StudentProtocol {
    var school: String = ""
    
    func getInformation() -> String {
        return ("Perkenalkan nama saya \(fullName()), saya sekolah di \(school)")
    }
}

print("Selamat datang di aplikasi Dicoding Member!")
print("--------------------------------------")

// Mendapatkan input dari pengguna
let firstName = getInputString(message: "Masukkan nama depan kamu")
let lastName = getInputString(message: "Masukkan nama belakang kamu")
let adress = getInputString(message: "Masukkan alamat kamu")
let school = getInputString(message: "Masukkan nama sekolah kamu")

// Menginisialisasi kelas Student
let member = Student(firstName: firstName, lastName: lastName, adress: adress)
member.school = school

print("--------------------------------------")

// Mendapatkan detail informasi siswa
print(member.getInformation())
print("--------------------------------------")
print("Terimakasih! Selamat datang kembali")
