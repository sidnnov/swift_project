//1. Создайте массив с именами 5 ваших друзей.
var names_friends: [String] = ["Alexey", "Galina", "Mihail", "Nikita", "Sergey"]

//2. Добавьте еще два имени в этот массив.
names_friends.append(contentsOf: ["Natasha", "Pasha"])
names_friends

//3. Удалите последнее имя из массива.
names_friends.removeLast()

//4. Выведите имя третьего друга в списке.
print(names_friends[2])

//5. Проверьте, есть ли в массиве имя "Bob".
names_friends.contains("Bob")

//6. Создайте множество из пяти различных чисел.
var numbers: Set<Int> = [42, 13, 666, 69, 404]

//7. Добавьте еще одно число в это множество.
numbers.insert(8)

//8. Удалите одно число из множества.
numbers.remove(666)
numbers

//9. Проверьте, есть ли число 7 в вашем множестве.
numbers.contains(7)

//10. Создайте словарь, где ключи - это имена ваших друзей, а значения - их любимый цвет.
var colors_friends: [String: String] = ["Curt": "black", "Sam": "pink", "Charlie": "red", "Alice": "pink", "Bob": "yellow"]
//11. Выведите любимый цвет вашего друга Bob.
if let color = colors_friends["Bob"] {
    print("Faivorite color Bob is", color)
} else {
    print("Color not found")
}

//print("Faivorite color Bob is", colors_friends["Bob"] ?? "Color not found")

//12. Измените любимый цвет вашего друга Alice на зеленый.
colors_friends["Alice"] = "Зеленый"
colors_friends

//13. Удалите данные вашего друга Charlie из словаря.
let removed_color = colors_friends.removeValue(forKey: "Charlie")
removed_color
colors_friends

//14. Проверьте, есть ли в словаре данные вашего друга Sam.
colors_friends.keys.contains("Sam")

//15. Создайте словарь с ключами-строками и значениями-integers. Используйте цикл for-in для итерации по словарю и печати каждого значения.
var dict_numbers: [String: Int] = ["One": 1, "Two": 2, "Three": 3, "Four": 4, "Five": 5]

for (str, int) in dict_numbers.sorted(by: { $0.value < $1.value }) { //Замыкание
    print("Ключ - \(str), Значение - \(int)")
}
//16. Создайте множество из пяти фруктов, затем добавьте еще один и выведите количество фруктов в множестве.
var fruits: Set<String> = ["Banana", "Peach", "Pear", "Strawberry", "Apple"]
fruits.insert("Orange")
print(fruits.count)

//17. Создайте словарь, где ключи это идентификационные номера студентов, а значения - это их имена. Далее выведите имя студента с определенным идентификационным номером.
var students: [Int: String] = [1: "Curt", 2: "Bob", 3: "Alice"]
print(students[3] ?? "Not found id student")

//18. Создайте массив с пятью различными числами. Затем отсортируйте массив в порядке возрастания.
var diff_numbers = [42, 13, 666, 69, 404]
diff_numbers.sort()
diff_numbers

//19. Создайте множество с именами всех европейских стран, затем проверьте является ли Франция частью этого множества.
var countries: Set<String> = ["Бельгия", "Кипр", "Австрия", "Болгария", "Хорватия", "Финляндия", "Чехия", "Дания", "Эстония", "ФРГ", "Латвия", "Франция", "Греция", "Венгрия", "Ирландия", "Италия", "Литва", "Португалия", "Мальта", "Нидерланды", "Люксембург", "Польша", "Словакия", "Румыния", "Швеция", "Испания", "Словения"]

countries.contains("Франция")

//20. Создайте словарь, где ключи - это названия городов, а значения - это количество населения этих городов. Измените население одного из городов.
var cities_population: [String: Int] = ["Токио": 37400000, "Дели": 31000000, "Шанхай": 27000000, "Сан-Паулу": 22000000, "Мехико": 21800000, "Каир": 20900000, "Мумбаи": 20700000, "Пекин": 20400000, "Дакка": 20200000, "Осака": 19100000]
cities_population["Токио"] = 38000777
cities_population

//Задачи посложнее
//1. Найдите наиболее часто встречающийся элемент в массиве чисел.
diff_numbers += [42, 42, 13, 666, 69, 404]
var diff_count: [Int: Int] = [:]
for n in diff_numbers {
    if let count = diff_count[n] {
        diff_count[n] = count + 1
        diff_count[n] = 1
    }
}
var most_frequent = 0
if let frequent = diff_count.max(by: { $0.value < $1.value }) {
    most_frequent = frequent.key
}
print(most_frequent)

//2. Создайте словарь, в котором ключами будут имена пользователей, а значениями - их списки покупок. Затем объедините списки покупок всех пользователей в один общий список.
var users_products: [String: [String]] = [
    "Алексей": ["Хлеб", "Молоко", "Сыр", "Яйца", "Чай"],
    "Мария": ["Шоколад", "Яблоки", "Сок", "Печенье", "Кофе", "Молоко"],
    "Иван": ["Паста", "Томатный соус", "Сыр"],
    "Ольга": ["Масло", "Хлеб", "Чай", "Варенье", "Кефир", "Мандарины", "Огурцы"],
    "Дмитрий": ["Картофель", "Морковь", "Лук", "Мясо"]
]
var full_list: [String] = []
for products in users_products.values {
    full_list.append(contentsOf: products)
}

//3. Объедините два массива чисел в один и отсортируйте его по возрастанию.
var array_1 = [482, 15, 927, 301, 688, 59]
var array_2 = [743, 198, 904, 66, 382, 520, 771, 412]
var full_array: [Int] = []
full_array.append(contentsOf: array_1 + array_2)
full_array.sort()

//4. Дан массив с целыми числами. Найдите два числа, которые в сумме дают 0. Если таких нет, то верните пустой массив. Если есть несколько пар, верните любую. Задача ставится в условиях, что она решается без применения вспомогательных функций и алгоритмов сортировки.
var numbers_for_task = [5, -5, 12, 12, 8, 42, 17, -33, -12, -48, 27, 61, -72, 54, -19, 83, 14, -56, 38, 90]
var array: [Int] = []
for i in 0..<numbers_for_task.count {
    for j in (i + 1)..<numbers_for_task.count {
        if numbers_for_task[i] + numbers_for_task[j] == 0 {
            array.append(numbers_for_task[i])
            array.append(numbers_for_task[j])
        }
    }
}
if array.count == 0 {
    print(array)
} else {
    print(array.ranges(of: 0...1))
}
print(array)
//5. Дан словарь, где ключи - это имена студентов, а значения - это их оценки. Выведите имена студентов, у которых оценка выше 85. Задачу необходимо решить без использования вспомогательных функций и алгоритмов сортировки.
