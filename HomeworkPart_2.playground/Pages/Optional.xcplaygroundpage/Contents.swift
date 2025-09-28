//: [Previous](@previous)

import Foundation

//Легкий уровень

//## Optional

//- *Легкие задачи*

//  1. Напишите функцию, которая принимает Optional строку и выводит ее на экран, если она не nil.
func print_string_if_not_empty(string: String?) {
    if let there_is = string {
        print(there_is)
    }
}
print_string_if_not_empty(string: "")
//  2. Напишите функцию, которая принимает Optional число и возвращает его удвоенное значение, если оно не nil.
func double(num: Int?) -> Int? {
    if let value = num {
        return value * 2
    } else {
        return nil
    }
}
double(num: 8)
//  3. Напишите функцию, которая принимает Optional массив чисел и возвращает его длину, если массив не nil.
func length_array(array: [Int]?) -> Int? {
    if let value = array {
        return value.count
    } else {
        return nil
    }
}
length_array(array: [1, 2, 3, 4])
//  4. Напишите функцию, которая принимает Optional строку и проверяет, содержит ли она определенное подстроку, возвращая true или false.
func is_substring(string: String?, substring: String? = "World") -> Bool {
    if let str = string, let sub = substring {
        return str.contains(sub)
    } else {
        return false
    }
}
is_substring(string: "Hello World", substring: "Hello")
//  5. Напишите функцию, которая принимает Optional число и возвращает его в квадрате, если оно не nil.
func square(number: Int?) -> Int? {
    if let result = number {
        return result * result
    } else {
        return nil
    }
}
//  6. Напишите функцию, которая принимает Optional массив строк и выводит каждую строку на новой строке, если массив не nil.
func array_new_line(array: [String]?) {
    if let array_line = array {
        print(array_line.joined(separator: "\n"))
    }
}
array_new_line(array: ["Hello world", "Привет!", "How are you?"])
//  7. Напишите функцию, которая принимает Optional строку и возвращает ее длину, если она не nil, и 0 в противном случае.
func lengh_string(string: String?) -> Int? {
    let true_string = string ?? ""
    return true_string.count
}
lengh_string(string: nil)
//  8. Напишите функцию, которая принимает Optional число и проверяет, является ли оно четным, возвращая true или false.
func is_even(number: Int?) -> Bool {
    if let even = number {
        return even % 2 == 0
    } else {
        return false
    }
}
is_even(number: nil)
//  9. Напишите функцию, которая принимает Optional массив чисел и возвращает сумму всех элементов массива, если массив не nil.
func sum_value(numbers: [Int]?) -> Int? {
    if let numbers = numbers {
        return numbers.reduce(0, +)
    } else {
        return nil
    }
}
sum_value(numbers: [1, 3, 5, 7, 9])
//  10. Напишите функцию, которая принимает Optional число и возвращает true, если оно положительное, и false, если отрицательное или nil.
func is_positive(num: Int?) -> Bool {
    if let num = num {
    return num > 0
    } else {
        return false
    }
}
//  11. Напишите функцию, которая принимает Optional строку и возвращает ее в обратном порядке, если она не nil.
func reverse_string(string: String?) -> String? {
    if let string = string {
        let reversed_str = String(string.reversed())
        return reversed_str
    } else {
        return nil
    }
}
reverse_string(string: "Hello World")
//  12. Напишите функцию, которая принимает Optional массив строк и возвращает первую строку, если массив не nil и не пустой.
func first_string(array_str: [String]?) -> String? {
    return array_str?.first
}
first_string(array_str: ["Hello", "Bye Bye"])
//  13. Напишите функцию, которая принимает Optional число и возвращает его квадратный корень, если оно не nil и положительное.
func return_sqrt(num: Double?) -> Double? {
    if let num = num {
        if num >= 0 {
            return sqrt(num)
        } else {
            return nil
        }
    } else {
        return nil
    }
}
return_sqrt(num: -25.0)
//  14. Напишите функцию, которая принимает Optional массив чисел и возвращает максимальное значение, если массив не nil и не пустой.
func max_value(array: [Int]?) -> Int? {
    return array?.max()
}
max_value(array: [1, 3, 5, 9, 18, 12, 88, 0, 3])
//  15. Напишите функцию, которая принимает Optional строку и удаляет из нее все пробелы, если строка не nil.
let strn: String? = "Hello Bye Bey See you"
let strn1: String? = nil
func delite_space(str: String?) -> String? {
    if let str = str {
        return str.replacingOccurrences(of: " ", with: "")
    } else {
        return nil
    }
}
let result: String? = delite_space(str: strn1)
print(result ?? "nil")
//  16. Напишите функцию, которая принимает Optional число и возвращает true, если оно простое, и false, если не nil и составное.
func is_simple(num: Int?) -> Bool? {
    guard let number = num else { return nil }
    
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
let simple_result: Bool? = is_simple(num: 3)
print(simple_result ?? "nil")
//  17. Напишите функцию, которая принимает Optional массив строк и возвращает новый массив, содержащий только строки заданной длины, если массив не nil.
func array_string(array: [String]?, length: Int = 5) -> [String]? {
    guard let array = array else { return nil }
    
    let result: [String] = array.filter { string in string.count == length }
    
    return result
}

let countries = ["Бельгия", "Кипр", "Австрия", "Болгария", "Хорватия", "Финляндия", "Чехия", "Дания", "Эстония", "ФРГ", "Латвия", "Франция", "Греция", "Венгрия", "Ирландия", "Италия", "Литва", "Португалия", "Мальта", "Нидерланды", "Люксембург", "Польша", "Словакия", "Румыния", "Швеция", "Испания", "Словения"]
print(array_string(array: countries) ?? "nil")
//  18. Напишите функцию, которая принимает Optional число и возвращает его факториал, если оно не nil и неотрицательное
func factorial(num: Int?) -> Int? {
    guard let num = num, num >= 0 else {
        return nil
    }
    if num == 0 { return 1 }
    return (1...num).reduce(1, *)
}
print(factorial(num: 0) ?? "nil")
//  19. Напишите функцию, которая принимает Optional массив чисел и возвращает среднее значение, если массив не nil и не пустой.
func average_value(array: [Int]?) -> Double? {
    guard let array = array, !array.isEmpty else { return nil }
    
    return Double(array.reduce(0, +)) / Double(array.count)
}
print(average_value(array: [743, 198, 904, 66, 382, 520, 771, 412]) ?? "nil")
//  20. Напишите функцию, которая принимает Optional строку и возвращает ее в верхнем регистре, если она не nil.
func upper_string(string: String?) -> String? {
    guard let string = string else { return nil }
    
    return string.uppercased()
}
print(upper_string(string: "hello world") ?? "nil")
//- *Сложные задачи*
//
//  1. Напишите функцию, которая принимает Optional массив чисел и возвращает Optional сумму квадратов всех чисел, если массив не nil и не пустой.
//
//  2. Напишите функцию, которая принимает Optional словарь с именами пользователей и их возрастом, и возвращает Optional самое старшее имя, если словарь не nil и не пустой.
//
//  3. Напишите функцию, которая принимает Optional строку и возвращает Optional первую цифру из строки, если она содержит цифры, и nil в противном случае.
//
//  4. Напишите функцию, которая принимает Optional массив строк и возвращает Optional массив строк без повторений, если массив не nil.
//
//  5. Напишите функцию, которая принимает Optional число и возвращает его делители, если число не nil и положительное, и nil в противном случае.

