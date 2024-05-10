//
//  Stratagem_data.swift
//  input_Warrior
//
//  Created by Kenny Luchau on 4/27/24.
//

import Foundation

struct Stratagem: Identifiable {
    var id = UUID()
    var title: String
    var summary: String
    var tip: String
    var input: String
    var sequence: Array<Int>
}

let StrataBase: [Stratagem] = [
    Stratagem(title: "Machine Gun", summary: "High powered machine gun.", tip: "This can pen medium armor.", input: "23214", sequence: [2,3,3,1,4]),
    Stratagem(title: "Anti Material Rifle", summary: "A large caliber sniper rifle.", tip: "This can pen medium armor and is very good at taking tagets out from a distance.", input: "23412", sequence: [2,3,4,1,2]),
    Stratagem(title: "Stalwart", summary: "Low caliber machine gun.", tip: "This is amazing for terminid clearing however lacks the firepower to be used for automatons.", input: "232113", sequence: [2,3,2,1,1,3]),
    Stratagem(title: "Expendable Anti-Tank", summary: "One time use rocket launcher.", tip: "The hellpod spawns 2 of them and has a short cooldown. Very great for using on the run.", input: "22314", sequence: [2,2,3,1,4]),
    Stratagem(title: "Recoiless Rfile", summary: "Reloadable dumbfire anti-tank rocket launcher.", tip: "Has a slow reload alone so try to take targets out from a distance so you arent surrounded.", input: "23443", sequence: [2,3,4,4,3]),
    Stratagem(title: "FlameThrower", summary: "Close range flame thrower that can set the ground and targets on fire.", tip: "This is pretty great against the terminids however not against bile spewers.", input: "23121", sequence: [2,3,1,2,1]),
    Stratagem(title: "AutoCannon", summary: "High eplosive rapid firing cannon.", tip: "This is an amazing weapon however lacks armor pen. Best used against anything but heavy armored targets.", input: "232114", sequence: [2,3,2,1,1,4]),
    Stratagem(title: "Heavy Machine Gun", summary: "High caliber machine gun with small magazine.", tip: "This can pen all but the heaviest armor. Best to put this on the slowest fire rate in order to remain accurate with the high recoil.", input: "23122", sequence: [2,3,1,2,2]),
    Stratagem(title: "AirBurst Rocket Launcher", summary: "Fires a cluster of explosives that detonates within a proximity of a targer.", tip: "DO NOT FIRE NEAR OTHER HELLDIVERS KEEP AT MINIMUM 40 METERS AWAY FROM ANYTHING IF YOU ARE TO FIRE THIS THING.", input: "21134", sequence: [2,1,1,3,4]),
    Stratagem(title: "Railgun", summary: "Single shot with high damage at medium armor pen.", tip: "Mainly fire this weapon in safe mode unless fighting heavy armor. If you do fight heavy armor fire this weapon in first person to better see the charge up indicator.", input: "242134", sequence: [2,4,2,1,3,4]),
    Stratagem(title: "Spear", summary: "Lock on anti-tank weapon that hits the top of the target", tip: "The lock on takes a long time so use this against the heaviest targets only. However this can also target automaton buildings", input: "22122", sequence: [2,2,1,2,2])
]

