class Bezier
{
  PVector c1;
  PVector c2;
  PVector loc;

  Bezier(float cx1, float cy1, float cx2, float cy2, float x, float y)
  {
    c1 = new PVector(cx1, cy1);
    c2 = new PVector(cx2, cy2);
    loc = new PVector(x, y);
  }

  void drawBezier()
  {
    bezierVertex(c1.x, c1.y, c2.x, c2.y, loc.x, loc.y);
  }

  void drawHelpers()
  {
    noStroke();
    fill(255, 0, 0);
    ellipse(loc.x, loc.y, 7, 7);

    stroke(200);
    strokeWeight(1);
    noFill();
    line(loc.x, loc.y, c1.x, c1.y);
    line(loc.x, loc.y, c2.x, c2.y);
    
    noStroke();
    fill(0, 0, 255);
    ellipse(c1.x, c1.y, 6, 6);
    ellipse(c2.x, c2.y, 6, 6);
  }
}
