/* This is our thread class, it's a subclass of the standard thread class that comes with Processing
 * we're not really doing anything dramatic, just using the start and run methods to control our interactions with the IOIO board
 */

class myIOIOThread extends Thread {

  boolean running;  //is our thread running?
  String id; //in case we want to name our thread
  int wait; //how often our thread should run
  DigitalOutput led1;  //DigitalOutput type for the onboard led
  DigitalOutput led2;  //DigitalOutput type for the onboard led
  DigitalOutput led3;  //DigitalOutput type for the onboard led
  DigitalOutput led4;  //DigitalOutput type for the onboard led
  DigitalOutput led5;  //DigitalOutput type for the onboard led
  DigitalOutput led6;  //DigitalOutput type for the onboard led
  DigitalOutput led7;  //DigitalOutput type for the onboard led
  DigitalOutput led8;  //DigitalOutput type for the onboard led
  DigitalOutput led9;  //DigitalOutput type for the onboard led
  DigitalOutput led10;  //DigitalOutput type for the onboard led
  DigitalOutput led11;  //DigitalOutput type for the onboard led
  DigitalOutput led12;  //DigitalOutput type for the onboard led
  int count; //if we wanted our thread to timeout, we could put a counter on it, I don't use it in this sketch

  //our constructor
  myIOIOThread(String s, int w) {

    id = s;
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
      led1 = ioio.openDigitalOutput(1);
    }
    catch (ConnectionLostException e) {
    }
    try {
      led2 = ioio.openDigitalOutput(2);
    }
    catch (ConnectionLostException e) {
    }
    try {
      led3 = ioio.openDigitalOutput(3);
    }
    catch (ConnectionLostException e) {
    }
    try {
      led4 = ioio.openDigitalOutput(4);
    }
    catch (ConnectionLostException e) {
    }
    try {
      led5 = ioio.openDigitalOutput(5);
    }
    catch (ConnectionLostException e) {
    }
    /////////////////////////
    try {
      led6 = ioio.openDigitalOutput(6);
    }
    catch (ConnectionLostException e) {
    }
    try {
      led7 = ioio.openDigitalOutput(7);
    }
    catch (ConnectionLostException e) {
    }
    try {
      led8 = ioio.openDigitalOutput(10);
    }
    catch (ConnectionLostException e) {
    }
    try {
      led9 = ioio.openDigitalOutput(11);
    }
    catch (ConnectionLostException e) {
    }
    try {
      led10 = ioio.openDigitalOutput(12);
    }
    catch (ConnectionLostException e) {
    }
    try {
      led11 = ioio.openDigitalOutput(13);
    }
    catch (ConnectionLostException e) {
    }
    try {
      led12 = ioio.openDigitalOutput(14);
    }
    catch (ConnectionLostException e) {
    }


    //don't forget this
    super.start();
  }

  //start automatically calls run for you
  void run() {
    while (running) {
      //count++;

      //again, we have to catch a bad connection exception
      try {
        led1.write(light1On);
      }
      catch (ConnectionLostException e) {
      }
      try {
        led2.write(light2On);
      }
      catch (ConnectionLostException e) {
      }
      try {
        led3.write(light3On);
      }
      catch (ConnectionLostException e) {
      }
      try {
        led4.write(light4On);
      }
      catch (ConnectionLostException e) {
      }
      try {
        led5.write(light5On);
      }
      catch (ConnectionLostException e) {
      }
      try {
        led6.write(light6On);
      }
      catch (ConnectionLostException e) {
      }
      try {
        led7.write(light7On);
      }
      catch (ConnectionLostException e) {
      }
      try {
        led8.write(light8On);
      }
      catch (ConnectionLostException e) {
      }
      try {
        led9.write(light9On);
      }
      catch (ConnectionLostException e) {
      }
      try {
        led10.write(light10On);
      }
      catch (ConnectionLostException e) {
      }
      try {
        led11.write(light11On);
      }
      catch (ConnectionLostException e) {
      }
      try {
        led12.write(light12On);
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

