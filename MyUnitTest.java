/*
 *compile with 
javac -cp ./junit-4.10.jar MyUnit.java MyUnitTest.java

if you dont compile all the classes at same time will give compiler error 
for the other classes in the default package unless you include the location 
of the other already compiled classes with the -cp flag:
[scott@DE2c dev]$ javac -d . -cp .:./junit-4.10.jar MyUnitTest.java
see
https://stackoverflow.com/questions/2235276/how-to-run-junit-test-cases-from-the-command-line

note on Windows use ';' instead of ':' for classpath separator?

run with
java -cp .:/home/scott/dev/junit-4.10.jar org.junit.runner.JUnitCore MyUnitTest

note that javac originally used is the openjdk version, not the Oracle closed source version:

[scott@DE2c bin]$ alternatives --list | grep javac
javac	auto	/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/bin/javac


*/


import org.junit.Test;
import static org.junit.Assert.*;
//import MyUnit; //does not work for classes in the default package
//only way to access classes in default package is from another class in 
//default package, thus avoid using default package except for small examples

public class MyUnitTest {

    @Test
    public void testConcatenate() {
        MyUnit myUnit = new MyUnit();

        String result = myUnit.concatenate("one", "two");

        assertEquals("onetwo", result);

    }
}

/*
class MyUnit {

    public String concatenate(String one, String two){
        return one + two;
    }
}
*/

