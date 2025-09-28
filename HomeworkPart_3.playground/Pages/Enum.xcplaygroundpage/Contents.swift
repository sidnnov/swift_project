//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//# Домашнее задание #3
//
//## Перечисления (Enum)
//
//- *Задачки*
//
//  1. Создайте перечисление `Weekdays`, представляющее дни недели.
enum Weekdays {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}
let weekdays: Weekdays = .monday
//  2. Объявите перечисление `Months`, включающее названия всех месяцев года.
enum Months {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
}
//  3. Определите перечисление `Direction`, представляющее четыре основных направления: север, юг, восток и запад.
enum Direction {
    case north
    case south
    case east
    case west
}
//  4. Создайте перечисление `Coin`, содержащее номиналы монет: penny, nickel, dime и quarter.
enum Coin: Double {
    case penny = 0.01
    case nickel = 0.05
    case dime = 0.10
    case quarter = 0.25
}
let totalValue = Coin.penny.rawValue + Coin.quarter.rawValue
print(totalValue)
//  5. Объявите перечисление `TrafficLight`, представляющее цвета светофора: красный, желтый и зеленый.
enum TrafficLight {
    case red, yellow, green
}
//  6. Определите перечисление `Suit`, представляющее масти игральных карт: пики, червы, бубны и трефы.
enum Suit {
    case spades, hearts, diamonds, clubs
}
//  7. Создайте перечисление `Daytime`, содержащее периоды суток: утро, день, вечер и ночь.
enum Daytime {
    case morning, day, evening, night
}
//  8. Объявите перечисление `DirectionArrow`, представляющее стрелки направлений: вверх, вниз, влево и вправо.
enum DirectionArrow {
    case up, down, left, right
}
//  9. Определите перечисление `Weather`, содержащее погодные условия: солнечно, дождливо, облачно и ветрено.
enum Weather {
    case sunny, rainy, cloudy, windy
}
//  10. Создайте перечисление `Season`, представляющее времена года: весна, лето, осень и зима.
enum Season {
    case spring, summer, autumn, winter
}
//  11. Создайте перечисление `CardSuit`, представляющее масти игральных карт: пики, червы, бубны и трефы. Напишите функцию, которая принимает масть карты и возвращает ее название на русском.
func suitCardTranslate(suit: Suit) -> String {
    switch suit {
    case .spades:
        return "пики"
    case .hearts:
        return "червы"
    case .diamonds:
        return "бубны"
    case .clubs:
        return "трефы"
    }
}
suitCardTranslate(suit: Suit.clubs)
//  12. Объявите перечисление `ShapeType`, представляющее различные типы геометрических фигур: круг, квадрат, треугольник и прямоугольник. Напишите функцию, которая принимает тип фигуры и возвращает ее площадь.
enum ShapeType {
    case circle(radius: Double)
    case square(side: Double)
    case triangle(base: Double, height: Double)
    case rectangle(width: Double, height: Double)
}

func areaFigure(figure: ShapeType) -> Double {
    switch figure {
    case .circle(let radius):
        return Double.pi * (radius * radius)
    case .square(let side):
        return side * side
    case .triangle(let base, let height):
        return (base * height) / 2
    case .rectangle(let width, let height):
        return width * height
    }
}
    
let myCircle = ShapeType.circle(radius: 3.0)
let myRectangle = ShapeType.rectangle(width: 5, height: 10)
    
print("Площадь круга: \(areaFigure(figure: myCircle))")
print("Площадь прямоугольника: \(areaFigure(figure: myRectangle))")
//  13. Определите перечисление `TrafficSignal`, содержащее типы светофорных сигналов: красный, желтый и зеленый. Напишите функцию, которая принимает сигнал и возвращает время его длительности в секундах.
enum TrafficSignal {
    case red(timeSec: Int)
    case yellow(timeSec: Int)
    case green(timeSec: Int)
}

func timeTrafficSignal(trafficSignal: TrafficSignal) -> Int {
    switch trafficSignal {
    case .red(let time):
        return time
    case .yellow(let time):
        return time
    case .green(let time):
        return time
    }
}

let signalTime = TrafficSignal.green(timeSec: 210)
print("Длительность сигнала: \(timeTrafficSignal(trafficSignal: signalTime))")
//  14. Создайте перечисление `DayType`, представляющее дни недели: будний день и выходной день. Напишите функцию, которая принимает день недели и возвращает его тип.
enum DayType {
    case weekday, dayoff
   }

func getDayType(day: Weekdays) -> DayType {
    switch day {
    case .saturday, .sunday:
        return DayType.dayoff
    default:
        return DayType.weekday
    }
}

let today = Weekdays.friday
let tomorrow = Weekdays.saturday

print("Сегодня \(getDayType(day: today))")
print("Завтра \(getDayType(day: tomorrow))")
//  15. Объявите перечисление `Temperature`, содержащее типы температур: низкая, средняя и высокая. Напишите функцию, которая принимает температуру в градусах Цельсия и возвращает ее тип.
enum Temperature {
    case low, medium, high
}

