//: Playground - noun: a place where people can play

let languageName : String = "Swift"
var version: Float = 4.0
var version2 = 4.0
let introductionYear: Int = 2014
let isAwesome : Bool = true

let char : Character = "s"

version = Float(version2)

let nom = "Ludovic"
let age = 31

//string interpolation
let resultat = nom + " est agé de \(age) ans"
let resultat2 = nom + "est agé de" + String(age) + "ans"

resultat.isEmpty
resultat.hasPrefix("ludovic")

let elTigre = "🐅";
let brocoli = "🥦";

var phrase = "\(elTigre) mange des"
phrase.append(brocoli)
//: # Classe et Structures

class Animal {
    
    var numberOfPaws = 4;
    let numberOfHeads = 1;
    var name = "Cat"
    var isSoooooCute = true
    
}

struct Vehicule{
    var numberOfWheels = 4
    let plate = "BR-458-HG"
}

let myCat = Animal()
myCat.name = "Félix"

let myCat2 = myCat
myCat2.name = "Tom"

let myCar = Vehicule(numberOfWheels: 3)


var myCar2 = myCar
myCar2.numberOfWheels = 4

class Bird : Animal {
    
    var canfly = true
}

//: Fonctions et méthodes

// Sans paramètres, sans retours

func eat() {
    print("je mange")
}

eat()
eat()

// une fonction avec un retour
func sayHello() -> String {
    
    return "Hello"
}

let hello = sayHello()

func countCharacters(text: String) -> Int {
    let numberOfCharacters = text.count
    return numberOfCharacters
}

countCharacters(text: "Bonjour")

func sayHello(nom: String,prenom: String) -> String {
    let result = "Bonjour \(nom) \(prenom)"
    return result
}

sayHello(nom: "Torres", prenom: "Jean")

func eat(_ food: String, with friend: String){
    
    print("Je mange une \(food) avec \(friend)")
}

eat("Pizza", with: "Robert")

class Human {
    
    let name : String
    var age : Int
    
    var child : Human?
    
    init(name: String, age: Int = 0, child: Human?) {
        
        self.name = name
        self.age = age
        
        self.child = child
        
    }
    
    func childAge() -> Int? {
        if let age = child?.age {
            return age
        }else {
            return nil
        }
    }
    
}

let me = Human(name: "me", age: 800, child: nil);
let childName = me.child?.name

if let childName = me.child?.name {
    
    print(childName)
}
let childAge = me.childAge()?.description


let intString = "25"

if let intValue = Int(intString) {
    intValue / 2 // Attention Int / Int = à Int
}else {
    print("J'attend un nombre")
}

