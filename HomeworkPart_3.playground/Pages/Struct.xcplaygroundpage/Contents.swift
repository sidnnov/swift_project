//: [Previous](@previous)

import Foundation

//: [Next](@next)
//# Домашнее задание #3
//
//## Структуры (Struct)
//
//- *Задачки*
//
//  1. Создайте структуру `Point`, представляющую точку на двумерной плоскости с координатами x и y.
struct Point {
    let x: Double
    let y: Double
}
//  2. Объявите структуру `Rectangle`, содержащую свойства `width` (ширина) и `height` (высота). Напишите метод, который возвращает площадь прямоугольника.
struct Rectangle {
    let width: Int
    let height: Int
    
    func area() -> Int {
        return width * height
    }
    
    func isRightSquare() -> Bool {
        return width == height
    }
}

let myAreaRectangle = Rectangle(width: 5, height: 11).area()
print("Площадь прямоугольника равна: \(myAreaRectangle)")
//  3. Определите структуру `Person`, представляющую человека с свойствами `name` (имя) и `age` (возраст).
struct Person {
    let name: String
    var age: Int
}
//  4. Создайте структуру `Car`, содержащую свойства `brand` (марка) и `model` (модель). Напишите метод, который выводит информацию о машине.
struct Car {
    let brand: String
    let model: String
    
    func information() {
        print("Это автомобиль модели \(model), произведен компании \(brand).")
    }
}

let myCar =  Car(brand: "Audi", model: "Q5")
myCar.information()
//  5. Объявите структуру `Circle`, содержащую свойство `radius` (радиус). Напишите метод, который возвращает площадь круга.
struct Circle {
    let radius: Double
    
    func area() -> Double {
        return Double.pi * (radius * radius)
    }
}
//  6. Создайте структуру `Book`, содержащую свойства `title` (название) и `author` (автор). Напишите метод, который выводит информацию о книге.
struct Book {
    let title: String
    let author: String
    
    func info() {
        print("Книга \(title), написана \(author).")
    }
}
//  7. Определите структуру `Temperature`, представляющую температуру с свойством `value` (значение) и методом для конвертации из Цельсия в Фаренгейт.
struct Temperature {
    var value: Double
    
    func farengeit() -> Double {
        return (9.0/5.0) * value + 32
    }
}
//  8. Создайте структуру `Country`, содержащую свойства `name` (название) и `population` (население). Напишите метод, который выводит информацию о стране.
struct Country {
    let name: String
    var population: Int
    
    func info() {
        print("Население \(name): \(population) человек.")
    }
}
//  9. Объявите структуру `Product`, содержащую свойства `name` (название) и `price` (цена). Напишите метод, который возвращает цену товара в формате строки с валютой.
struct Product {
    let name: String
    var price: Double
    
    func getPrice() -> String {
        return "Стоимость \(name): \(price) Рублей"
    }
}

var coffePrice = Product(name: "Coffe Egoist", price: 145.0)
print(coffePrice.getPrice())
//  10. Создайте структуру `Song`, содержащую свойства `title` (название) и `artist` (исполнитель). Напишите метод, который выводит информацию о песне.
struct Song {
    let title: String
    let artist: String
    
    func info() {
        print("Песня \(title), написана и исполнена \(artist).")
    }
}
//  11. Определите структуру `Line`, представляющую отрезок на плоскости с начальной и конечной точками. Напишите метод, который возвращает длину отрезка.
struct Line {
    let startPoint: Point
    let endPoint: Point
    
    func length() -> Double {
        var deltaX = endPoint.x - startPoint.x
        var deltaY = endPoint.y - startPoint.y
        return sqrt(deltaX * deltaX + deltaY * deltaY)
    }
}
//  12. Создайте структуру `Triangle`, содержащую свойства `sideA`, `sideB` и `sideC` (стороны треугольника). Напишите метод, который определяет, является ли треугольник прямоугольным.
struct Triangle {
    let sideA: Int
    let sideB: Int
    let sideC: Int
    
    func isRightTriangle() -> Bool {
        var sort = [sideA, sideB, sideC].sorted()
        var a = sort[0]
        var b = sort[1]
        var c = sort[2]
        
        return c * c == a * a + b * b
    }
}
//  13. Объявите структуру `BankAccount`, содержащую свойства `balance` (баланс) и `currency` (валюта). Напишите метод, который позволяет пополнить счет на определенную сумму.
struct BankAccount {
    var balance: Double
    let currency: String
    