func getTemperatureType(celsi: Int) -> Temperature {
    switch celsi {
    case -Int.max...10:
        return .low
    case 11...20:
        return .medium
    default:
        return .high
    }
}

getTemperatureType(celsi: 15)
getTemperatureType(celsi: -145)
//  16. Определите перечисление `TrafficLightState`, представляющее состояния светофора: включен, выключен и мигающий. Напишите функцию, которая принимает состояние светофора и возвращает соответствующее ему описание.
enum TrafficLightState {
    case on, off, flashing
}

func getTrafficStateDescription(state: TrafficLightState) -> String {
    switch state {
    case .flashing:
        return "Светофор мигает"
    case .off:
        return "Светофор выключен"
    case .on:
        return "Светофор включен"
    }
}

let trafficState = TrafficLightState.flashing
print(getTrafficStateDescription(state: trafficState))
//  17. Создайте перечисление `DirectionType`, содержащее направления движения: вперед, назад, влево и вправо. Напишите функцию, которая принимает два направления и определяет, являются ли они противоположными.
enum DirectionType {
    case forward, backward, left, right
}

func opposite(directionOne: DirectionType, directionTwo: DirectionType) -> String {
    switch (directionOne, directionTwo) {
    case (.forward, .backward), (.backward, .forward):
        return "Противоположные направления"
    case (.left, .right), (.right, .left):
        return "Противоположные направления"
    default:
        return "Не противоположные направления"
    }
}

let direct1 = DirectionType.backward
let direct2 = DirectionType.left

print(opposite(directionOne: direct1, directionTwo: direct2))
//  18. Объявите перечисление `OperatingSystem`, представляющее операционные системы: iOS, Android, Windows и macOS. Напишите функцию, которая принимает операционную систему и возвращает ее популярность среди пользователей.
enum OperatingSystem {
    case iOS, Android, Windows, macOS
}

func getOSPopularity(os: OperatingSystem) -> String {
    switch os {
    case .iOS:
        return "iOS: высокая популярность среди пользователей iPhone и iPad"
    case .Android:
        return "Android: самая популярная мобильная ОС в мире"
    case .Windows:
        return "Windows: доминирует среди настольных компьютеров"
    case .macOS:
        return "macOS: популярна среди пользователей компьютеров Apple"
    }
}


let os = OperatingSystem.macOS

print(getOSPopularity(os: os))
//  19. Определите перечисление `PaymentMethod`, содержащее способы оплаты: наличные, кредитная карта, электронные деньги и банковский перевод. Напишите функцию, которая принимает способ оплаты и возвращает его комиссию.
enum PaymentMethod {
    case cash(comission: Double)
    case creditCard(comission: Double)
    case digitalMoney(comission: Double)
    case bankTransfer(comission: Double)
}

func getComissionBank(method: PaymentMethod) -> Double {
    switch method {
    case .bankTransfer(let percent), .cash(let percent),
         .creditCard(let percent), .digitalMoney(let percent):
        return percent
    }
}

let comissionMethodBT = PaymentMethod.bankTransfer(comission: 2.5)

print("Коммисия за метод оплаты будет \(getComissionBank(method: comissionMethodBT))%")
//  20. Создайте перечисление `WeatherCondition`, содержащее погодные условия: ясно, облачно, дождь и снег. Напишите функцию, которая принимает погодные условия и возвращает рекомендацию по одежде.
enum WeatherCondtition {
    case sunday
    case cloudy
    case rain
    case snow
}

func getRecomClothing(weather: WeatherCondtition) -> String {
    switch weather {
    case .sunday:
        return "Отличная солнечная погода, можно одеться легко!"
    case .cloudy:
        return "Сегодня облачно, легкая куртка не помешает!"
    case .rain:
        return "Сегодня дождь, дождевик нужен обязательно!"
    case .snow:
        return "Валенки и пуховик на сегодня для тебя"
    }
}
let weatherToday = WeatherCondtition.cloudy
print(getRecomClothing(weather: weatherToday))
//- *Сложные задачки*
//
//  1. Создайте перечисление **`Unit`** для различных единиц измерения (например, метры, километры, футы, дюймы и т. д.). Напишите функцию, которая принимает значение, единицу измерения и целевую единицу измерения, а затем конвертирует значение из одной единицы в другую.
//
//  2. Реализуйте перечисление **`Direction`** для направлений: север, юг, восток и запад. Напишите функцию **`nextDirection`**, которая принимает текущее направление и возвращает следующее направление на 90 градусов по часовой стрелке.
//
//  3. Создайте перечисление **`GameState`**, которое представляет различные состояния игры (начало игры, игра в процессе, победа, поражение и т. д.). Напишите функции, которые изменяют состояние игры в зависимости от действий игрока.
//
//  4. Создайте перечисление **`ProductType`** для различных типов товаров в магазине (одежда, продукты, электроника и т. д.). Напишите функции для обработки добавления, удаления и обновления товаров в зависимости от их типа.
//
//  5. Реализуйте перечисление **`LogLevel`**, представляющее уровни логирования (debug, info, warning, error). Напишите функцию, которая принимает уровень логирования и сообщение, и выполняет логирование только если уровень логирования выше определенного порога.
