//: [Previous](@previous)

import Foundation

//Легкий уровень

//  1. Напишите код, который проверяет, является ли число положительным, отрицательным или нулем.
let num = 0
if num < 0 {
    print("Число \(num) - отрицательное")
} else if num > 0{
    print("Число \(num) - положительное")
} else {
    print("Число \(num) - ноль")
}

//  2. [1, 2, 3, 4, 5] - инкриментируйте каждый элемент в этом массиве.
var numbers = [1, 2, 3, 4, 5]
for num in 0..<numbers.count {
    numbers[num] += 1
}
print(numbers)
//print([1, 2, 3, 4, 5].map { $0 + 1 })

//  3. Используя цикл for-in, выведите все числа от 10 до 1 в обратном порядке.
let n = 10
for i in 0..<n {
    print(n - i)
}
//  4. Используйте условие if для проверки, является ли переменная четным числом.
let number = -13
if number % 2 == 0 {
    print("\(number) - это четное число")
} else {
    print("\(number) - это нечетное число")
}

//  5. Используйте switch чтобы классифицировать оценку буквой (A, B, C…)
let grade: Int = 0
switch grade {
    case 0..<20:
    print("Оценка 'F'")
    case 20..<40:
    print("Оценка 'D'")
    case 40..<60:
    print("Оценка 'C'")
    case 60..<80:
    print("Оценка 'B'")
    case 80...100:
    print("Оценка 'A'")
    default:
    print("Некорректные данные, введите цифры от 0 до 100")
}

//  6. Напишите цикл while, который добавляет элементы в массив до тех пор, пока его размер не достигнет 10.
let string: String = "HelloWorld"
var count = 0
var letters: [String] = []
while letters.count < 10 {
    let index = string.index(string.startIndex, offsetBy: count)
    //    print(index)
    letters.append(String(string[index]))
    count += 1
    }
print(letters)

//  7. Напишите цикл, который удваивает значение каждого элемента в массиве integer.
print(numbers)
for (i, num) in numbers.enumerated() {
    numbers[i] = num * 2
}
print(numbers)

//  8. Используйте оператор if-else, чтобы проверить, равны или нет две строки.
let string_one = "hello"
let string_two = "hello"

if string_one == string_two {
    print("Строки \(string_one) и \(string_two) равны")
} else {
    print("Строки \(string_one) и \(string_two) не равны")
}

//  9. Создайте словарь с ключами-строками и значениями-integers. Используйте цикл for-in для итерации по словарю и печати каждого значения.
var dict_numbers: [String: Int] = ["One": 1, "Two": 2, "Three": 3, "Four": 4, "Five": 5]

for value in dict_numbers.values {
    print("Значение - \(value)")
}

//  10. Напишите цикл for, который выведет только четные числа в диапазоне от 1 до 100.
for i in 1...100 {
    if i % 2 == 0 {
        print(i)
    }
}

//  11. Создайте строку с именем firstName. Используйте if-else, чтобы проверить, если firstName равно вашему имени, напечатайте 'Hello, me!', в противном случае напечатайте 'Hello, (имя)!'
let firstName = "Дима"
if firstName == "Юра" {
    print("Hello, me!")
} else {
    print("Hello, \(firstName)")
}
//  12. Выводите все элементы массива, которые больше среднего значения.
var numbers_arr = Array(1...50)
var average = numbers_arr.reduce(0, +) / numbers_arr.count
for num in numbers_arr {
    if num > average {
        print(num)
    }
}
//  13. Напишите код, который осуществляет вывод чисел от 1 до 100. Но для кратных трём пусть вместо числа выводится слово "Fizz", а для кратных пяти — слово "Buzz". Если число кратно и 3, и 5, то выведите "FizzBuzz".
for i in 1...100 {
    if i % (3 * 5) == 0 {
        print("FizzBuzz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else  if i % 3 == 0 {
        print("Fizz")
    } else {
        print(i)
    }
}
//  14. Используйте цикл for-in, чтобы перебрать массив слов и напечатать длину каждого слова.
var names_friends: [String] = ["Alex", "Bob", "Misha", "Nikita", "Sergey", "Li"]
for name in names_friends {
    print("Длина слова \(name): \(name.count)")
}
//  15. Используйте цикл, чтобы перебрать массив чисел и создайте новый массив с соответствующими строковыми представлениями каждого числа.
var sring_numbers: [String] = []
for num in numbers {
    sring_numbers.append(String(num))
}
print(sring_numbers)
//  16. Напишите цикл, который превращает массив строк в массив всех строк в верхнем регистре.
for (i, names) in names_friends.enumerated() {
    names_friends[i] = names.uppercased()
}
print(names_friends)
//  17. Создайте цикл while, который продолжает генерировать случайные числа до тех пор, пока не будет сгенерировано число, равное 50.
var random_num = 0
while random_num != 50 {
    random_num = Int.random(in: 0...50)
    print(random_num)
}
//  18. Создайте цикл, который умножает каждое число в массиве на два.
print(numbers)
for i in 0..<numbers.count {
    numbers[i] *= 2
}
print(numbers)
//  19. Разработайте программу с использованием if-else, которая проверяет, является ли номер года високосным.
let year = 2000
if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) {
    print("Високосный год")
} else {
    print("Не високосный год")
}
//  20. Разработайте программу, которая с помощью switch выводит количество дней в каждом месяце.
let mounth: String = "Май"
switch mounth {
case "Январь", "Март", "Май", "Июль", "Август", "Октябрь", "Декабрь":
    print("31 день")
case "Апрель", "Июнь", "Сентябрь", "Ноябрь":
    print("30 дней")
case "Февраль":
    print("28 дней (29 дней в високосный год)")
default:
    print("Неправильное название месяца")
}
//Сложный уровень

//  1. Создайте программу, которая определяет, является ли данная строка палиндромом. Палиндром - это слово или фраза, которые одинаково читаются слева направо и справа налево. Учтите пробелы и знаки препинания.

//  2. Напишите программу, которая проверяет, является ли введенное число простым.

//  3. Напишите программу, которая вычисляет факториал числа.

//  4. Напишите цикл, который выводит все числа Фибоначчи до заданного значения.

//  5. Напишите программу, которая по заданному числу N выводит все простые числа до N. Для этого используйте вложенные циклы и условные операторы для проверки делителей каждого числа.
