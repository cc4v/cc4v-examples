// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import cc
import gg

fn main() {
	cc.run(draw)
}

fn draw(_ voidptr){
	x := cc.mouse_x()
	y := cc.mouse_y()

	cc.set_color(gg.red)
	cc.circle(x, y, 100)

	cc.no_fill()
	cc.set_color(gg.blue)
	cc.circle(x + 20, y + 20, 100)
}