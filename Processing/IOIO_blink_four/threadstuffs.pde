/* This is our thread class, it's a subclass of the standard thread class that comes with Processing
 * we're not really doing anything dramatic, just using the start and run methods to control our interactions with the IOIO board
 */
 
class myIOIOThread extends Thread {
 
  boolean running;  //is our thread running?
  boolean lightOn;
  int id; //in case we want to name our thread
  int wait; //how often our thread should run
  DigitalOutput led;  //DigitalOutput type for the onboard led
  int count; //if we wanted our thread to timeout, we could put a counter on it, I don't use it in this sketch
 
  //our constructor
  myIOIOThread(int id_, boolean lightOn_, int w) {
 
    id = id_;
    lightOn = lightOn_;
    wait = w;
    running = false;
    count = 0;
  }
 
  //override the start method
  void start() {
    running = true;
 
    //try connecting to the IOIO board, handle the case where we cannot or the connection is lost
    try {
      IOIOConnect();  //this function is down below and not part of the IOIO library
    }
    catch (ConnectionLostException e) {
    }
 
    //try setting our led pin to the onboard led, which has a constant 'LED_PIN' associated with it
    try {
      led = ioio.openDigitalOutput(id);
    }
    catch (ConnectionLostException e) {
    }
 
    //don't forget this
    super.start();
  }
 
  //start automatically calls run for you
  void run() {
 
    //while our sketch is running, keep track of the lightOn boolean, and turn on or off the led accordingly
    while (running) {
      //count++;
 
      //again, we have to catch a bad connection exception
      try {
        led.write(lightOn);
      }
      catch (ConnectionLostException e) {
      }
 
      try {
        sleep((long)(wait));
      }
      catch (Exception e) {
      }
    }
  }
 
 //often we may want to quit or stop or thread, so I include this here but I'm not using it in this sketch
  void quit() {
    running = false;
    ioio.disconnect();
    interrupt();
  }
 
//a simple little method to try connecting to the IOIO board
  void IOIOConnect() throws ConnectionLostException {
 
    try {
      ioio.waitForConnect();
    }
    catch (IncompatibilityException e) {
    }
  }
}
