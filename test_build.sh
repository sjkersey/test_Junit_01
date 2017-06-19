#---

# modify directories as needed
# modify separators as needed ";' for Windows, ":" for Linux

#to allow Jenkins to run this in Linux you will need to 'sudo visudo'
#and add entries like (first one below works on specific scripts owned by scott)
#---------------------

#allows jenkins to rebuild gnuradio and others installed under /home/scott
#jenkins ALL=(scott) NOPASSWD: /home/scott/for_jenkins/run_as_jenkins_gnuradio.sh, /home/scott/for_jenkins/test_Jenkins_trigger_gnuradio.sh, /home/scott/dev/junit_tests/test_Junit_01/test_build.sh

# allows Jenkins all accesses
#jenkins ALL=(ALL) NOPASSWD: ALL

#allows Jenkins to build JUNIT tests in scott's home dir (seems to be overidden by above)
#jenkins ALL=(scott) NOPASSWD: /home/scott/for_jenkins/ru/home/scott/dev/junit_tests/test_Junit_01/test_build.sh

#-----------------------

# compile:
javac -d /home/scott/dev/junit_tests/test_Junit_01/class -cp /home/scott/dev/junit_tests/test_Junit_01/class:/home/scott/dev/junit_tests/test_Junit_01/lib/junit-4.10.jar -sourcepath /home/scott/dev/junit_tests/test_Junit_01/src/ src/mysources/MyUnit.java src/mytests/MyUnitTest.java

# run:
java -cp /home/scott/dev/junit_tests/test_Junit_01/class:/home/scott/dev/junit_tests/test_Junit_01/lib/junit-4.10.jar org.junit.runner.JUnitCore mytests.MyUnitTest
