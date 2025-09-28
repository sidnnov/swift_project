//: [Previous](@previous)

import Foundation

//: [Next](@next)
//# Домашнее задание #3
//
//## Классы (Class)
//
//- *Задачки*

//  1. Создайте класс `Person`, содержащий свойства `name` (имя) и `age` (возраст).
class Person {
    let name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
//  2. Объявите класс `Car`, содержащий свойства `brand` (марка) и `model` (модель).
class Car2 {
    let brand: String
    let model: String
    
    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }
}
//  3. Определите класс `Circle`, содержащий свойство `radius` (радиус). Напишите метод, который возвращает площадь круга.
class Circle {
    let radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return Double.pi * (radius * radius)
    }
}
//  4. Создайте класс `Book`, содержащий свойства `title` (название) и `author` (автор).
class Book {
    let title: String
    let author: String
    
    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
}
//  5. Объявите класс `Rectangle`, содержащий свойства `width` (ширина) и `height` (высота). Напишите метод, который возвращает площадь прямоугольника.
//см. задание 10
//  6. Создайте класс `Animal`, содержащий свойство `name` (имя). Напишите метод, который выводит звук, который издает животное.
class Animal {
    let name: String
    let sound: String
    
    init(name: String, sound: String) {
        self.name = name
        self.sound = sound
    }
    
    func makeSound() {
        print("Животное по имени \(name) издает звук: \(sound)")
    }
}
//  7. Определите класс `BankAccount`, содержащий свойства `balance` (баланс) и `owner` (владелец).
class BankAccount7 {
    var balance: Double
    let owner: String
    
    init(balance: Double, owner: String) {
        self.balance = balance
        self.owner = owner
    }
}
//  8. Создайте класс `Song`, содержащий свойства `title` (название) и `artist` (исполнитель).
class Song {
    let title: String
    let artist: String
    
    init(title: String, artist: String) {
        self.title = title
        self.artist = artist
    }
}
//  9. Объявите класс `Product`, содержащий свойства `name` (название) и `price` (цена).
class Product {
    let name: String
    var price: Double
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}
//  10. Создайте класс `Rectangle`, содержащий свойства `width` (ширина) и `height` (высота). Напишите метод, который определяет, является ли прямоугольник квадратом.
//см задание 16
//  11. Определите класс `Employee`, представляющий сотрудника с свойствами `name` (имя), `position` (должность) и `salary` (зарплата). Напишите метод, который увеличивает зарплату на определенный процент.
class Employee {
    let name: String
    var position: String
    var salary: Double
    
    init(name: String, position: String, salary: Double) {
        self.name = name
        self.position = position
        self.salary = salary
    }
    
    func increaseSelery(byPercent percent: Double) {
        salary += salary * (percent / 100.0)
    }
}
//  12. Создайте класс `Triangle`, содержащий свойства `sideA`, `sideB` и `sideC` (стороны треугольника). Напишите метод, который определяет, является ли треугольник прямоугольным.
class Triangle {
    let sideA: Double
    let sideB: Double
    let sideC: Double
    
    init(sideA: Double, sideB: Double, sideC: Double) {
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
    }
    
    func isRightTriangle() -> Bool {
        let sortedSide = [sideA, sideB, sideC].sorted()
        
        let a = sortedSide[0]
        let b = sortedSide[1]
        let c = sortedSide[2]
        
        return abs(c * c - (a * a + b * b)) < 0.0001
    }
}
//  13. Объявите класс `Bank`, представляющий банк с свойствами `name` (название) и `accounts` (счета). Напишите метод, который возвращает общую сумму денег на всех счетах.
class Bank {
    let name: String
    var accounts: [String: Double]
    
    init(name: String, accounts: [String : Double]) {
        self.name = name
        self.accounts = accounts
    }
    
    func getAmount() -> Double {
        return accounts.values.reduce(0.0, +)
    }
}
//  14. Создайте класс `Player`, содержащий свойства `name` (имя) и `score` (счет). Напишите метод, который увеличивает счет игрока на определенное количество очков.
class Player {
    let name: String
    var score: Int
    
    init(name: String, score: Int) {
        self.name = name
        self.score = score
    }
    
    func increaseScore(byPoint point: Int) {
        score += point
    }
}
//  15. Объявите класс `Time`, содержащий свойства `hour` (час), `minute` (минута) и `second` (секунда). Напишите метод, который прибавляет к текущему времени определенное количество секунд.
class Time {
    var hour: Int
    var minute: Int
    var second: Int
    
    init(hour: Int, minute: Int, second: Int) {
        self.hour = hour
        self.minute = minute
        self.second = second
    }
    
    func addSeconds(bySeconds secondToAdd: Int) {
        second += secondToAdd
        
        if second >= 60 {
            minute += second / 60
            second %= 60
        }
        
        if minute >= 60 {
            hour += minute / 60
            minute %= 60
        }
        
        if hour >= 24 {
            hour %= 24
        }
        
    }
}

let time = Time(hour: 10, minute: 30, second: 45)

time.addSeconds(bySeconds: 86400)
time.hour
time.minute
time.second
//  16. Создайте класс `Rectangle`, содержащий свойства `width` (ширина) и `height` (высота). Напишите метод, который возвращает периметр прямоугольника.
class Rectangle {
    let width: Double
    let height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func area() -> Double {
        return width * height
    }
    
