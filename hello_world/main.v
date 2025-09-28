import cc

fn main() {
	cc.run(draw)
}

fn draw(mut c cc.CC){
	c.text("hello world", 10, 10)
}