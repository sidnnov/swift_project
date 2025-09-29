//: [Previous](@previous)

import Foundation

// Вывести строку с целым количеством часов минут и секунд

var seconds = 654321

let base_time_unit = 60
let hours_in_day = 24
let sec_in_hour = base_time_unit * base_time_unit

var hours = seconds / sec_in_hour
var minutes = seconds / base_time_unit
var day1 = hours / hours_in_day

print("\(seconds) секунд это:\n \(day1) дней\n \(hours) часов\n \(minutes) минут\n")

//### **Переменные в Swift:**
//
//- *Легкий уровень*
//
//  1. Объявите переменную myName типа String и создайте для неё константу myAge типа Int с количеством символов.
var myName: String = "Alex"
let myAge: Int = 42
//  2. Объявите переменную типа Int и присвойте ей значение.
var number: Int = 42
//  3. Создайте переменную со значением вашего возраста и присвойте её значение новой переменной, увеличив возраст на 2.
var age: Int = 25
var newAge: Int = age + 2
//  4. Создайте переменную x со значением 10 и переменную y со значением 20. Затем поменяйте значения x и y местами.
var x = 10
var y = 20
(x, y) = (y, x)
//  5. Создайте переменную с плавающей точкой со значением pi (примерно равна 3.14159).
var pi: Float = 3.14159
//  6. Создайте переменную temperature типа Double и присвойте ей значение. Затем объявите константу, равную этому значению, увеличенному на 10.0.
var temperature: Double = 22.5
let increasedTemperature = temperature + 10.0
//  7. Создайте переменную Boolean с именем isRaining, которая по умолчанию равна false.
var isRaining: Bool = false
//  8. Объявите две переменные a и b. Потом a удвойте и присвойте результат b.
var a = 5
var b = a * 2
//  9. Объявите переменную и присвойте ей ваше любимое число. Затем объявите вторую переменную, которая равна первой переменной, умноженной на 2.
var favoriteNumber = 7
var doubleFavorite = favoriteNumber * 2
//  10. Объявите переменную stringValue типа String и присвойте ей строковое значение '100'. Затем преобразуйте stringValue в Int.
var stringValue: String = "100"
var intValue: Int? = Int(stringValue)
//  11. Создайте переменную isLoggedIn типа Bool для контроля входа пользователя в систему.
var isLoggedIn: Bool = false
//  12. Создайте переменные firstName и lastName. Затем создайте переменную fullName в формате "Фамилия, Имя".
var firstName = "Ivan"
var lastName = "Petrov"
var fullName = "\(lastName), \(firstName)"
//  13. Напишите код, который объявляет переменную x равной 5, затем увеличивает x на 10, затем уменьшает x на 5.
var value = 5
value += 10
value -= 5
//  14. Создайте переменную circleRadius и затем создайте переменную circleArea, которая вычисляет площадь круга на основе circleRadius.
var circleRadius: Double = 3.0
var circleArea = Double.pi * pow(circleRadius, 2)
//  15. Объявите переменную balance, которая отображает баланс банковского счета с начальным значением 5000. Затем объявите переменную withdrawAmount, которая отображает сумму, которую вы хотите снять. Измените balance на основе withdrawAmount.
var balance = 5000
var withdrawAmount = 1200
balance -= withdrawAmount
//  16. Создайте переменную типа Bool по имени lightSwitch. Установите начальное значение как true, затем поменяйте его на false.
var lightSwitch: Bool = true
lightSwitch = false
//  17. Объявите три константы, сохраните в них день, месяц и год вашего рождения и объедините их в одну строку.
let day = 18
let month = "March"
let year = 1997
let birthDate = "\(day) \(month) \(year)"
//  18. Объявите две переменные: одну типа Int и другую типа Double. Вы приведите тип Int переменной к Double и выполните операцию сложения.
var intVar: Int = 10
var doubleVar: Double = 5.5
var sum = Double(intVar) + doubleVar
//  19. Объявите переменную типа Float и приведите ее к типу Int.
var floatVar: Float = 12.9
var intFromFloat: Int = Int(floatVar)
//  20. Создайте константу с вашим именем, которое не может быть изменено после первого присвоения значения.
let myConstName = "Alexander"