    func isSquare() -> Bool {
        return width == height
    }
    
    func perimeter() -> Double {
        return (width + height) * 2
    }
}
//  17. Определите класс `Student`, содержащий свойства `name` (имя) и `grades` (оценки). Напишите метод, который возвращает средний балл студента.
class Student {
    let name: String
    var grades: [Int]
    
    init(name: String, grades: [Int]) {
        self.name = name
        self.grades = grades
    }
    
    func averageGrade() -> Double {
        guard !grades.isEmpty else {
            return 0.0
        }
        return Double(grades.reduce(0, +)) / Double(grades.count)
    }
}
//  18. Определите класс **`Stack`** для работы со стеком. Напишите методы для добавления элемента в стек, удаления элемента из стека и получения элемента на вершине стека без его удаления.
class Stack<Element> {
    var elements: [Element] = []
    
    func addElement(_ element: Element) {
        elements.append(element)
    }
    
    func getLastElement() -> Element? {
        return elements.last
    }
    
    func deleteElement() {
        if !elements.isEmpty {
            elements.removeLast()
        }
    }
}

var myStack = Stack<Int>()
myStack.addElement(18)
myStack.addElement(20)
myStack.addElement(22)
myStack.elements
myStack.deleteElement()
myStack.elements
myStack.getLastElement()
//  19. Определите класс **`Team`** с свойствами **`name`** (название) и массивом игроков (**`players`**). Напишите метод, который находит игрока с наибольшим счетом в команде.
class Team {
    let name: String
    var players: [String: Int]
    
    init(name: String, players: [String: Int]) {
        self.name = name
        self.players = players
    }
    
    func findBestPlayer() -> String? {
        guard !players.isEmpty else {
            return nil
        }
        
        let bestPlayer = players.max { a, b in a.value < b.value }
        
        return bestPlayer?.key
    }
}
//  20. Создайте класс **`InventoryItem`** с свойствами **`name`** (название) и **`quantity`** (количество). Напишите метод, который увеличивает количество товара на складе.
class InventoryItem {
    let name: String
    var quantity: Int
    
    init(name: String, quantity: Int) {
        self.name = name
        self.quantity = quantity
    }
    
    func increaseProduct(_ goods: Int) {
        quantity += goods
    }
}
//- *Сложные задачки*
//
//  1. Создайте класс **`BankAccount`**, который представляет собой банковский счет с определенным балансом и другими характеристиками. Напишите методы для внесения и снятия денег, а также для проверки баланса.
class BankAccount {
    let owner: String
    let account: Int
    var balance: Double
    
    init(owner: String, account: Int, balance: Double) {
        self.owner = owner
        self.account = account
        self.balance = balance
    }
    
    func deposit(_ amount: Double) {
        balance += amount
    }
    
    func withdraw(_ amount: Double) {
        if amount > balance {
            print("Баланс меньше запрашиваемой суммы")
            return
        } else {
            balance -= amount
        }
    }
    
    func checkBalance() -> Double {
        return balance
    }
}
//  2. Создайте класс **`Car`**, который представляет собой автомобиль с определенными характеристиками (марка, модель, год выпуска и т. д.). Напишите методы для запуска и остановки двигателя, а также для изменения скорости, смены владельца.
class Car {
    let brand: String
    let model: String
    let year: Int
    var color: String
    var owner: String
    var speed: Int
    var engineIsRunning: Bool
    
    init(brand: String, model: String, year: Int, color: String, owner: String, speed: Int, engineIsRunning: Bool = false) {
        self.brand = brand
        self.model = model
        self.year = year
        self.color = color
        self.owner = owner
        self.speed = speed
        self.engineIsRunning = engineIsRunning
    }
    
    func changeSpeedUp(_ v: Int) {
        speed += v
    }
    
    func changeSpeedDown(_ v: Int) {
        speed -= v
    }
    
    func changeOwner(newOwnerName name: String) {
        owner = name
    }
    
    func startEngine() {
        engineIsRunning = true
        print("Двигатель заведен")
    }
    
    func stopEngine() {
        engineIsRunning = false
        print("Двигатель заглушен")
    }
}

let driveCar = Car(brand: "BMW", model: "X5", year: 2020, color: "Black", owner: "Mr. Sol", speed: 0)
driveCar.startEngine()
sleep(3)
driveCar.stopEngine()
//  3. Создайте класс **`PassengerPlane`**, который представляет собой пассажирский самолет с определенным количеством мест и другими характеристиками. Напишите методы для получения количества свободных мест, возможности занять конкретное место, максимальное количество пассажиров, места отправления и прибытия, дата и время вылета (ожидаемое/актуальное), посадки пассажиров (должен проверять, что количество меньше максимального)

//  4. Создайте класс **`Character`**, который представляет собой игрового персонажа с определенным здоровьем, уроном и другими характеристиками. Напишите методы для атаки других персонажей и для обработки полученного урона.
//
//  5. Создайте класс **`ShoppingCart`**, представляющий корзину покупок с товарами и их количеством. Реализуйте методы для добавления и удаления товаров, а также для вычисления общей стоимости покупок.

