import Cocoa

var greeting = "Modul Operator"



// ===========================================
// Operator Aritmatika
// ===========================================
// Untuk angka
let addition = 1+2
print("1 + 2 = \(addition)")

let subtraction = 1-2
print("1 - 2 = \(subtraction)")

let multiplication = 3 * 4
print("3 * 4 = \(multiplication)")

let division = 12/2
print("12 / 2 = \(division)")

let remainder = 10 % 4
print("10 % 4 = \(remainder)")

// Untuk string
"Hello " + "World"
// ===========================================
// Operator Perbandingan
// ===========================================
let equalTo = 1 == 1
print("\(equalTo) karena 1 sama dengan 1")

let notEqualTo = 2 != 1
print("\(notEqualTo) karena 2 tidak sama dengan 1")

let greaterThan = 2 > 1
print("\(greaterThan) karena 2 lebih besar dari 1")

let lessThan = 1 < 2
print("\(lessThan) karena 1 lebih kecil dari 2")

let greaterThanOrEqualTo = 1 >= 1
print("\(greaterThanOrEqualTo) karena 1 lebih besar sama dengan 1")

let lessThanOrEqualTo = 1 <= 2
print("\(lessThanOrEqualTo) karena 1 lebih kecil sama dengan 2")

// Tuples Comparison
let animalVsFruit = (1, "zebra") < (2, "apple")
print("Hasil animalVsFruit adalah \(animalVsFruit) karena 1 lebih kecil dari pada 2. Sehingga persamaan item tuple ke dua, yakni \"z\" tidak sama dengan \"a\", diabaikan.")

let fruitVsAnimal = (3, "apple") < (3, "bird")
print("Hasil fruitVsAnimal adalah \(fruitVsAnimal) karena \"a\" kurang dari \"b\". Untuk persamaan 3 sama dengan 3 diabaikan karena nilainya sama.")

let animalVsAnimal = (4, "dog") == (4, "dog")
print("Hasil animalVsAnimal adalah \(animalVsAnimal) karena ke dua persamaan bernilai sama.")


// ===========================================
// Operator Logika
// ===========================================
let allowedEntry = false
if !allowedEntry {
   print("ACCESS DENIED")
}

// AND (&&)
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
   print("Welcome!")
} else {
   print("ACCESS DENIED")
}

// OR (||)
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
   print("Welcome!")
} else {
   print("ACCESS DENIED")
}

// ===========================================
// Operator Bitwise
// ===========================================

//NOT (~)
let initialBits: UInt8 = 0b00001111
let invertedBits = ~initialBits
print("Nilai invertedBits adalah \(invertedBits) atau \(String(invertedBits, radix: 2))")

// AND (&)
let firstSixBits: UInt8 = 0b11111100
let lastSixBits: UInt8  = 0b00111111
let middleFourBits = firstSixBits & lastSixBits
print("Nilai middleFourBits adalah \(middleFourBits) atau \(String(middleFourBits, radix: 2))")

// OR(|)
let someBits: UInt8 = 0b10110010
let moreBits: UInt8 = 0b01011110
let combinedbits = someBits | moreBits
print("Nilai combinedbits adalah \(combinedbits) atau \(String(combinedbits, radix: 2))")

// XOR (^)
let firstBits: UInt8 = 0b00010100
let otherBits: UInt8 = 0b00000101
let outputBits = firstBits ^ otherBits
print("Nilai outputBits adalah \(outputBits) atau \(String(outputBits, radix: 2))")

// Shifting Bitwise
let shiftBits: UInt8 = 0b00000100
print("Bit awal \(String(shiftBits, radix: 2)) bernilai \(shiftBits)")

let shift1 = shiftBits << 1
print("Operasi \(String(shiftBits, radix: 2)) bergerser ke kiri 1 kali, bernilai \(shift1) atau \(String(shift1, radix: 2))")

let shift2 = shiftBits << 2
print("Operasi \(String(shiftBits, radix: 2)) bergerser ke kiri 2 kali, bernilai \(shift2) atau \(String(shift2, radix: 2))")

let shift3 = shiftBits << 4
print("Operasi \(String(shiftBits, radix: 2)) bergerser ke kiri 4 kali, bernilai \(shift3) atau \(String(shift3, radix: 2))")

let shift4 = shiftBits << 5
print("Operasi \(String(shiftBits, radix: 2)) bergerser ke kiri 5 kali, bernilai \(shift4) atau \(String(shift4, radix: 2))")

let shift5 = shiftBits >> 2
print("Operasi \(String(shiftBits, radix: 2)) bergerser ke kanan 2 kali, bernilai \(shift5) atau \(String(shift5, radix: 2))")

// Encode Decode
let pink: UInt32 = 0xCC6699

let redComponent = (pink & 0xFF0000) >> 16
print("redComponent bernilai \(String(redComponent, radix: 16)) atau \(redComponent).")

let greenComponent = (pink & 0x00FF00) >> 8
print("greenComponent bernilai \(String(greenComponent, radix: 16)) atau \(greenComponent).")

let blueComponent = pink & 0x0000FF
print("blueComponent bernilai \(String(blueComponent, radix: 16)) atau \(blueComponent).")


// ===========================================
// Operator Jarak
// ===========================================

// Closed Range Operator (a...b)
for index in 1...5 {
   print("\(index) times 5 is \(index * 5)")
}

// Half-Open Range Operator (a..<b)
let names = ["Taliya", "Mario", "Isna"]
let count = names.count
print("Anggota Tim:")
// hanya menghitung sejauh 3 (indeks item terakhir dalam array).
for i in 0..<count {
   print("\(i + 1). \(names[i]) ")
}

// One-Side Range Operator (a...)
let names2 = ["Dimas", "Gilang", "Widy", "Ahmad"]
//rentang yang berjalan dari a hingga akhir elemen.
for name in names2[2...] {
   print(name)
}
print("----------------------------------------")
// rentang mulai dari awal hingga a.
for name in names2[...2] {
   print(name)
}


// ===========================================
// Operator Misc
// jangkauan/range(...), positif(+), negatif(-), dan kondisional (? :).
// ===========================================

// Operator Minus Unary
let three = 3
let minusThree = -three
print("minusThree memiliki nilai \(minusThree)")
let plusThree = -minusThree   //
print("plusThree memiliki nilai \(plusThree), atau \"minus minus three\"")

// Operator Plus Unary
let minusSix = -6
let alsoMinusSix = +minusSix
print("alsoMinusSix memiliki nilai \(alsoMinusSix)")

// Ternary Conditional Operator
// pertanyaan ?  jawaban 1 : jawaban 2
let contentHeight = 40
let hasHeader = true
let rowheight = contentHeight + (hasHeader ? 50 : 0)
print("rowHeight = \(rowheight)")

// ===========================================
// Operator Nil-Coalescing
// ===========================================
/*
 a != nil ? a! : b
 ketika nilai a tidak sama dengan nil, maka nilai yang dikembalikan adalah a. Sedangkan ketika nilai a sama dengan nil, maka akan mengembalikan nilai b.
 */

let defaultColorName = "red"
var userDefinedColorName: String?   // defaultnya nil
var colorNameToUse = userDefinedColorName ?? defaultColorName
print ("colorNameToUse memiliki nilai dari defaultColorName yakni \"\(colorNameToUse)\" karena userDefinedColorName bernilai nil.")
