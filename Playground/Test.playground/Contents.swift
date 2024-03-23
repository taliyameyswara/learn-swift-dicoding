// let berfungsi sebagai constanta atau immutable sehingga hanya bisa diinisialisasi sekali saja, berbeda dengan var yang bersifat mutable sehingga dapat diubah - ubah.

var greeting = "Hello"
greeting = "Friend"

print("Value greeting = \(greeting)")

// items
print(1,2,3,4,5)

// separator -> pemisah item yg dicetak
print(1,2,3,4,5, separator: "..x..")

// terminator -> mencetak nilai akhir dari sebuah item
for n in 1...5{
    print(n, terminator: " ")
}

// semicolon
var str = "belajar swift anjais"; print(str)

// -------------------------------
/* floating point
 double 15digs desimal
 float 6digs desimal
 */

let i = false
if i{
    print("mantaps")
}else{
    print("tdk mantaps")
}

// tupple -> menyimpan sekumpulan data
let umur = (20, "tahun")
print("Umur saya \(umur)")

// -------------------------------
// tuples comparison
let animalVsFruit = (1,"Zebra") < (2, "Apple")
print("Hasil : \(animalVsFruit)")
print("\"z\" tidak sama dengan \"a\"")


// close range operator
for index in 1...5{
    print("\(index) times 5 is \(index*5)")
}

// half open range (rentang yg berjalan dari a ke b)
//let names = ["Taliya", "Mario", "Leaf"]
//let count = names.count
//for i in 0..<count{
//    print("\(i+1). \(names[i]) ")
//}

let names = ["Dimas", "Gilang", "Widy", "Ahmad"]
for name in names[..<2] {
   print(name)
}
