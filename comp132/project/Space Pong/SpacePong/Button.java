package SpacePong;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.util.Random;

import javax.swing.*;


public class Button extends JFrame
{
    
	//labels
    public static JLabel lifes;
    public static JLabel times;
    public static JLabel score;
    public static JFrame obj;
    public static JLabel level;
    
    Button() throws IOException 
    {

    	//setup for game
        JPanel bottomPanel = new JPanel();
        JPanel topPanel = new JPanel();
        obj = new JFrame();
        JButton play_button=new JButton("Play");
        JButton reset = new JButton("Reset");
        
        
        //JFrame
        Game game = new Game();
        obj.setSize(1024,768);
        obj.setTitle("Ball");
        obj.setFocusable(false);
        obj.setResizable(false);
        obj.setVisible(true);
        obj.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        obj.add(game);
        
        
        //top panel
        obj.add(topPanel,BorderLayout.PAGE_START);
        topPanel.setLayout(new BoxLayout(topPanel, BoxLayout.LINE_AXIS));
        lifes = new JLabel("Lifes: " + Game.life);
        times = new JLabel("Time: " + Game.timer);
        score = new JLabel("Score: " + Game.score);
        level = new JLabel("Level: " +Game.level);
        level.setForeground(Color.WHITE);
        score.setForeground(Color.WHITE);
        times.setForeground(Color.WHITE);
        lifes.setForeground(Color.WHITE);
        topPanel.setBackground(Color.BLUE);
        topPanel.add(times);
        topPanel.add(Box.createHorizontalGlue());
        topPanel.add(score);
        topPanel.add(Box.createHorizontalGlue());
        topPanel.add(level);
        topPanel.add(Box.createHorizontalGlue());
        topPanel.add(lifes);
        
        
        //bot panel
        obj.add(bottomPanel,BorderLayout.PAGE_END);
        bottomPanel.setBackground(Color.BLUE);
        bottomPanel.add(play_button);
        play_button.setBackground(Color.GRAY);
        play_button.setForeground(Color.BLACK);
        play_button.setFocusable(false); 
        play_button.setVisible(true);
        bottomPanel.add(reset);
        reset.setBackground(Color.GRAY);
        reset.setForeground(Color.BLACK);
        reset.setFocusable(false);
        reset.setVisible(true);
        
        
        
        //Tests
//        lifes.setLocation(10, 0);
//        times.setHorizontalAlignment(SwingConstants.LEFT);
//        score.setHorizontalAlignment(SwingConstants.CENTER);
//        Dimension prefSize = new Dimension(1, 50);
//        topPanel.add(new Box.Filler(prefSize, prefSize, prefSize));
        
        
        
       
        
        //pause and play button
        play_button.addActionListener(new ActionListener()
        { 
        	public void actionPerformed(ActionEvent a) 
        	{
        		if(Game.play == false) 
        		{
        			Game.play = true;
        			play_button.setText("Pause");
        		}
        		else 
        		{
        			Game.play = false;
        			play_button.setText("Play");
        		}
            }
        });
        
        
        //reset button
        reset.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				Game.life = 3;
				Game.sec = 0;
				Game.level = 1;
				Game.score = 0;
				Game.ballx=10;
				Game.bally=10;
				Game.ballXspeed = 100;
				Game.ballYspeed = 5;
				score.setText("Score:" + Game.score);
				lifes.setText("Lifes:" + Game.life);
				times.setText("Time:" + (Game.sec/50));
				Game.play = false;
				repaint();
				Random random =  new Random();
			    Game.ufoX = random.nextInt(700);
			    Game.ufoY = random.nextInt(500);
			    Game.starX = random.nextInt(700);
			    Game.starY = random.nextInt(500);
			    Game.meteoriteX = random.nextInt(700);
			    Game.meteoriteY = random.nextInt(500);
			    Game.paddlex = 452;
			}
        	
        });
    }
}