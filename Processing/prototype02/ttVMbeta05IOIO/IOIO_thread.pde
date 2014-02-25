void ioioSetup(IOIO ioio) throws ConnectionLostException {
  led1 = ioio.openDigitalOutput(1);
  led2 = ioio.openDigitalOutput(2);
  led3 = ioio.openDigitalOutput(3);
  led4 = ioio.openDigitalOutput(4);
  led5 = ioio.openDigitalOutput(5);
  led6 = ioio.openDigitalOutput(6);
  led7 = ioio.openDigitalOutput(7);
  led8 = ioio.openDigitalOutput(10);
  led9 = ioio.openDigitalOutput(11);
  led10 = ioio.openDigitalOutput(12);
  led11 = ioio.openDigitalOutput(13);
  led12 = ioio.openDigitalOutput(14);
}

//start automatically calls run for you
void ioioLoop(IOIO ioio) throws ConnectionLostException {
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
}
