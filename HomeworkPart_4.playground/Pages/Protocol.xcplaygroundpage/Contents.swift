//: [Previous](@previous)

import Foundation

//## Абстракция (протоколы)
//
//- *Задачки*
//
//  Во всех задачка в реализации делаем просто print, если не указано другое задание.
//
//  1. Создайте протокол `Drawable`, который имеет метод `draw()`. Создайте класс `Circle` с методом `draw()`, который печатает "Рисуем круг".
protocol Drawable {
    func draw()
}

class Circle: Drawable {
    func draw() {
        print("Рисуем круг")
    }
}

let paint = Circle()
paint.draw()
//  2. Создайте протокол `Playable`, который имеет методы `play()` и `stop()` , а также read-only поле `isPlaying`. Создайте класс `MusicPlayer`, который реализует этот протокол (методы переключают значение флага).
protocol Playable {
    var isPlaying: Bool { get }
    func play()
    func stop()
}

class MusicPlayer: Playable {
    private(set) var isPlaying: Bool = false
    
    func play() {
        if !isPlaying {
            isPlaying = true
            print("Воспроизведение начато")
        } else {
            print("Уже воспроизводится")
        }
    }
    
    func stop() {
        if isPlaying {
            isPlaying = false
            print("Воспроизведение остановлено")
        } else {
            print("Уже остановленно")
        }
    }
}

var movie = MusicPlayer()
movie.play()
movie.play()

//  3. Создайте протокол `Animal`, который имеет свойство `name` и метод `makeSound()`. Создайте класс `Dog`, который реализует этот протокол.
protocol Animal {
    var name: String { get }
    
    func makeSound()
}

class Dog: Animal {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeSound() {
        print("Собака \(name) говорит: Гав, гав, гав")
    }
}
//  4. Создайте протокол `Resizable`, который имеет метод `resize(to:)` и read-only полями `width, height`. Создайте класс `Image`, который реализует этот протокол (меняет размеры).
protocol Resizable {
    var width: Double { get }
    var height: Double { get }
    
    func resize(width: Double, height: Double)
}

class Image: Resizable {
    private(set) var width: Double
    private(set) var height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func resize(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}
//  5. Создайте протокол `Acceleratable`, который имеет метод `accelerate()` и поле *speed*.  Создайте класс `Car`, который реализует этот протокол (увеличивает скорость на 10).
protocol Acceleratable {
    var speed: Int { get set }
    
    func accelerate()
}

class Car: Acceleratable {
    var speed: Int
    
    init(speed: Int) {
        self.speed = speed
    }
    
    func accelerate() {
        speed += 10
    }
}
//  6. Создайте протокол `Identifiable`, который имеет свойство `id`. Создайте структуру `Person`, которая реализует этот протокол.
protocol Identifiable {
    var id: Int { get }
}

struct Person: Identifiable {
    private(set) var id: Int
}

let user1 = Person(id: 1001)
let user2 = Person(id: 1002)

print("ID пользователя 1: \(user1.id)")
print("ID пользователя 2: \(user2.id)")
//user1.id = 100
//  7. Создайте протокол `Sortable`, который имеет метод `sort()`. Создайте класс `ArrayHandler`, который реализует этот протокол.
protocol Sortable {
    func sort()
}

class ArrayHandler: Sortable {
    func sort() {
        print("Sorted")
    }
}
//  8. Создайте протокол `Drawable`, который имеет метод `draw()` и свойство `color`. Создайте класс `Square`, который реализует этот протокол.
protocol DrawableColor: Drawable {
    var color: String { get set }
}

class Square: DrawableColor {
    var color: String
    
    init(color: String) {
        self.color = color
    }
    
    func draw() {
        print("Рисуем \(color) квадрат")
    }
}

let paintSquare = Square(color: "черный")
paintSquare.draw()
//  9. Создайте протокол `Playable`, который имеет свойство `volume` и методы `play()` и `setVolume(to:)`. Создайте класс `MediaPlayer`, который реализует этот протокол.
protocol PlayableVolume: Playable {
    var volume: Int { get }
    
    func setVolume(to newVolume: Int)
}

class MediaPlayer: PlayableVolume {
    var isPlaying: Bool
    private(set) var volume: Int
       
    init(isPlaying: Bool, volume: Int) {
        self.isPlaying = isPlaying
        self.volume = volume
    }
    
