/*
 Wireless Hello World
 
 Talk over normal serial, and talk over Xbee Serial
 
 Pinout:
     Due  <->  XBee
     3.3v      1 (3.3v)
     19(RX1)   2 (TX)  
     18(TX1)   3 (RX)
     GND       10 (GND)
 */
 
int numBytesToBeRead;
int incomingByte;

// LED to write to, so we can see when it's sending stuff
int REDLED = 12;
int YELLLED = 13;

void setup() { 
 //Initialize serial and wait for port to open:
  Serial.begin(9600); 
  Serial.println("USB Serial online"); 

  Serial1.begin(9600);
  Serial1.println("XBee serial online");
  
  // Set up LED
  pinMode(REDLED, OUTPUT);
  digitalWrite(REDLED, LOW);

  pinMode(YELLLED, OUTPUT);
  digitalWrite(YELLLED, LOW);

  //pinMode(OSC, OUTPUT);
  //digitalWrite(OSC, HIGH);
} 

void loop() {
              

  digitalWrite(YELLLED, HIGH);
  numBytesToBeRead = Serial1.available();
  digitalWrite(YELLLED, LOW);
            

  if (numBytesToBeRead > 0) {

    // we got a potato! Send it back to the other person!
    digitalWrite(REDLED, HIGH);
    incomingByte = Serial1.parseInt();
    digitalWrite(REDLED, LOW);        
    

    Serial1.println(incomingByte+1);
    Serial1.flush();
            
  }
} 
