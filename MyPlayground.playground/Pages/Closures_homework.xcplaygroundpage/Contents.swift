//: [Previous](@previous)

import Foundation

//Легкий уровень

//## Functions

//- *Легкие задачи*
//
//  1. Напишите функцию, которая выводит приветствие "Привет, мир!" на экран.
func printHelloWorld() {
    print("Привет, мир!")
}
printHelloWorld()
//  2. Напишите функцию, которая принимает имя пользователя и выводит приветствие с этим именем.
func createWelcome(nameUser: String?) {
    guard let nameUser = nameUser else {
        print("Hello, Nobody")
        return
    }
    print("Hello, \(nameUser)")
}
createWelcome(nameUser: "Name")
//  3. Напишите функцию, которая принимает два числа и возвращает их сумму.
func sumNumbers(a: Int?, b: Int?) -> Int? {
    guard let a = a, let b = b else {
        return nil
    }
    return a + b
}
print(sumNumbers(a: 7, b: 17) ?? "nil")
//  4. Напишите функцию, которая принимает два числа и возвращает их произведение.
func prodNumbers(a: Int?, b: Int?) -> Int? {
    guard let a = a, let b = b else {
        return nil
    }
    return a * b
}
print(prodNumbers(a: 7, b: 10) ?? "nil")
//  5. Напишите функцию, которая принимает строку и возвращает ее длину.
func lenghString(string: String?) -> Int? {
    guard let string = string else {
        return nil
    }
    return string.count
}
print(lenghString(string: "Привет, мир!") ?? "nil")
//  6. Напишите функцию, которая принимает массив чисел и возвращает сумму всех элементов массива.
func sumAllArray(arrayNumbers: [Int]?) -> Int? {
    guard let arrayNumbers = arrayNumbers else {
        return nil
    }
    return arrayNumbers.reduce(0, +)
}
print(sumAllArray(arrayNumbers: [1, 2, 3, 4, 5]) ?? "nil")
//  7. Напишите функцию, которая принимает массив строк и выводит каждую строку на новой строке.
func stringNewLine(arrayString: [String]?) {
//    guard let arrayString = arrayString else {
//        return nil
//    }
    let result = arrayString?.joined(separator: "\n")
    print(result ?? "nil")
}
stringNewLine(arrayString: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"])
stringNewLine(arrayString: nil)
//  8. Напишите функцию, которая принимает число и возвращает true, если оно четное, и false, если нечетное.
func isEven(num: Int?) -> Bool? {
    guard let num = num else { return nil }
    return num % 2 == 13
}
print(isEven(num: 0) ?? "nil")
//  9. Напишите функцию, которая принимает число и возвращает true, если оно простое, и false, если составное.
func isSimple(number: Int) -> Bool {
    if number < 2 { return false }
    if number == 2 { return true }
    if number % 2 == 0 { return false }
    
    let limit = Int(sqrt(Double(number)))
    
    for i in stride(from: 3, through: limit, by: 2) {
        if number % i == 0 {
            return false
        }
    }
    return true
}
print(isSimple(number: 4))
//  10. Напишите функцию, которая принимает два числа и возвращает большее из них.
func maxNumber(a: Int, b: Int) -> Int {
    return max(a, b)
}
print(maxNumber(a: 0, b: -1))
//  11. Напишите функцию, которая принимает массив чисел и возвращает массив только из четных чисел.
func arrayEven(arrayNum: [Int]) -> [Int] {
    return arrayNum.filter { num in num % 2 == 0 }
}
print(arrayEven(arrayNum: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
//  12. Напишите функцию, которая принимает строку и возвращает ее в обратном порядке.
func reversString(str: String) -> String {
    return String(str.reversed())
}
print(reversString(str: "Привет, мир!"))
//  13. Напишите функцию, которая принимает массив строк и возвращает новый массив, содержащий только строки заданной длины.
func lengthString(arrayString: [String], length: Int = 3) -> [String] {
    return arrayString.filter { string in string.count == length }
}
print(lengthString(arrayString: ["Alex", "Bob", "Misha", "Nikita", "Sergey", "Li"], length: 6))
//  14. Напишите функцию, которая принимает два числа и возвращает массив с числами в этом диапазоне.
func range(a: Int, b: Int) -> [Int] {
    return Array(a...b)
}
print(range(a: 1, b: 8))
//  15. Напишите функцию, которая принимает число и возвращает массив всех чисел от 0 до этого числа.
func rangeTo(num: Int) -> [Int] {
    return Array(0..<num)
}
print(rangeTo(num: 18))
//  16. Напишите функцию, которая принимает массив чисел и возвращает среднее значение.
func avg(arrayNum: [Int]) -> Double {
    return Double((arrayNum.reduce(0, +)) / arrayNum.count)
}
print(avg(arrayNum: rangeTo(num: 5)))
//  17. Напишите функцию, которая принимает массив чисел и возвращает количество положительных чисел.
func positivNumbers(arrayNum: [Int]) -> Int {
    return arrayNum.filter { num in num > 0 }.count
}
print(positivNumbers(arrayNum: rangeTo(num: 9)))
//  18. Напишите функцию, которая принимает массив чисел и возвращает сумму квадратов этих чисел.
func squarSum(arrayNum: [Int]) -> Int {
    return arrayNum.map { num in num * num }.reduce(0, +)
}
print(squarSum(arrayNum: [3, 3]))
//  19. Напишите функцию, которая принимает массив строк и возвращает массив строк без повторений.
func withoutRepeat(arrayString: [String]) -> [String] {
    return Array(Set(arrayString))
}
print(withoutRepeat(arrayString: ["hello", "hello", "bye-bye", "bye"]))
//  20. Напишите функцию, которая принимает две строки и проверяет, является ли одна строка анаграммой другой.
func isAnagram(stringOne: String, stringTwo: String) -> Bool {
    return Array(stringOne.lowercased()).sorted() == Array(stringTwo.lowercased()).sorted()
}
print(isAnagram(stringOne: "Удар", stringTwo: "руда"))
//- *Сложные задачи*
//
//  1. **Рекурсивная функция для вычисления факториала**
//
//    Напишите рекурсивную функцию **`factorial(n: Int)`**, которая вычисляет факториал числа **`n`** (обозначается как **`n!`** и равен произведению всех целых чисел от 1 до **`n`**).
//
//  2. **Функция вычисления чисел Фибоначчи**
//
//    Напишите функцию **`fibonacci(n: Int)`**, которая возвращает **`n`**-е число в последовательности чисел Фибоначчи. Числа Фибоначчи определяются как сумма двух предыдущих чисел в последовательности, начиная с 0 и 1.
//
//  3. **Функция сортировки массива**
//
//    Напишите функцию **`sortArray(array: [Int])`**, которая принимает массив целых чисел и сортирует его в порядке возрастания или убывания.
//
//  4. **Функция для поиска наибольшего общего делителя (НОД)**
//
//    Напишите функцию **`gcd(a: Int, b: Int)`**, которая находит наибольший общий делитель (НОД) двух целых чисел **`a`** и **`b`**. НОД - это наибольшее число, на которое делятся оба числа без остатка.
//
//  5. **Функция для проверки палиндрома**
//
//    Напишите функцию **`isPalindrome(word: String)`**, которая проверяет, является ли данное слово палиндромом. Палиндром - это слово, которое читается одинаково как слева направо, так и справа налево, игнорируя пробелы и знаки препинания.
//