    func stop() {
        print("Стоп")
    }
    
    func play() {
        print("Воспроизвести")
    }
    
    func setVolume(to newVolume: Int) {
            let maxVolume = 100
            let minVolume = 0
            
            if newVolume > maxVolume {
                volume = maxVolume
                print("Уровень громкости установлен на МАКСИМУМ: \(volume)")
            } else if newVolume < minVolume {
                volume = minVolume
                print("Уровень громкости установлен на МИНИМУМ: \(volume)")
            } else {
                volume = newVolume
                print("Уровень громкости установлен на: \(volume)")
            }
        }
}
//  10. Создайте протокол `Printable`, который имеет метод `print()`. Создайте класс `Document`, который реализует этот протокол.
protocol Printable {
    func print()
}

class Document: Printable {
    func print() {
        Swift.print("Выводит на экран что-то")
    }
}
//  11. Создайте протокол `Shape`, который имеет метод `calculateArea()`. Создайте класс `Rectangle`, который реализует этот протокол.
protocol Shape {
    func calculateArea()
}

class Rectangle: Shape {
    func calculateArea() {
        print("Площадь прямоугольника")
    }
}
//  12. Создайте протокол `Downloadable`, который имеет метод `download()`. Создайте класс `File`, который реализует этот протокол.
protocol Downloadable {
    func download()
}

class File: Downloadable {
    func download() {
        print("Загрузка файла")
    }
}
//  13. Создайте протокол `Playable`, который имеет методы `play()`, `pause()` и `stop()`. Создайте класс `AudioPlayer`, который реализует этот протокол.
protocol PlayableWithPause: Playable {
    func pause()
}

class AudioPlayer: PlayableWithPause {
    var isPlaying: Bool = false
    
    func pause() {
        print("Пауза")
    }
        
    func play() {
        print("Воспроизвести")
    }
    
    func stop() {
        print("Стоп")
    }
}
//  14. Создайте протокол `Eatable`, который имеет метод `eat()`. Создайте класс `Fruit`, который реализует этот протокол.
protocol Eatable {
    func eat()
}

class Fruit: Eatable {
    func eat() {
        print("Очень вкусно!")
    }
}
//  15. Создайте протокол `Loggable`, который имеет метод `log(message:)`. Создайте класс `Logger`, который реализует этот протокол.
protocol Loggable {
    func log(message: String)
}

class Logger: Loggable {
    func log(message: String) {
        print("\"\(message)\" - сохранено в БД")
    }
}

let logs = Logger()
logs.log(message: "Hello World")
//  16. Создайте протокол `Printable`, который имеет свойство `text` и метод `printText()`. Создайте класс `Printer`, который реализует этот протокол.
protocol PrintableText: Printable {
    var text: String { get set }
    
    func printText()
}

class Printer: PrintableText {
    var text: String
    
    init(text: String) {
        self.text =  text
    }
    
    func printText() {
        Swift.print("\(text)")
    }
    
    func print() {
        
    }
}
//  17. Создайте протокол `Playable`, который имеет методы `play()`, `pause()` и `stop()`. Создайте класс `VideoPlayer`, который реализует этот протокол.
class VideoPlayer: PlayableWithPause {
    var isPlaying: Bool = false
    
    func pause() {
        print("Пауза")
    }
        
    func play() {
        print("Воспроизвести")
    }
    
    func stop() {
        print("Стоп")
    }
}
//  18. Создайте протокол `Searchable`, который имеет метод `search(keyword:)`. Создайте класс `SearchEngine`, который реализует этот протокол.
protocol Searchable {
    func search(keyword: String)
}

class SearchEngine: Searchable {
    func search(keyword: String) {
        print("Найдено:")
    }
}
//  19. Создайте протокол `Translatable`, который имеет метод `translate(text:)`. Создайте класс `Translator`, который реализует этот протокол.
protocol Translatable {
    func translate(text: String)
}

class Translator: Translatable {
    func translate(text: String) {
        print("Перевод:")
    }
}
//  20. Создайте протокол `Runnable`, который имеет метод `run()`. Создайте класс `Program`, который реализует этот протокол.
protocol Punnable {
    func run()
}

class Program: Punnable {
    func run() {
        print("Запуск программы")
    }
}
