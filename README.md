<h1>Term Project for Robotics Lab2.</h1>

Create a Line Tracing Robot using DE0. This board is programmed with VHDL via Altera Quartus. <br>
Eight IR sensors are used. <br>

<hr>
<h3>Robot Images</h3> <br>
//ADD IMAGE
<hr>
<h3>System Architecture</h3> <br>
//ADD IMAGE
<hr>
<h3>Technical Difficulties</h3>
Since the hardware does not have capacitor connected to IR Recieving Sensor, it is very vulnerable to noise. To be specific, when the robot approaches a horizontal line, the sensor value stutters causing the program to incorrectly count the amount of times where robot passed a horizontal line. <br><br>

To avoid this, a rejection code was added. <br>

In addition, to reduce noise that can cause robot to decide wrong rotation control, the robot decides IR Detection with the following instruction; <br>
//ADD IMAGE
