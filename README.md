# test_Junit_01
for testing Junit features built with Jenkins


--note that when Jenkins is building the project in CentOS7 Linux (temp files under /var/lib/jenkins/workspace/test_JUNIT_01) , errors will occur unless you have Jenkins run the script as the user that setup the file structure:
Jenkins run-script configuration example:

sudo -u scott /home/scott/dev/junit_tests/test_Junit_01/test_build.sh

For this to work must allow Jenkins to run as user in sudoers file:

for CentOS7 run command:
sudo visudo

add following line (a comment line and a wrapped line) to the file with paths of scripts for Jenkins to run:

#allows jenkins to rebuild gnuradio and others installed under /home/scott
jenkins ALL=(scott) NOPASSWD: /home/scott/for_jenkins/run_as_jenkins_gnuradio.sh, /home/scott/for_jenkins/test_Jenkins_trigger_gnuradio.sh, /home/scott/dev/junit_tests/test_Junit_01/test_build.sh


