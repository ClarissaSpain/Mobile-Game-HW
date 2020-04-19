package com.example.homework7;

import androidx.appcompat.app.AppCompatActivity;

import android.content.res.Resources;
import android.os.Bundle;
import android.widget.ImageView;

import java.util.Timer;
import java.util.TimerTask;

public class MainActivity extends AppCompatActivity {

    Timer timer = new Timer();
    ImageView myView;
    ImageView myPicture;
    ImageView mysadcat;
    int speedx = 100;
    int speedy = 100;

    int speedx1 = 90;
    int speedy1 = 80;

    int speedx2 = 70;
    int speedy2 = 85;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        myView = (ImageView)findViewById(R.id.imageView2);
        myPicture = (ImageView)findViewById(R.id.imageView4);
        mysadcat = (ImageView)findViewById(R.id.imageView5);
//        myView.setX(myView.getX()+50);

        timer.schedule(new Movetask(), 100, 1000/20);
    }

    class Movetask extends TimerTask {

        public void run(){
            moveShape();
        }

    }
    public void moveShape()
    {
//        myView = (ImageView)findViewById(R.id.imageView2);

        myView.setX(myView.getX()+ speedx);
        myView.setY(myView.getY()+ speedy);

        myPicture.setX(myPicture.getX() + speedx1);
        myPicture.setY(myPicture.getY() + speedy1);

        mysadcat.setX(mysadcat.getX() + speedx2);
        mysadcat.setY(mysadcat.getY() + speedy2);

        if(myView.getX() + myView.getWidth() >= getScreenWidth()   || myView.getX() <= 0)
        {
            speedx *= -1;
        }
        if(myView.getY() + myView.getHeight() >= getScreenHeight() || myView.getY() <= 0 )
        {
            speedy *= -1;
        }

        if(myPicture.getX() + myPicture.getWidth() >= getScreenWidth()   || myPicture.getX() <= 0)
    {
        speedx1 *= -1;
    }
        if(myPicture.getY() + myPicture.getHeight() >= getScreenHeight() || myPicture.getY() <= 0 )
        {
            speedy1 *= -1;
        }

        if(mysadcat.getX() + mysadcat.getWidth() >= getScreenWidth()   || mysadcat.getX() <= 0)
        {
            speedx2 *= -1;
        }
        if(mysadcat.getY() + mysadcat.getHeight() >= getScreenHeight() || mysadcat.getY() <= 0 )
        {
            speedy2 *= -1;
        }
    }
    public static int getScreenWidth() {
        return Resources.getSystem().getDisplayMetrics().widthPixels;
    }

    public static int getScreenHeight() {
        return Resources.getSystem().getDisplayMetrics().heightPixels;
    }
}
