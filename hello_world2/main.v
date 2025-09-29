// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import cc

struct Data {
	str string
}

fn main() {
	data := Data{
		str: "world"
	}
	cc.set_data(&data)
	cc.run(draw)
}

fn draw(dat &Data){
	cc.text("hello ${dat.str}", 10, 10)
}