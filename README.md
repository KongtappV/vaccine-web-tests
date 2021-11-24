Robot Framework test for Service-Taker web application from 3:00 AM Group

## Link related to 3:00AM Service-Taker Site

[github page](https://github.com/3-00AM/VaccineHaven/)

[web application](https://vaccine-haven.herokuapp.com/)

## To run the test
first open terminal in this directory and install all requirements require to run this test by running

````
$pip install -r requirements.txt
````

<br>
then you need to run `register.robot` test to register citizen that need to use in next test

```
$robot Register.robot
```

<br>
then you can run the rest of the test which is in `TestCase.robot` by running this command

```
$robot TestCase.robot
```

## Question

* **Your answer to this question: which do you think is a better framework for E2E testing of web applications or web services:  
Robot Framework or Cucumber with Selenium/HTTP library and JUnit?**
    - I think that robot framework is better than cucumber because when testing with robot framework you can see the 
  test working in your browser in real time. and in the terminal also told us very clearly if something goes wrong.
* **What tutorial or online resource(s) did you find most helpful for learning Robot Framework?**
    - Vichisorn sent me some tutorial video he found on how to start with robot framework 
  (mostly just the basics of it) I watch only two videos.
    - [Introduction to Robot Framework - Youtube](https://www.youtube.com/watch?v=UbYxkUq0Hec&list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG&ab_channel=SDET-QAAutomationTechie)