# test_Junit_01
for testing Junit features


--note that when Jenkins is building the project in CentOS7 Linux (under /var/lib/jenkins/workspace/test_JUNIT_01) , there seems to be a false/insignificant error when comipiling a class file ( but then the JUnit test still passes)

console output:
...
[test_JUNIT_01] $ /bin/sh -xe /tmp/hudson796757299827552391.sh
+ /home/scott/dev/junit_tests/test_Junit_01/test_build.sh
src/mysources/MyUnit.java:3: error: error while writing MyUnit: /home/scott/dev/junit_tests/test_Junit_01/class/mysources/MyUnit.class (Permission denied)
public class MyUnit {
       ^
1 error
JUnit version 4.10
.
Time: 0.006

OK (1 test)

Finished: SUCCESS
...
