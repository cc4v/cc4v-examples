import cc
import gg

fn main() {
	cc.run(draw)
}

fn draw(_ voidptr){
	cc.set_color(gg.red)
	cc.rect(20, 20, 100, 100)

	cc.no_fill()
	cc.set_color(gg.blue)
	cc.rect(10, 10, 100, 100)
}