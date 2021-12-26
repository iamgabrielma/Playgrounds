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

class Toaster: Robot {
    override init() {
        super.init()
    }
}
class Vacuum: Robot {
    override init() {
        super.init()
    }
}


final class EvilPlan {
    func conquer() {
        // Lightbulb seems a bit out of place here, but can't edit the Robot implementation. I don't think we should have this class exposed in EvilPlan if we can avoid it.
        let lightbulb = Lightbulb()
        
        let toaster = Toaster()
        let vacuum = Vacuum()
        
        toaster.turnOn(lightbulb)
        toaster.turnOff(lightbulb)
        
        vacuum.turnOn(lightbulb)
        vacuum.turnOff(lightbulb)

    }
}

let plan = EvilPlan()
plan.conquer()
