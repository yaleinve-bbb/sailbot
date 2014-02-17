import Adafruit_BBIO.ADC as ADC
import time
ADC.setup()


while(1): 
  value = ADC.read("P9_33")

  value = ADC.read("AIN4")
  epsilon = .006
  
  if(abs(value - .922) < epsilon):
    print("West : ~ 270 degrees bearing")
  elif(abs(value - .865) < epsilon):
    print("North West : ~ 315 degrees bearing")
  elif(abs(value - .807) < epsilon):
    print("West North West : ~ 292.5 degrees bearing")
  elif(abs(value - .767) < epsilon):
    print("North : ~ 0 degrees bearing")
  elif(abs(value - .686) < epsilon):
    print("North North West : ~ 337.5 degrees bearing")
  elif(abs(value - .615) < epsilon):
    print("South  West : ~ 225 degrees bearing")
  elif(abs(value - .586) < epsilon):
    print("West South West : ~ 247.5 degrees bearing")
  elif(abs(value - .450) < epsilon):
    print("North East : ~ 45 degrees bearing")
  elif(abs(value - .396) < epsilon):
    print("North North East : ~ 22.5 degrees bearing")
  elif(abs(value - .281) < epsilon):
    print("South : ~ 180 degrees bearing")
  elif(abs(value - .238) < epsilon):
    print("South South West : ~ 202.5 degrees bearing")
  elif(abs(value - .179) < epsilon):
    print("South East : ~ 145 degrees bearing")
  elif(abs(value - .123) < epsilon):
    print("South South East : ~ 167.5 degrees bearing")
  elif(abs(value - .089) < epsilon):
    print("East : ~ 90 degrees bearing")
  elif(abs(value - .081) < epsilon):
    print("East North East : ~ 67.5  degrees bearing")
  elif(abs(value - .062) < epsilon):
    print("East South East : ~ 112.5 degrees bearing")

