PFont f;
PImage img;
float deslocamento, deslocamentoTexto;

void setup() {
    size(700, 500);
    
    //Variaveis a serem usadas
    deslocamento = width * 1/8;
    deslocamentoTexto = height * 1/9;

    f = createFont("Arial", 16, true);
    
    surface.setTitle("Prova 01");
}

void draw() {
    //Mostrando a bandeira ao não clicar em nenhum botão do teclado e do mouse
    if (!mousePressed && !keyPressed) {   
        stroke(255);
        strokeWeight(4);
        fill(0,150,0);
        rect(0,0,700,500);

        noStroke();
        fill(255, 255, 0);
        quad(350, 62.5, 87.5, 250, 350, 437.5, 612.5, 250);

        noStroke();
        fill(0, 0, 100);
        circle(350, 250, 233.4);

        textFont(f, 20);
        fill(255, 255, 0);
        textAlign(CENTER);
        text("ORDEM e PROGRESSO", width/2, height/2);

        save("BandeiraOriginal.png");
    }
    //Invertendo a bandeira ao clicar no botão esquerdo
    else if (mouseButton == LEFT) {
        img = loadImage("BandeiraOriginal.png");
        img.loadPixels();

        for (int y = 0; y < height; y++) {
            for (int x = 0; x < width; x++) {            
                float vermelho = red(img.get(x, y));
                float verde = green(img.get(x, y));
                float azul = blue(img.get(x, y));

                color cores;

                //Condicional para nao inverter as bordas brancas
                if (x < 2 || x > img.width - 2 || y < 2 || y > img.height - 2) {
                    cores = color(vermelho, verde, azul);
                } 
                else {
                    float vermelhoInvertido = 255 - vermelho;
                    float verdeInvertido = 255 - verde;
                    float azulInvertido = 255 - azul;
                    
                    cores = color(vermelhoInvertido, verdeInvertido, azulInvertido);
                }
                img.set(x, y, cores);
            }
        }
        updatePixels();
        image(img, 0, 0);

        save("BandeiraInvertida.png");
    }
    
    //Deslocando a bandeira para a direita ao clicar com o botão direito do mouse
    else if (mouseButton == RIGHT) {
        stroke(255);
        strokeWeight(4);
        fill(0,150,0);
        rect(0,0,700,500);

        noStroke();
        fill(255, 255, 0);
        quad(350 + deslocamento, 62.5, 87.5 + deslocamento , 250, 350 + deslocamento, 437.5, 612.5 + deslocamento, 250);

        noStroke();
        fill(0, 0, 100);
        circle(350 + deslocamento, 250, 233.4);

        textFont(f, 20);
        fill(255, 255, 0);
        textAlign(CENTER);
        text("ORDEM e PROGRESSO", width/2 + deslocamento, height/2);

        save("BandeiraDeslocada.png");
    }
    //Fazendo os procedimentos caso seja apertado as teclas T ou t
    else if (key == 'T' || key == 't') {        
        stroke(255);
        strokeWeight(4);
        fill(0,150,0);
        rect(0,0,700,500);

        noStroke();
        fill(255, 255, 0);
        quad(350, 62.5, 87.5, 250, 350, 437.5, 612.5, 250);

        fill(0, 0, 100, 70);
        circle(350, 250, 233.4);

        fill(0, 0, 100, 160);
        ellipse(350, 250, 200, 200);

        fill(0, 0, 100, 245);
        ellipse(350, 250, 150, 150);

        textFont(f, 20);
        fill(255, 255, 0);
        textAlign(CENTER);
        text("ORDEM\n\n e\n\n PROGRESSO", width/2, height/2 - deslocamentoTexto);

        save("BandeiraTransparencia.png");
    }
}
