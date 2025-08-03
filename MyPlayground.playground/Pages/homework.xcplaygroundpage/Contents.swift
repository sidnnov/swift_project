//: [Previous](@previous)

import Foundation

// Вывести строку с целым количеством часов минут и секунд

var seconds = 654321

let base_time_unit = 60
let hours_in_day = 24
let sec_in_hour = base_time_unit * base_time_unit

var hours = seconds / sec_in_hour
var minutes = seconds / base_time_unit
var day = hours / hours_in_day

print("\(seconds) секунд это:\n \(day) дней\n \(hours) часов\n \(minutes) минут\n")
