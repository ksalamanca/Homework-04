class Paddle {
  float x, y;
  float vx, vy;

  Paddle(float x) {
    this.x = x;
    y = random(height);
    vx = (random(4));
    vy = 4;
  }

  void draw() {
    fill(0);
    rect(x, y, 15, 55);
  }

  void move() {
    y = y + vy;
    if (x < 20|| x > width) {
      vx = -vx;
    }
    if (y <= 0 || y > height-50) {
      vy = -vy;
    }
  }
}

class Ball {
  float x, y;
  float vx, vy;
  float radius;
  color c;

  Ball() {
    noStroke();
    colorMode(HSB, 100);
    x = random(width-radius);
    y = random(height-radius);
    radius = 10;
    vx = (random(3));
    vy = (random(2));
    c = color(random(100), 100, 100);
  }

  void draw() {
    fill(c);
    ellipse(x, y, radius*2, radius*2);
  }

  void move() {
    x = x + vx;
    y = y + vy;
    if (x < radius || x > width-radius) {
      vx = -vx;
    }
    if (y < radius || y > height-radius) {
      vy = -vy;
    }
  }
}

Ball b, b2;
Paddle p, p2;

void setup() {
  size(500, 500);

  b = new Ball();
  b2 = new Ball();
  p = new Paddle(25);
  p2 = new Paddle(460);
}

void draw() {
  colorMode(RGB, 100);
  background(255, 255, 255);

  b.draw();
  b.move();

  b2.draw();
  b2.move();
  
  p.draw();
  p.move();

  p2.draw();
  p2.move();
}
