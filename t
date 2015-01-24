commit c06805028fbb4d9974d9623107d5c1a1319a2842
Author: InVe BBB <yaleinve@gmail.com>
Date:   Mon Feb 17 05:01:29 2014 +0000

    working wind vane code to print out bearing

diff --git a/windVane.py b/windVane.py
index 052155d..296e07b 100644
--- a/windVane.py
+++ b/windVane.py
@@ -7,6 +7,38 @@ while(1):
   value = ADC.read("P9_33")
 
   value = ADC.read("AIN4")
- 
+  epsilon = .006
+  
+  if(abs(value - .922) < epsilon):
+    print("West : ~ 270 degrees bearing")
+  elif(abs(value - .865) < epsilon):
+    print("North West : ~ 315 degrees bearing")
+  elif(abs(value - .807) < epsilon):
+    print("West North West : ~ 292.5 degrees bearing")
+  elif(abs(value - .767) < epsilon):
+    print("North : ~ 0 degrees bearing")
+  elif(abs(value - .686) < epsilon):
+    print("North North West : ~ 337.5 degrees bearing")
+  elif(abs(value - .615) < epsilon):
+    print("South  West : ~ 225 degrees bearing")
+  elif(abs(value - .586) < epsilon):
+    print("West South West : ~ 247.5 degrees bearing")
+  elif(abs(value - .450) < epsilon):
+    print("North East : ~ 45 degrees bearing")
+  elif(abs(value - .396) < epsilon):
+    print("North North East : ~ 22.5 degrees bearing")
+  elif(abs(value - .281) < epsilon):
+    print("South : ~ 180 degrees bearing")
+  elif(abs(value - .238) < epsilon):
+    print("South South West : ~ 202.5 degrees bearing")
+  elif(abs(value - .179) < epsilon):
+    print("South East : ~ 145 degrees bearing")
+  elif(abs(value - .123) < epsilon):
+    print("South South East : ~ 167.5 degrees bearing")
+  elif(abs(value - .089) < epsilon):
+    print("East : ~ 90 degrees bearing")
+  elif(abs(value - .081) < epsilon):
+    print("East North East : ~ 67.5  degrees bearing")
+  elif(abs(value - .062) < epsilon):
+    print("East South East : ~ 112.5 degrees bearing")
 
-  print("%f" % value)
diff --git a/windVane.py.save b/windVane.py.save
new file mode 100644
index 0000000..87e1b9a
--- /dev/null
+++ b/windVane.py.save
@@ -0,0 +1,46 @@
+import Adafruit_BBIO.ADC as ADC
+import time
+ADC.setup()
+
+
+while(1): 
+  value = ADC.read("P9_33")
+
+  value = ADC.read("AIN4")
+  epsilon = .05
+  
+  if(abs(value - .922) < epsilon):
+    print("West : ~ 270 degrees bearing")
+  elif(abs(value - .865) < epsilon):
+    print("North West : ~ 315 degrees bearing")
+  elif(abs(value - .806) < epsilon):
+    print("West North West : ~ 292.5  degrees bearing")
+  elif(abs(value - .767) < epsilon):
+    print("North : ~ 0 degrees bearing")
+  elif(abs(value - .686) < epsilon):
+    print("North North  West : ~ 337.5 degrees bearing")
+  elif(abs(value - .615) < epsilon):
+    print("South West : ~ 225 degrees bearing")
+  elif(abs(value - .586) < epsilon):
+    print("West South West : ~ 247.5 degrees bearing")
+  elif(abs(value - .451) < epsilon):
+    print("North East : ~ 45 degrees bearing")
+  elif(abs(value - .395) < epsilon):
+    print("North North East : ~ 22.5  degrees bearing")
+  elif(abs(value - .280) < epsilon):
+    print("South : ~ 180 degrees bearing")
+  elif(abs(value - .238) < epsilon):
+    print("South South West : ~ 202.5  degrees bearing")
+  elif(abs(value - .179) < epsilon):
+    print("South East : ~ 145 degrees bearing")
+  elif(abs(value South - .122) < epsilon):
+    print("South  : ~ 315 degrees bearing")
+
+.122 - .123 = 167.5 degrees South South East
+.088 - .091 = 90 degrees East
+.080 - .082 = 67.5 degrees East North East
+.062 - .063 = 112.5 degrees East South East
+
+
+  print("%f" % value)
+
