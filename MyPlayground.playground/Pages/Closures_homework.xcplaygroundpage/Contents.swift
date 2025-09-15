//: [Previous](@previous)

import Foundation

//## Closures
//
//- *Легкие задачи*
//
//  1. Напишите замыкание, которое выводит на экран приветствие "Привет, мир!".
let sayHelloWorld = { print("Привет, мир!") }
sayHelloWorld()
//  2. Напишите замыкание, которое принимает два числа и возвращает их сумму.
let sumNumbers = { (num1: Int, num2: Int) in return num1 + num2 }
sumNumbers(12, 8)
//  3. Напишите замыкание, которое принимает строку и возвращает ее длину.
let lengthString = { (string: String) in return string.count }
lengthString("Hello, world!")
//  4. Напишите замыкание, которое принимает массив чисел и возвращает сумму всех элементов массива.
let sumAllNum = { (arrayNum: [Int]) in return arrayNum.reduce(0, +) }
sumAllNum([1, 2, 4, 5])
//  5. Напишите замыкание, которое проверяет, является ли число четным, и возвращает true или false.
let isEven = { (num: Int) in return num % 2 == 0 }
isEven(6)
isEven(5)
//  6. Напишите замыкание, которое принимает два числа и возвращает большее из них.
let maxNum = { (num1: Int, num2: Int) in return max(num1, num2) }
maxNum(100, 101)
//  7. Напишите замыкание, которое принимает строку и преобразует ее в верхний регистр.
let upperString = { (str: String) in return str.uppercased() }
upperString("Hello, world!")
//  8. Напишите замыкание, которое принимает массив строк и выводит каждую строку на новой строке.
let newLineString = { (arrayString: [String]) in print(arrayString.joined(separator: "\n")) }
newLineString(["Llo", "helo"])
//  9. Напишите замыкание, которое принимает массив чисел и возвращает новый массив с квадратами всех элементов.
let arraySquare = { (arrayNum: [Int]) in return arrayNum.map { num in return num * num } }
arraySquare([3, 5, 8])
//  10. Напишите замыкание, которое принимает два числа и возвращает их разность.
let diff = { (a: Int, b: Int) in return a - b }
diff(15, 7)
//  11. Напишите замыкание, которое принимает опциональную строку и возвращает ее длину, если она не nil.
let stringLength = { (str: String?) -> Int? in
    if let str = str { return str.count }
    else { return nil } }
stringLength("Hello")
//  12. Напишите замыкание, которое принимает два числа и возвращает их произведение.
let mult = { (a: Int, b: Int) in return a * b }
mult(15, 7)
//  13. Напишите замыкание, которое принимает массив строк и возвращает новый массив с длиной каждой строки.
let arrayLengthString = { (arrayString: [String]) in return arrayString.map { $0.count } }
arrayLengthString(["string", "hello"])
//  14. Напишите замыкание, которое принимает число и возвращает его в обратном порядке.
let reverse = { (num: Int) -> Int in
    let reversedString = String(abs(num)).reversed()
    let reversedNumber = Int(String(reversedString)) ?? 0
    return num >= 0 ? reversedNumber : -reversedNumber
}
reverse(13125423534465)
//  15. Напишите замыкание, которое принимает массив чисел и возвращает новый массив с только положительными числами.
let arrayPositive = { (arrayNum: [Int]) in return arrayNum.filter { $0 > 0 }}
arrayPositive([12, -12, 12, 3, -8, 33, 0])
//  16. Напишите замыкание, которое принимает два числа и возвращает true, если они равны, и false в противном случае.
let isEqual = { (num1: Int, num2: Int) in return num1 == num2 }
isEqual(4, 6)
//  17. Напишите замыкание, которое принимает строку и возвращает true, если она является палиндромом, и false в противном случае.
let isPalindrome = { (str: String) in
    let cleaned = str.filter { $0.isLetter }.lowercased()
    return Array(cleaned) == cleaned.reversed()
    }
