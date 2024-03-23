import Cocoa

print("Enumeration")


/**
 Enumeration  mendefinisikan tipe data umum untuk sekelompok nilai terkait dan memungkinkan Anda bekerja dengan nilai-nilai itu secara aman
 
 enum : kata kunci yang digunakan untuk enumeration
 CompassPoint : nama dari kelas enumeration
 case : kata kunci untuk memperkenalkan case enumeration bari
 north, south, east, west : nilai2 yang didefinisikan dalam enumerasi
 */

enum CompassPoint: String {
    case north
    case south
    case east
    case west
}

enum Planet: CaseIterable {
    case mercury, venus, earth, mars, jupiter
}

var directionToHead = CompassPoint.west

directionToHead = .south

// Memastikan nilai dengan switch
switch directionToHead{
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where thr skies are blue")
}

// ============================

let anyPlanet = Planet.earth
switch anyPlanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not as safe place for humans")
}

// Iterating over Enumeration Cases
// allCases -> mendapatkan semua data dari case dalam enumeration

let choices = Planet.allCases.count
print("\(choices) planet")


// ============================

// Associated Value
enum Barcode {
   case upc(Int, Int, Int, Int)
   case qrCode(String)
}

// “Mendefinisikan tipe data enumerasi dengan nama Barcode yang mana dapat mengambil nilai upc dengan associated value (Int, Int, Int, Int) atau nilai qrCode dengan associated value string.”

var productBarcode = Barcode.upc(1, 24984, 13758, 9)
productBarcode = .qrCode("DICODING INDONESIA")

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
   print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
   print("QR code: \(productCode).")
}

// ============================

// enumeration dapat diisi dengan nilai default (disebut dengan raw values atau nilai mentah)

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

// Recursive Enumerition
indirect enum ArithmeticExpression{
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(five, four)

func evaluate(_ expression: ArithmeticExpression) -> Int{
    switch expression {
    case let .number(value):
        return value
    
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(product))
