// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import cc
import gg

fn main() {
	cc.on_init(setup)
	cc.on_exit(on_exit)
	cc.on_event(on_event)
	cc.run(draw)
}

fn setup(_ voidptr){
	println("setup")
}

fn draw(_ voidptr){
	cc.text("hello world", 10, 10)
}

fn on_exit(_ voidptr){
	println("exit")
}

fn on_event(event &gg.Event, _ voidptr){
	// println(event)
}