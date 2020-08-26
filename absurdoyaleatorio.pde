/*
 por hacer:
 - array de arrays
 - arreglar base de datos
 
 */

PImage[] imag = new PImage[8];

int y = 20;

String[] primera = {
  "vacuna aplicada en chacao", "incendio de subestación", 
  "discusión de pareja", "alza de precios", "piropo a mujer", 
  "directv venezuela", "adolescente de 16 años", "polifalcón", 
  "choque entre busetas", "presunta aeronave con drogas", "covid-19", 
  "pareja", "cierre de directv", "video de aficionado", "regimen de maduro", 
  "rumba sexual llanera", "cicpc", "inflación de abril", "cacerolazos en caracas", 
  "sobrevivir en cuarentena"
};

String[] medio = {
  "deja muerto", "dejó sin electricidad", 
  "llevó a matar", "disparó la inflación", "fue atacado", 
  "cerró operaciones", "asesinó", "intensificará medidas", 
  "deja 7 heridos", "fue derribada", "alcanza 613 casos", 
  "fue asesinada y enterrada", "es para desquitarse", "muestra tiroteo", 
  "niega 8 casos de muerte", "deja detenidos a 18 venezolanos"
};

String[] ultimo = {
  "entre reos y gnb", "por covid 19", "a bebé sano", "al 70% de la población", 
  "a bebé de 3 meses", "de 80% en abril", "a machetazos", "con efecto inmediato", 
  "por infidelidad a su pareja", "para cumplir cuarentena", "en punto fijo", 
  "en venezuela", "en merida", "por incumplir tapabocas", "con la población", 
  "en colombia", "de la banda del wilexis"
};

void write_word(String[] words) {
  textAlign(CENTER);
  PFont font;
  font = createFont ("YoungSerif-Regular.otf", 36);
  textFont (font);
  int n = int(random(words.length));
  textSize(42);
  text(words[n], 400, y);
  y = y + 50;
}

void new_sentence() {
  background(255);
  noStroke();
  fill (0, 255);
  rect (50, 50, 700, 5);
  rect (50, 750, 700, 5);

  tint(255, 110);
  for (int i=0; i<imag.length; i++) {
    imag[i] = loadImage( "image-" + i + ".jpg");
  }

  /*
   tint(255, 110);
   PImage foto1;
   foto1 = loadImage("01img.jpg");
   image(foto1, 50, 250);
   filter(GRAY);
   */
   
  tint(255, 100);
  filter(MULTIPLY);
  PImage img;
  img = loadImage("texture.jpg");
  image(img, 0, 0);
  filter(GRAY);

  y= 100;

  fill(#454545);

  write_word(primera);
  write_word(medio);
  write_word(ultimo);
}

void setup() {
  size (800, 800, P3D);
  new_sentence();
}

void draw () {
  //  background (255);
}

void mousePressed() {
  new_sentence();

  image(imag[(int)random(8)], 50, 250);
  filter(GRAY);
}
void keyPressed() {
  int random_number = int(random(1000000));
  save(random_number + ".png");
}
