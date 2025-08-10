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
var colors_friends: [String: String] = ["Curt": "black", "Sam": "pink", "Charlie": "red", "Allice": "green", "Bob": "yellow"]

//11. Выведите любимый цвет вашего друга Bob.
if let color = colors_friends["Bob"] {
    print("Faivorite color Bob is", color)
} else {
    print("Color not found")
}

//print("Faivorite color Bob is", colors_friends["Bob"] ?? "Color not found")

//12. Измените любимый цвет вашего друга Alice на зеленый.
colors_friends["Alice"] = "pink"
colors_friends

//13. Удалите данные вашего друга Charlie из словаря.
let removed_color = colors_friends.removeValue(forKey: "Charlie")
removed_color
colors_friends

//14. Проверьте, есть ли в словаре данные вашего друга Sam.
colors_friends.keys.contains("Sam")

//15. Создайте словарь с ключами-строками и значениями-integers. Используйте цикл for-in для итерации по словарю и печати каждого значения.
var dict_numbers: [String: Int] = ["One": 1, "Two": 2, "Three": 3, "Four": 4, "Five": 5]

for (str, int) in dict_numbers.sorted(by: { $0.value < $1.value }) {
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
