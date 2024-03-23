import Cocoa

/*
 ===========================================
                    ARRAY
 ===========================================
 */

// Aray kosong
var someInts = [Int]()
print("someInts dengan tipe [Int] memiliki \(someInts.count) item.")

var aInts = [Int]()
aInts.append(3)
print("aInts sekarang mengandung sebuah nilai \(aInts) dengan tipe data Int.")

aInts = []
print("aInts sekarang menjadi sebuah array kosong, namun masih bertipe data Int.")

// Membuat Array dengan Nilai Default

var threeDoubles = Array(repeating: 0.1, count: 3)
print("threeDoubles memiliki tipe data [Double], dan sama dengan \(threeDoubles).")

// Membuat Array dengan Menambahkan Dua Array Sekaligus
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
print("anotherThreeDoubles bertipe [Double], dan sama dengan \(anotherThreeDoubles)")

var sixDoubles = threeDoubles + anotherThreeDoubles
print("sixDoubles akan disimpulkan bertipe [Double], dan sama dengan \(sixDoubles)")

// Array dengan Array Literal
var shoppingList: [String] = ["Eggs", "Milk"]
print("shoppingList diinisialisasi dengan dua item, \(shoppingList)")

// Mengakses dan Memodifikasi Array
// ---------------------------------

// Function isEmpty
if shoppingList.isEmpty {
   print("The shopping list is empty.")
} else {
   print("The shopping list is not empty.")
}

// Function append
shoppingList.append("Flour")
print("Saat ini shoppingList berisi \(shoppingList.count) item, dan seseorang akan membuat pancake")

// Operator +=
shoppingList += ["Baking Powder"]
print("Sekarang shoppingList berisi \(shoppingList.count) item")

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
print("Sekarang shoppingList berisi \(shoppingList.count) item")

// Accessing Value
var firstItem = shoppingList[0]
print("firstItem sama dengan \(firstItem)")

// Modifying Value
shoppingList[0] = "Six eggs"
print("Saat ini item pertama dari list shoppingList sama dengan \"\(shoppingList[0])\" bukan \"Eggs\".")


shoppingList[4...6] = ["Bananas", "Apples"]
print("shoppingList sekarang memiliki \(shoppingList) items.")

// Function insert
shoppingList.insert("Maple Syrup", at: 0)
print("Saat ini array shoppingList berisi \(shoppingList.count) items. \"Maple Syrup\" akan menjadi item pertama dalam array.")

// Function remove
let mapleSyrup = shoppingList.remove(at: 0)
print("Sekarang shoppingList berisi \(shoppingList) item, dan tidak ada \(mapleSyrup).")

//Function removeLast()
let apples = shoppingList.removeLast()
print("Sekarang shoppingList berisi \(shoppingList) items, dan tidak ada \(apples) di dalamnya.")

for item in shoppingList {
   print(item)
}

// jika mmebutuhkan index
for (index, value) in shoppingList.enumerated() {
   print("Item \(index + 1): \(value)")
}

/*
 ===========================================
                    SET
 ===========================================
 */

// Function Insert
var letters = Set<Character>()
letters.insert("D")

// Function Count
var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
print("favoriteGenres dinisialisasi dengan \(favoriteGenres.count) item String.")

// Function isEmpty
if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}

// Function contains
if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}

for genre in favoriteGenres {
   print("\(genre)")
}

// Function Sorted
for genre in favoriteGenres.sorted() {
   print("\(genre)")
}

/*
 ===========================================
        Performing Set Operations
 ===========================================
 */
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8, 1]

// Union
print("Union: \(oddDigits.union(evenDigits).sorted())" )

// Intersection
print("Intersection: \(oddDigits.intersection(evenDigits))")

// Substracting
print("Substracting: \(oddDigits.subtracting(evenDigits))")

// Symmetric Difference
print("Symmetric Difference: \(oddDigits.symmetricDifference(evenDigits))")


// Set Membership and Equality
let houseAnimals: Set = ["dogs", "cat"]
let farmAnimals: Set = ["cows", "chicken", "goat", "dogs", "cat"]
let cityAnimals: Set = ["bird", "mouse"]

print("houseAnimals: \(houseAnimals.isSubset(of: farmAnimals))")
print("farmAnimals: \(farmAnimals.isSuperset(of: houseAnimals))")
print("farmAnimals: \(farmAnimals.isDisjoint(with: cityAnimals))")


/*
 ===========================================
                Dictionary
 ===========================================
 */
// memiliki tipedata string dan kunci unik interger
var namesOfIntegers = [Int: String]()
print("namesOfIntegers adalah dictionary kosong [Int: String]")

// dictionary dengan dictionary literal
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

//function
// count
print("Dictionary airports berisi \(airports.count) item.")
// isEmpty
if airports.isEmpty {
    print("Dictionary airports kosong.")
} else {
    print("Dictionary airports memiliki nilai.")
}
//Subscript Syntax
airports["LHR"] = "London"
print("Sekarang dictionary airports berisi \(airports.count) items.")
//
if let londonAirport = airports["LHR"] {
    print("Nilai dari \"LHR\" akan berubah menjadi \"\(londonAirport)\".")
}


// updateValue
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
     print("Nilai lama DUB adalah \(oldValue).")
}
