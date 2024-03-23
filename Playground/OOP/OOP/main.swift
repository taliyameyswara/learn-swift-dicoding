//
//  main.swift
//  OOP
//
//  Created by Taliya Meyswara on 16/03/24.
//

import Foundation

// Structure vs Class

struct Resolution{
    var width = 0
    var height = 0
}

class VideoMode{
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

// Mengakses propserti
let someVideoMode = VideoMode()
print("The width of someVideoMode is \(someVideoMode.resolution.width)")

let vga = Resolution(width: 440, height: 200)
print(vga)

print("---------------------")

// ======================
// Properties
// ======================

// Stored Properties

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
print("Jangkauan tersebut memiliki nilai \(rangeOfThreeItems)")

rangeOfThreeItems.firstValue = 6
print("Jangkauan tersebut memiliki nilai \(rangeOfThreeItems)")
print("---------------------")

// Lazy Stored Properties -> properti yang nilai awalnya di-instance hingga properti tersebut diakses pertama kali.

// Class untuk mengimport data dari berkas eksternal
class DataImporter {
    var filename = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some data")
print(manager.importer.filename)
print("---------------------")

// Computer Properties
/**
 Daripada menyimpan sebuah nilai, computed properties menyediakan getter dan opsional setter untuk memanipulas properti serta nilai lainnya.
 */
struct Point {
    var x = 0.0, y = 0.0
    func isToTheRightOf(x: Double) -> Bool {
        return self.x > x
    }
}

// menetapkan getter dan setter khusus variabel yang dia hitung yaitu center
struct Shape {
    var origin = Point()
    var center: Point{
        get{
            return Point(x: origin.x/2, y: origin.y/2)
        }set(newCenter){
            origin.x = newCenter.x / 2
            origin.y = newCenter.y / 2
        }
    }
}

var tesShape = Shape()
tesShape.origin.x = 4.0
tesShape.origin.y = 8.0
print(tesShape.center)

print("---------------------")

struct Balok {
    var p = 0.0, l = 0.0, t = 0.0
    var vol: Double{
        return p*l*t
    }
}

let balok1 = Balok(p: 4.0, l: 5.0, t: 2.0)
print("Volume balok : \(balok1.vol)")

print("---------------------")

// Property Observers -> berfungsi untuk mendeteksi dan merespons perubahan dalam nilai properti.
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newSteps) {
            print("About to set totalSteps to \(newSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()

stepCounter.totalSteps = 50
stepCounter.totalSteps = 150
stepCounter.totalSteps = 420

print("---------------------")

// Global dan Local Variables
/**
 Local -> Jika membutuhkan sebuah variabel di dalam function, method, atau closure context,
 Global -> Variabel yang dapat diakses di banyak tempat,

 Type Properties
 mendefinisikan nilai-nilai yang sifatnya universal untuk semua instance dari tipe data tertentu.
 
 */


// Method -> Instance method merupakan function yang dimiliki oleh instance dari class, structure, atau enumeration tertentu.
class Counter {
    var count = 0
    func increment(){
        count += 1
    }
    
    func incrementBy(amount: Int){
        count += amount
    }
    
    func reset(){
        count = 0
    }
}

let counter = Counter()
counter.increment()
counter.incrementBy(amount: 5)
counter.reset()

// Self -> untuk membedakan antara nama parameter dan nama properti.
let somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOf(x: 1.0){
    print("This point is to the right of the line where x == 1.0")
}

print("---------------------")

// Modifying Value Types ->  Kata kunci yang mutating ditambahkan ke definisi method sehingga ia dapat memodifikasi propertinya.

struct Koordinat {
    var x = 0.0, y = 0.0
    
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

var exKoordinat = Koordinat(x: 1.0, y: 1.0)
exKoordinat.moveBy(x: 2.0, y: 3.0)

// ======================
// Subscript
// ======================

// Subcript merupakan jalan pintas untuk mengakses elemen anggota collection, list, atau urutan.

struct TimesTable{
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimeTable = TimesTable(multiplier: 3)
print("6 kali 3 = \(threeTimeTable[6])")

print("---------------------")

var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
numberOfLegs["bird"] = 2
print("Menampilkan numberOfLegs \(numberOfLegs)")

// ======================
// Inheritance
// ======================

//  class dapat mewarisi atau inherit method, property, dan karakteristik lainnya dari class lain.

class Vehicle {
    var currentSpeed = 0.0
    var description: String{
        return ("\(currentSpeed) miles per hour")
    }
    
    func makeNoise(){
//        do nothing
    }
}

class Tandem: Bicycle {
   var currentNumberOfPassengers = 0
}


//untuk menunjukkan bahwa subclass memiliki superclass,
class Bicycle: Vehicle{
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")


let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.description)") // (readonly)

// Overriding -> menyediakan implementasi khusus dari instance method, type method, instance property, type property, atau subscript yang akan diwarisi dari superclass.

class Train: Vehicle {
   override func makeNoise() {
       print("Choo Choo")
   }
}

let train = Train()
train.makeNoise()

class Car: Vehicle{
    var gear = 1
    override var description: String{
//        mengembalikan property description class Vehicle
        return super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")

print("---------------------")

// ======================
// Initialization
// ======================

// proses mempersiapkan instance class, structure, atau enumeration untuk digunakan.

struct Farenheit {
    var temperature: Double
    init(){
        temperature = 32.0
    }
}

struct Celcius {
    var temperatureCelcius : Double
    
    init(fromFarenheit farenheit: Double) {
        temperatureCelcius = (farenheit-32.0)
    }
    
    init(fromKelvin kelvin: Double){
        temperatureCelcius = kelvin - 273.15
    }
}

var f = Farenheit()
print("The default temperature is \(f.temperature)° Fahrenheit")

let mendidih = Celcius(fromFarenheit: 212.0)
print("Mendidih kalo celcius : \(mendidih.temperatureCelcius)")

let membeku = Celcius(fromKelvin: 273.15)
print("Membeku kalo celcius : \(membeku.temperatureCelcius)")


class Size {
    var width: Double, height: Double
    init(w: Double, h: Double) {
        width = w
        height = h
    }
}

let dua = Size(w: 2.0, h: 2.0)

print("---------------------")

// ======================
// Deinitialization
// ======================
// Deinitializer dipanggil segera sebelum instance class dibersihkan dari memory atau deallocation. class hanya mempunyai maksimal satu deinitializer per class-nya.

var exCounter = 3;

class baseClass {
    init(){
        exCounter+=1
    }
    deinit{
        exCounter-=1
    }
}

var exBase: baseClass? = baseClass()
print(exCounter)

exBase = nil
print(exCounter)

print("---------------------")

// ======================
// Protocol
// ======================
// dijelaskan sebagai kerangka method atau properti alih-alih implementasi.
// Protocol digunakan untuk menentukan properti tipe data atau instance dari sebuah class tertentu

protocol SomeProtocol {
    var mustBeSettable: Int { get set}
    var doesntNeedToBeSettable: Int {get}
}

protocol anotherProtocol {
//     Selalu awali property requirements dengan kata kunci static saat Anda mendefinisikannya dalam protocol.
    static var SomeTypeProperty: Int {get set}
}

protocol FullyNamed {
   var fullName: String { get }
}

struct Person: FullyNamed {
   var fullName: String
}

let john = Person(fullName: "John Appleseed")

// ======================
// Extension
// ======================

/**
 Anda bisa menambahkan fungsionalitas baru ke kelas, struktur, enumerasi, atau tipe protokol yang ada dengan extension.
 */

// Computed Properties

extension Double{
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0}
    var mm: Double { return self / 1_000.0}
    var ft: Double { return self / 3.28084}
}

let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")

let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
print("---------------------")

// Initializer

struct Size1 {
   var width = 0.0, height = 0.0
}

struct Point1 {
   var x = 0.0, y = 0.0
}

struct Rect1 {
    var origin = Point1()
    var size = Size1()
}

let defaultRect = Rect1()
let memberwiseRect = Rect1(origin: Point1(x: 2.0, y: 2.0), size: Size1(width: 5.0, height: 5.0))

extension Rect1 {
    init(center: Point1, size: Size1){
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point1(x: originX, y: originY), size: size)
    }
}

let centerRect = Rect1(center: Point1(x: 4.0, y: 4.0), size: Size1(width: 3.0, height: 3.0))
print("centerRect\'s origin is (\(centerRect.origin)) and its size is (\(centerRect.size))")

print("---------------------")

// Methods
extension Int {
   func repetitions(task: () -> Void) {
       for _ in 0..<self {
           task()
       }
   }
}

4.repetitions {
   print("Hello!")
}

print("---------------------")

// Mutating Instance Methods
extension Int {
   mutating func square() {
       self = self * self
   }
}

var someInt = 3
someInt.square()
print("someInt is now \(someInt)")
print("---------------------")

// Subscripts
extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }
}

print(746381295[0])
print(746381295[1])
print(746381295[2])
print(746381295[8])
print("---------------------")


// ======================
// Generic
// ======================
//Kode generik memungkinkan Anda untuk menulis function dan tipe data menjadi lebih fleksibel, serta dapat digunakan kembali

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
   let temporaryA = a
   a = b
   b = temporaryA
}

var angka = 4
var angka2 = 157

swapTwoInts(&angka, &angka2)
print("angka is now \(angka), and angka2 is now \(angka2).")

// Generic Functions

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
   let temporaryA = a
   a = b
   b = temporaryA
}

var angkaLagi = 12
var angkaLagi2 = 203
swapTwoValues(&angkaLagi, &angkaLagi2)
print("angkaLagi sekarang adalah \(angkaLagi), and angkaLagi2  sekarang adalah \(angkaLagi2)")

print("---------------------")

// Stack non-generik
struct IntStack{
    var items = [Int]()
    