    mutating func replenishment(money: Double) {
        balance += money
    }
}
var myBalanceBank = BankAccount(balance: 0.0, currency: "USD")
myBalanceBank.replenishment(money: 15.50)
print(myBalanceBank.balance)
myBalanceBank.replenishment(money: 15.50)
print(myBalanceBank.balance)
//  14. Создайте структуру `Student`, содержащую свойства `name` (имя), `age` (возраст) и `grades` (оценки). Напишите метод, который возвращает средний балл студента.
struct Student {
    let name: String
    var age: Int
    var grades: [Int]
    
    func averageGrede() -> Double {
        return Double(grades.reduce(0, +)) / Double(grades.count)
    }
}
//  15. Определите структуру `Employee`, представляющую сотрудника с свойствами `name` (имя), `position` (должность) и `salary` (зарплата). Напишите метод, который увеличивает зарплату на определенный процент.
struct Employee {
    let name: String
    var position: String
    var salary: Double
    
    mutating func increasePersentSalary(percent: Double) {
        salary += salary * (percent / 100.0)
    }
}
//  16. Создайте структуру `Rectangle`, содержащую свойства `width` (ширина) и `height` (высота). Напишите метод, который определяет, является ли прямоугольник квадратом.
//Добавил в задание 2
//  17. Объявите структуру `Date`, содержащую свойства `day` (день), `month` (месяц) и `year` (год). Напишите метод, который проверяет, является ли год високосным.
struct Date {
    var day: String
    var month: String
    var year: Int
    
    func isLeap() {
        if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) {
            print("Високосный год")
        } else {
            print("Не високосный год")
        }
    }
}
//  18. Создайте структуру `Bank`, представляющую банк с свойствами `name` (название) и `accounts` (счета). Напишите метод, который возвращает общую сумму денег на всех счетах.
struct Bank {
    let name: String
    var accounts: [String: Double]
    
    func totalAmount() -> Double {
        return accounts.values.reduce(0.0, +)
    }
}

var myBank = Bank(name: "MTS Bank", accounts: ["000000000000001": 1500.0, "000000000000002": 909_000.0])
myBank.totalAmount()
//  19. Определите структуру `Recipe`, содержащую свойства `name` (название), `ingredients` (ингредиенты) и `instructions` (инструкции приготовления). Напишите метод, который выводит информацию о рецепте.
struct Recipe {
    let name: String
    let ingredients: [String]
    let instructions: String
    
    func getCookingRecipe() {
        let getNewLine = { (arrayString: [String]) in arrayString.joined(separator: "\n") }
        print("Для приготовления блюда \(name), приготовьте индигриенты:\n\(getNewLine(ingredients))\nИнструкция по приготовлению:\n\(instructions)")
    }
}

let borscht = Recipe(
    name: "Борщ",
    ingredients: [
        "свекла - 1 шт.",
        "картофель - 2 шт.",
        "морковь - 1 шт.",
        "лук - 1 шт.",
        "капуста - 200 гр.",
        "говядина - 300 гр.",
        "томатная паста - 2 ст.л.",
        "вода - 2 л.",
        "соль, перец, лавровый лист - по вкусу"
    ],
    instructions: "Сначала сварите бульон из говядины. Затем нарежьте овощи и добавьте их в кастрюлю. В конце добавьте томатную пасту и специи. Варите до готовности."
)

borscht.getCookingRecipe()
//  20. Создайте структуру `Movie`, содержащую свойства `title` (название), `director` (режиссер) и `releaseYear` (год выпуска). Напишите метод, который выводит информацию о фильме.
struct Movie {
    let title: String
    let director: String
    let releaseYear: Int
    
    func info() {
        print("Название фильма: \(title)\nРежисер: \(director)\nГод выпуска: \(releaseYear)")
    }
}

let matrix1Movie = Movie(
    title: "Matrix",
    director: "Laurence Wachowski, Andrew Paul Wachowski",
    releaseYear: 1999
)

matrix1Movie.info()
//- *Сложные задачки*
//
//  1. Определите структуру `Line` для представления линий на плоскости. Напишите метод для определения пересекаются ли две линии.
//
//  2. Создайте структуру **`Stack`**, которая представляет собой стек данных. Напишите методы для добавления, удаления и просмотра элементов стека.
//
//  3. Определите структуру **`Date`** для работы с датами и временем. Напишите методы для проверки высокосного года, добавления/вычитания дней, месяцев и лет.
//
//  4. Разработайте структуру **`Queue`** для реализации очереди. Напишите методы для добавления и удаления элементов из очереди, а также для проверки наличия элементов и получения первого элемента.
//
//  5. Создайте структуру **`Playlist`** для хранения плейлиста музыкальных треков. Реализуйте методы для добавления/удаления треков, перемещения треков вверх/вниз по списку и получения текущего трека.
