
import org.junit.Test;
import static org.junit.Assert.*;

public class B {

	//public static void main(String[] args) {
	@Test
	public void testConcatenate() {
	
	A myA = new A();

	String result = myA.concatenate("one", "two");
	
	//System.out.println(result);
	assertEquals("onetwo", result);
	}	

}
