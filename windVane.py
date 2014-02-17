import Adafruit_BBIO.ADC as ADC
import time
ADC.setup()


while(1): 
  value = ADC.read("P9_33")

  value = ADC.read("AIN4")
 

  print("%f" % value)
