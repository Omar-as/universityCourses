package SpacePong;


import java.awt.*;
import java.awt.event.*;
import java.awt.image.BufferedImage;
import java.io.*;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.swing.*;

public class Game extends JPanel implements KeyListener, ActionListener{
	
	//labels
	public static boolean play = false;
	public static int life = 3;
	public static int score = 0;
	public static Timer timer;
	public static int sec = 0;
    public static int level = 1;
	
	//game things
	private int delay = 20 ;
	public static int paddlex = 452;

	
	//gravity stuff
	private int angle = 90;
	private int Vx = 4;
	private int Vy = 10;
	private static int x0 = 10;
	private double g = 9.8 *70;
	private double time = delay/1000.0;
	public static int ballx = x0 ;
	public static int bally= x0;
	public static double ballXspeed = 100;
	public static double ballYspeed = 4;
	
	
	//power-ups
	BufferedImage ufoShip;
	BufferedImage star;
	BufferedImage meteorite;
	public static Random random =  new Random();
    public static int ufoX = random.nextInt(700);
    public static int ufoY = random.nextInt(370);
    public static int starX = random.nextInt(700);
    public static int starY = random.nextInt(370);
    public static int meteoriteX = random.nextInt(700);
    public static int meteoriteY = random.nextInt(370);
    
    
	
	public Game() throws IOException 
	{
		ufoShip = ImageIO.read(new File("C:\\Users\\Ad\\Desktop\\Semester2\\Comp132\\ufoship_small.png"));
		star= ImageIO.read(new File("C:\\Users\\Ad\\Desktop\\Semester2\\Comp132\\star_small.png"));
		meteorite= ImageIO.read(new File("C:\\Users\\Ad\\Desktop\\Semester2\\Comp132\\meteorite_small.png"));
		addKeyListener(this);
		setFocusable(true);
		setFocusTraversalKeysEnabled(false);
		timer = new Timer(delay,this);
		if(!play) 
		{
			timer.start();
		}
	}
	
	
	public void paint(Graphics g)
	{
		//background
		g.setColor(Color.BLACK);
		g.fillRect(1, 1, 1024, 768);
		
		//borders
		g.setColor(Color.BLUE);
		g.fillRect(0, 0, 3, 750);//left
		g.fillRect(0, 0, 1024, 3);//up
		g.fillRect(1006, 0, 3, 750);//right
		
		//paddle
		g.setColor(Color.WHITE);
		g.fillRect(paddlex,650,120,10);
		
		//ball
		g.setColor(Color.RED);
		g.fillOval(ballx,bally,10,10);
		
		//power-ups
		g.drawImage(meteorite, meteoriteX, meteoriteY, this);
		g.drawImage(star, starX, starY, this);
		g.drawImage(ufoShip, ufoX, ufoX, this);
	}
	
	
	public void createNewBall(Graphics g) 
	{
		g.setColor(Color.RED);
		g.fillOval(10,10,10,10);
	}

	
	@Override
	public void actionPerformed(ActionEvent e) 
	{
		timer.start();
		if(life>0) 
		{
				if(play) 
				{
					sec++;			
					Button.times.setText("Time:" + (60 - Game.sec/50));
					
					//ball -> paddle
					if(new Rectangle(ballx,bally,10,10).intersects(new Rectangle(paddlex,650,120,10))) 
					{
						ballYspeed = -ballYspeed;
						score++;
						Button.score.setText("Score:" + Game.score);
					}
					
					//ball -> meteorite
					if(new Rectangle(ballx,bally,10,10).intersects(new Rectangle(meteoriteX,meteoriteY,20,25))) 
					{
		                ballYspeed += 3;
		                ballXspeed += 3;
		                ballYspeed = -ballYspeed;
		                ballXspeed = -ballXspeed;
		                meteoriteX = random.nextInt(700);
						meteoriteY = random.nextInt(400);
						repaint();
		            }
					
					//ball -> star
					if(new Rectangle(ballx,bally,10,10).intersects(new Rectangle(starX,starY,50,50))) 
					{
		                score+=5;
		                ballYspeed = -ballYspeed;
		                ballXspeed = -ballXspeed;
		                Button.score.setText("Score:" + Game.score);
		                starX = random.nextInt(700);
		                starY = random.nextInt(500);
		                repaint();
		            }
					
					//ball -> ufo
					if(new Rectangle(ballx,bally,10,10).intersects(new Rectangle(ufoX,ufoY,50,50))) 
					{
						ballx=10;
						bally=10;
						life-=1;
						ballXspeed = 100;
						ballYspeed = 5;
		                Button.lifes.setText("Lifes:" + Game.life);
		                ufoX = random.nextInt(700);
		                ufoY = random.nextInt(500);
		                repaint();
		            }
					
					//level-up
					if(sec/50>60) 
					{
						sec = 0;
						level++;
						Button.level.setText("Level: " +Game.level);
						ballYspeed += 1/2*(ballYspeed);
		                ballXspeed += 1/2*(ballXspeed);
		                life = 3;
		                Button.lifes.setText("Lifes:" + Game.life);
		                repaint();
					}
					//extra
					if(new Rectangle(ballx,bally,10,10).intersects(new Rectangle(paddlex,650,50,10))) 
					{
						ballXspeed -= 5;
						ballYspeed -=5;
					}
					if(new Rectangle(ballx,bally,10,10).intersects(new Rectangle(paddlex,650,70,10))) 
					{
						ballXspeed += 5;
						ballYspeed +=5;
					}
					
					//gravity stuff
					ballYspeed += g * time;
					ballx += ballXspeed * time;
					bally += ballYspeed * time;
					
					//basic movement
					if(ballx < 0) 
					{
						ballXspeed = -ballXspeed;
					}
					if(bally < 0) 
					{
						ballYspeed = -ballYspeed;
					}
					if(ballx >1006) 
					{
						ballXspeed = -ballXspeed;
					}
					if(bally>680) 
					{
						ballx=10;
						bally=10;
						life-=1;
						if(level>1) {
							ballYspeed += 1/2*(ballYspeed);
			                ballXspeed += 1/2*(ballXspeed);
						}else {
							ballXspeed = 100;
							ballYspeed = 5;
						}
						Button.lifes.setText("Lifes:" + Game.life);
					}
				}
				repaint();
		}
		
		
	}

	@Override
	public void keyTyped(KeyEvent e) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void keyReleased(KeyEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void keyPressed(KeyEvent e) {
		// TODO Auto-generated method stub
		if( play== true & e.getKeyCode()== KeyEvent.VK_RIGHT ) 
		{
			if(paddlex>= 888) 
			{
				paddlex = 888;
			}else 
			{
				paddlex+=30;
			}
		}
		if(play == true & e.getKeyCode()== KeyEvent.VK_LEFT  ) 
		{
			if(paddlex< 10) 
			{
				paddlex = 0;
			}else 
			{
				paddlex-=30;
			}
		}	
	}
	public int getTime() 
	{
		return (sec/60);
	}
}