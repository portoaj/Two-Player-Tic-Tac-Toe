
Tile[][] tiles;

class Tile{
  private String letter = "x";
  Tile()
  {
    
  }
}
public void settings(){
  size(1000,1000);
}

void setup(){
  tiles = new Tile[3][3];
  for(int i = 0; i < tiles.length; i++)
  {
    for(int j = 0; j < tiles[i].length; j++)
    {
      tiles[i][j] = new Tile();
    }
  }
}

void draw(){
  background(255);
  textAlign(CENTER,CENTER);
  for(int i = 0; i < tiles.length; i++)
  {
    for(int j = 0; j < tiles[i].length; j++)
    {
      push();
      noFill();
      rect(i * width/3, j * height/3, width/3, height/3);
      pop();
      textSize(450);
      fill(100);
      text(tiles[i][j].letter, i * width/3 + width/6, j * height/3 + height/8);
    }
  }
}