    mutating func push(_ item: Int){
        items.append(item)
    }
    
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

// Stack generic
// <element> berarti menyimpan nilai apapun
struct Stack<Element>{
    //     untuk menyimpan elemen-elemen yang ada dalam stack.
    var items = [Element]()

    mutating func push(_ item: Element){
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
}


// stack baru bertipe data string
var dicodingAcademy = Stack<String>()
dicodingAcademy.push("Memulai Pemrograman dengan Kotlin")
dicodingAcademy.push("Menjadi Android Developer Expert ")
dicodingAcademy.push("Belajar Android untuk Pemula")
dicodingAcademy.push("Memulai Pemrograman Dengan Swift")

let deleteLast = dicodingAcademy.pop()

for item in dicodingAcademy.items{
    print(item)
}
print("---------------------")

// Extending a Genereci Type

/**
 memperluas type generic stack untuk menambahkan read-only computed property bernama topItem. Fungsinya mengembalikan item teratas pada stack tanpa muncul dari stack:
 */

// menambah fungsi di tipe data stack
extension Stack{
//
    var topItem: Element? {
//         jika items kosong maka top item akan return nil, jk tdk top item return elemen teratas dari stack
        return items.isEmpty ? nil : items[items.count - 1]
    }
}

if let topItem = dicodingAcademy.topItem {
   print("The top item on the stack is \(topItem).")
}




