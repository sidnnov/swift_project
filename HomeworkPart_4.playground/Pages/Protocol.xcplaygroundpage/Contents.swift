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
    func resize(width: Double, { set }, height: Double { set })
    
}
//  5. Создайте протокол `Acceleratable`, который имеет метод `accelerate()` и поле *speed*.  Создайте класс `Car`, который реализует этот протокол (увеличивает скорость на 10).
//
//  6. Создайте протокол `Identifiable`, который имеет свойство `id`. Создайте структуру `Person`, которая реализует этот протокол.
//
//  7. Создайте протокол `Sortable`, который имеет метод `sort()`. Создайте класс `ArrayHandler`, который реализует этот протокол.
//
//  8. Создайте протокол `Drawable`, который имеет метод `draw()` и свойство `color`. Создайте класс `Square`, который реализует этот протокол.
//
//  9. Создайте протокол `Playable`, который имеет свойство `volume` и методы `play()` и `setVolume(to:)`. Создайте класс `MediaPlayer`, который реализует этот протокол.
//
//  10. Создайте протокол `Printable`, который имеет метод `print()`. Создайте класс `Document`, который реализует этот протокол.
//
//  11. Создайте протокол `Shape`, который имеет метод `calculateArea()`. Создайте класс `Rectangle`, который реализует этот протокол.
//
//  12. Создайте протокол `Downloadable`, который имеет метод `download()`. Создайте класс `File`, который реализует этот протокол.
//
//  13. Создайте протокол `Playable`, который имеет методы `play()`, `pause()` и `stop()`. Создайте класс `AudioPlayer`, который реализует этот протокол.
//
//  14. Создайте протокол `Eatable`, который имеет метод `eat()`. Создайте класс `Fruit`, который реализует этот протокол.
//
//  15. Создайте протокол `Loggable`, который имеет метод `log(message:)`. Создайте класс `Logger`, который реализует этот протокол.
//
//  16. Создайте протокол `Printable`, который имеет свойство `text` и метод `printText()`. Создайте класс `Printer`, который реализует этот протокол.
//
//  17. Создайте протокол `Playable`, который имеет методы `play()`, `pause()` и `stop()`. Создайте класс `VideoPlayer`, который реализует этот протокол.
//
//  18. Создайте протокол `Searchable`, который имеет метод `search(keyword:)`. Создайте класс `SearchEngine`, который реализует этот протокол.
//
//  19. Создайте протокол `Translatable`, который имеет метод `translate(text:)`. Создайте класс `Translator`, который реализует этот протокол.
//
//  20. Создайте протокол `Runnable`, который имеет метод `run()`. Создайте класс `Program`, который реализует этот протокол.


