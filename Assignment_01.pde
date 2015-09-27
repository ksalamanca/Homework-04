class Ball {
  float x, y;
  float vx, vy;
  float size = 10;
  color c;

  Ball(float x, float y, color c) {
    this.x = x;
    this.y = y;
    this.c = c;
    vx = random(1);
    vy = random(1);
  }

  void draw() {
    noStroke();
    fill(c);
    ellipse(x, y, size*2, size*2);
  }

  void move() {
    x += vx;
    y += vy;
    if (x < size || x > width-size) {
      vx = -vx;
    }
    if (y < size || y > height-size) {
      vy = -vy;
    }
  }
}

ArrayList<Ball> list;

void setup() {
  size(500, 500);
  colorMode(HSB);
  float hue = 0;

  list = new ArrayList<Ball>();

  for (int x = 20; x < width-20; x += 20) {      
    for (int y = 20; y < height-20; y += 20) {
      color c = color(hue, 300, 300);
      list.add(new Ball(x, y, c));
      hue = hue + 0.5;
    }    
  }
}

void draw() {
  background(255);

  for (int i = 0; i < list.size(); i += 1) {
    list.get(i).draw();
    list.get(i).move();    
  }
}
