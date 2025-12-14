// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import cc
import gg

fn main() {
	cc.run(draw)
}

fn draw(_ voidptr){
	cc.background(gg.gray)

	if cc.key_just_pressed(.space) {
		cc.set_color(gg.red)
		cc.rect(10, 10, 100, 100)

		println("space key pressed")
	} else {
		cc.set_color(gg.white)
		cc.rect(10, 10, 100, 100)
	}
}