import UIKit

// Swift playground.
print("Hello World!")

// Variables
/// String, Bool, Float, Double, Int...
var str = "Hello, playground"
var str2: String = "Hello"

/// Constantes
let constant = 21
let const: Int = 12

/// Déclaration de plusieurs variables à la fois
var (age1, age2, age3) = (20, 17, 12)
print(age2)

var (w, x, y, z) = (true, "Hello", 3, 3.14)
print(w)
print(x)
print(y)
print(z)

/// Arrays
var list  = [1, 2, 3, 4, 5]

list[0]
list.append(3)
list.first
list.last
list.count
list.remove(at: 0)
list[0]
list.removeAll()

var listOfString = [String]()
listOfString.append("Hello")
listOfString.append("World")
listOfString.append("!")

listOfString[2] = ":)"

listOfString

/// Dictionnaries
var dico = ["blue":"water", "green":"grass"]

dico["blue"]

dico["yellow"] = "sun"

print(dico["blue"]!) /// on ajoute le "!" pour assurer à swift que cette variable existe

dico.removeValue(forKey: "yellow")

dico

// Arithmetics
var num1 = 4
var num2 = 3

num1 + num2
num1 - num2
num1 / num2
num1 *  num2
num1 % num2

num1 += 2
num1 -= 2

print("\n\n")

// Conditionnals
/// && ; and ; || ; or ; <= ; >= ; < ; > ; == ; !=
/// if statement
print("If statements")
if w == false {
    print("w is false")
} else if w {
    print("w is true")
} else {
    print("w isn't defined")
}

// Loops
/// for loops
print("For loops")
for i in 1...10 { /// swift est inclusif (1 et 10 compris)
    print(i)
}

for num in stride(from: 0, to: 50, by: 5) { /// de 0 à 50, 5 par 5
    print(num)
}

for negNum in stride(from: 50, to: 0, by: -5) { /// de 50 à 0, -5 par -5
    print(negNum)
}

/// arrays
print("With arrays")
for s in listOfString {
    print(s)
}

for (index,value) in listOfString.enumerated() {
    print(index)
    print(value)
}

/// Dictionnaries
print("With dictionnaries")
for item in dico {
    print(item.self)
    print(item.key)
}

/// while loops
print("While")
var counter = 0

while counter < 10 {
    print(counter)
    counter += 1
}

/// do while loops
print("Do..While")
var dCounter = 0

repeat {
    print(dCounter)
    dCounter += 1
} while dCounter < 10


/// switch case
print("Switch..Case")
var age = 19

switch age {
case 12:
    print("Your age : \(age) is 12")
case 15:
    print("Your age : \(age) is 15")
default:
    print("Your age : \(age)")
}

/// loop control
/// break
print("Break statement")
for i in 1...10 {
    print(i)
    if i == 5 {
        break
    }
}

print("Double loop :")
for i in 1...10 {
    print(i)
    for j in 1...3 {
        print(j)
        if j == 2 {
            break   /// break seulement la loop actuelle
        }
    }
}

/// continue
print("Continue statement")
for i in 1...10 {
    if i == 5 || i == 6  {
        continue
    }
    print(i)
}

// Functions
print("Functions")

func firstFunc() {
    print("first")
}

firstFunc()

func add(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

print(add(num1: 2, num2: 3))

// Structures
print("Structs")

struct userLocation {
    var name: String
    var latitude: Double
    var longitude: Double
}

var moi = userLocation(name: "Axel", latitude: 41.232324, longitude: 42.9893489)
moi.name
moi.latitude
moi.longitude

func getLocation(user: userLocation) -> String {
    return "x = \(user.latitude); y = \(user.longitude)"
}

print(getLocation(user: moi))

// Enums
print("Enums")

/// cas 1 basique
enum Direction {
    case North
    case East
    case South
    case West
}

var dir = Direction.North

switch dir {
case Direction.North:
    print("You are going North")
case .South:
    print("You are going South")
case .West:
    print("You are going West")
case .East:
    print("You are going East")
}

/// cas 2 mec chaud français
enum DirectionMCF:String {
    case North = "You are going North"
    case East = "You are going East"
    case South = "You are going South"
    case West = "You are going West"
}

var dirMCF = DirectionMCF.North
print(dirMCF.rawValue)

// Classes and objects
print("Classes & objects")

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func getInformations() {
        print("Your name is \(self.name) and you are \(age) years old")
    }
}

var person1 = Person(name: "Axel", age: 21)
person1.name
person1.age

person1.getInformations()
 
// Inheritance and overriding
print("Inheritance & overriding")

class Parent {
    func parentMethod() {
        print("This is a parent method")
    }
    
    func getName() {
        print("This is a parent")
    }
}

var p = Parent()
p.parentMethod()

class Child : Parent {
    func childMethod() {
        print("This is a child method")
    }
    
    override func getName() {
        print("This is a child")
    }
}

var c = Child()
c.parentMethod()
c.childMethod()

c.getName()
