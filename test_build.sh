# modify directories as needed
# modify separators as needed ";' for Windows, ":" for Linux

# compile:
javac -d ~/dev/junit_tests/test_Junit_01/class -cp /home/scott/dev/junit_tests/test_Junit_01/class:/home/scott/dev/junit_tests/test_Junit_01/lib/junit-4.10.jar -sourcepath /home/scott/dev/junit_tests/test_Junit_01/src/ mysources/MyUnit.java mytests/MyUnitTest.java

# run:
java -cp ~/dev/junit_tests/test_Junit_01/class:/home/scott/dev/junit_tests/test_Junit_01/lib/junit-4.10.jar org.junit.runner.JUnitCore mytests.MyUnitTest
JUnit version 4.10
