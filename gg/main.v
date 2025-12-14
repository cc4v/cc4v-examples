// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import cc
import gg

fn main() {
	cc.run(draw)
}

fn draw(){
	g := cc.g()
	g.draw_rect_filled(g.mouse_pos_x, g.mouse_pos_y, 20, 20, gg.red)
}