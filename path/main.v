// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import cc
import gg

fn main() {
	cc.run(draw)
}

fn draw() {
	cc.fill()
	cc.set_color(gg.dark_blue)
	cc.begin_shape()
	cc.vertex(115, 40)
	cc.vertex(132, 85)
	cc.vertex(180, 85)
	cc.vertex(142, 115)
	cc.vertex(157, 165)
	cc.vertex(115, 135)
	cc.vertex(73, 165)
	cc.vertex(88, 115)
	cc.vertex(50, 85)
	cc.vertex(98, 85)
	cc.end_shape(true)

	cc.no_fill()
	cc.set_color(gg.red)
	cc.bezier(210, 100, 250, 20, 300, 180, 350, 100)

	cc.set_color(gg.green)
	cc.curve(210, 300, 250, 220, 300, 360, 350, 300)

	cc.fill()
	cc.set_color(gg.orange)
	cc.triangle(275, 60, 350, 60, 312, 140)

	cc.set_color(gg.blue)
	cc.arc(315, 220, 90, 70, 0, 4.712389)
}