import Cocoa

/* 
 ===========================================
                STRING LITERAL
 ===========================================
 */

// String Literal
let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""
print(singleLineString)
print(multilineString)

// Line Break \
let lineBreak = """

This string starts with a line break.
It also ends with a line break.

"""
print(lineBreak)

// Multiline string literal
let softWrappedQuotation = """
The White Rabbit put on his spectacles. "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
print(softWrappedQuotation)


// Character Literal
let char: Character = "A"
let anotherChar: Character = "B"

print("Nilai dari char adalah = \(char)")
print("Nilai dari char adalah = \(anotherChar)")

let catCharacters: [Character] = ["C", "a", "t", "!", "?", "?", "?", "?"]
let catString = String(catCharacters)
print(catString)

/*
 ===========================================
                EMPTY STRING
 ===========================================
 */

var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
// Kedua variabel di atas merupakan sebuah string kosong, dan setara satu sama lainnya

emptyString = "Dicoding Indonesia"
print(emptyString)

/*
 ===========================================
                STRING FUNCTION
 ===========================================
 */

// isEmpty
let tesString1 = ""
if tesString1.isEmpty{
    print("String kosong")
}

// String.index
let dicoding = "Dicoding Indonesia!"
// mengakses posisi sebuah karakter dalam string
print(dicoding[dicoding.startIndex])

// mendapatkan karakter terakhir dalam sebuah String.
print(dicoding[dicoding.index(before: dicoding.endIndex)])
print(dicoding[dicoding.index(after: dicoding.startIndex)])
print(dicoding[dicoding.index(dicoding.startIndex, offsetBy: 7)])

// Modifikasi string
var dicoding2 = "Dicoding Indonesia"

// menambahkan sebuah karakter tunggal ke dalam string pada posisi indeks tertentu
dicoding2.insert("!", at: dicoding2.endIndex)
print(dicoding2)

dicoding2.insert(contentsOf: " Mantab", at: dicoding2.index(before: dicoding2.endIndex))
print(dicoding2)
// dicoding sekarang sama dengan "Dicoding Indonesia Mantab!".
    
// menghapus sebuah single karakter dari sebuah string dengan indeks tertentu, gunakanlah metode remove(at: ).
dicoding2.remove(at: dicoding2.index(before: dicoding2.endIndex))
print(dicoding2)

// menghapus substring dengan jangkauan tertentu Anda dapat menggunakan metode removeSubrange(_: ).

let range = dicoding2.index(dicoding2.endIndex, offsetBy: -6)..<dicoding.endIndex
dicoding2.removeSubrange(range)
print(dicoding2)
// dicoding sekarang sama dengan "Dicoding Indonesia".


// Menggabungkan string dan character
var gabungString = "Halo semua"
let exclamationMark: Character = "!"
gabungString.append(exclamationMark)
print("Halo semua sekarang memiliki nilai \"\(gabungString)\".")

// Menghitung character
let hitungChar = "Dicoding Indonesia"
print("hitungChar mempunyai \(hitungChar.count) karakter.")


/*
 ===========================================
                    UNICODE
 ===========================================
 */

print("\u{61}")
print("\u{1F425}")

let eAcute: Character = "\u{E9}" // é
print("eAcute nilainya adalah \(eAcute)")

let combinedEAcute: Character = "\u{65}\u{301}" // e followed by
print("combinedEAcute berasal dari \u{65} dan  \u{301} sehingga nilainya menjadi \(combinedEAcute)")

let precomposed: Character = "\u{D55C}" // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"  // ᄒ, ᅡ, ᆫ
print("precomposed sama dengan \(precomposed), decomposed sama dengan \(decomposed)")

let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
print("regionalIndicatorForUS tidak akan muncul sebagai string \"US\", melainkan character dengan nilai bendera US \(regionalIndicatorForUS)")
