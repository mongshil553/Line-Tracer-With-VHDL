<h1>Term Project for Robotics Lab2.</h1>

Create a Line Tracing Robot using DE0. This board is programmed with VHDL via Altera Quartus. <br>
Eight IR sensors are used. <br>

<hr>
<h3>Robot Images</h3>
<img src = "https://github.com/user-attachments/assets/5b3b396f-27b3-4f20-a66a-27d4bb848a1d" width="40.8%" height="40.8%">
<img src = "https://github.com/user-attachments/assets/f354e9c3-ee57-4b1e-a8a0-4d04c138cded" width="40.8%" height="40.8%">
<br>
<img src = "https://github.com/user-attachments/assets/4e629009-070c-42c5-8def-4a762d3aeac6" width="21.15%" height="21.15%">
<img src = "https://github.com/user-attachments/assets/9e0f8e5d-c98e-4865-83a6-dae2706e9b75" width="30%" height="30%">
<img src = "https://github.com/user-attachments/assets/821e720c-3278-4f7d-956b-a18b1c638d04" width="30%" height="30%">

<hr>
<h3>System Architecture</h3>
<img src = "https://github.com/user-attachments/assets/040c2eff-592b-4dab-9916-e12e889f3952" width="60%" height="60%">

<hr>
<h3>Technical Difficulties</h3>
Since the hardware does not have capacitor connected to IR Recieving Sensor, it is very vulnerable to noise. To be specific, when the robot approaches a horizontal line, the sensor value stutters causing the program to incorrectly count the amount of times where robot passed a horizontal line. <br><br>

To avoid this, a rejection code was added. <br>

In addition, to reduce noise that can cause robot to decide wrong rotation control, the robot decides IR Detection with the following instruction; <br>
//ADD IMAGE
