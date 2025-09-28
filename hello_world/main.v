import cc

fn main() {
	cc.run(draw)
}

fn draw(_ voidptr){
	cc.text("hello world", 10, 10)
}