isPalindrome("A man, a plan, a canal, Panama")
//  18. Напишите замыкание, которое принимает массив чисел и возвращает среднее значение.
let avg = { (arrayNum: [Int]) in return Double(arrayNum.reduce(0, +)) / Double(arrayNum.count) }
avg([3, 5, 6, 7, 45])
//  19. Напишите замыкание, которое принимает массив чисел и возвращает массив только с четными числами.
let arrayEven = { (arrayNum: [Int]) in return arrayNum.filter { $0 % 2 == 0 } }
arrayEven([12, -12, 12, 3, -8, 33, 0])
//  20. Напишите замыкание, которое принимает строку и возвращает ее без пробелов.
let stringNoSpace = { (str: String) in return str.split(separator: " ").joined() }
stringNoSpace("A man, a plan, a canal, Panama")
//- Сложные задачи
//
//  1. **Функция вычисления степени числа через замыкание**
//
//    Напишите функцию `power(of: Int, usingClosure: (Int) -> Int) -> Int`, которая принимает число `of` и замыкание `usingClosure`, принимающее и возвращающее целое число. Функция должна использовать переданное замыкание для вычисления степени числа `of`. Например, если `of` равно 2, а замыкание умножает число на себя, то функция должна вернуть 4.
func power(of: Int, squareNumber: (Int) -> Int) -> Int {
    return squareNumber(of)
}
let squareNumber = { (num: Int) in return num * num }
power(of: 3, squareNumber: squareNumber)
//  2. **Сортировка массива с использованием замыкания**
//
//    Напишите функцию `sortArray(_ array: [Int], usingClosure: (Int, Int) -> Bool) -> [Int]`, которая принимает массив целых чисел и замыкание, которое определяет порядок сортировки. Функция должна вернуть отсортированный массив с использованием переданного замыкания. Например, если замыкание сравнивает числа в порядке убывания, то функция должна вернуть массив отсортированный по убыванию.
func sortArray(_ array: [Int], isIncrement: (Int, Int) -> Bool) -> [Int] {
    var sortedArray = array
    for i in 0..<sortedArray.count {
        for j in 0..<sortedArray.count - 1 - i {
            if isIncrement(sortedArray[j + 1], sortedArray[j]) {
                let temp = sortedArray[j]
                sortedArray[j] = sortedArray[j + 1]
                sortedArray[j + 1] = temp
            }
        }
    }
    return sortedArray
}
let isIncrement = { (num1: Int, num2: Int) in return num1 < num2 }
sortArray([1, 3, 2, 3, 4, 5, 2, 4, 6, 7, 2], isIncrement: isIncrement)
//  3. **Поиск наибольшего элемента в массиве с помощью замыкания**
//
//    Напишите функцию `findMax(in array: [Int], usingClosure: (Int, Int) -> Bool) -> Int?`, которая принимает массив целых чисел и замыкание, которое определяет критерий для поиска максимального элемента. Функция должна вернуть наибольший элемент массива с использованием переданного замыкания. Например, если замыкание сравнивает числа по модулю, то функция должна вернуть максимальный по модулю элемент.
//
//  4. **Фильтрация массива с помощью замыкания**
//
//    Напишите функцию `filterArray(_ array: [Int], usingClosure: (Int) -> Bool) -> [Int]`, которая принимает массив целых чисел и замыкание, которое определяет условие для фильтрации элементов. Функция должна вернуть новый массив, содержащий только те элементы, для которых переданное замыкание возвращает true.
//
//  5. **Генерация последовательности чисел через замыкание**
//
//    Напишите функцию `generateSequence(startingFrom: Int, length: Int, usingClosure: (Int) -> Int) -> [Int]`, которая принимает начальное значение `startingFrom`, длину последовательности `length` и замыкание `usingClosure`, которое определяет правило генерации следующего числа на основе предыдущего. Функция должна вернуть массив чисел, сгенерированных с использованием переданного замыкания. Например, если начальное значение равно 1, длина равна 5, а замыкание умножает число на 2, то функция должна вернуть массив `[1, 2, 4, 8, 16]`.
//
