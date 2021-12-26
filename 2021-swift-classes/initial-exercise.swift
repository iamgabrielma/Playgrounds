import UIKit

class Lightbulb {
    func on() {
        print("Light - turning on")
    }

    func off() {
        print("Light - turning off")
    }
}

class Robot {
    func turnOn(_ aLightbuld: Lightbulb) {
        print("(*in a robotic voice*) Bleep blop bleep - I. shall. turn. on.")
        aLightbuld.on()
    }

    func turnOff(_ aLightbuld: Lightbulb) {
        print("(*in a robotic voice*) Bleep blop bleep - turning. off.")
        aLightbuld.off()
    }
}

final class EvilPlan {
    func conquer() {
        let robot = Robot()
        let lightbulb = Lightbulb()

        robot.turnOn(lightbulb)
        robot.turnOff(lightbulb)
    }
}

let plan = EvilPlan()
plan.conquer()
