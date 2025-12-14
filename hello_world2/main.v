// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import cc

struct Data {
	str string
}

fn main() {
	mut data := Data{
		str: "WORLD"
	}
	cc.run_with(draw, mut data)
}

fn draw(dat &Data){
	cc.text("hello ${dat.str}", 10, 10)
}