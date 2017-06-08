public class MyUnit {

    public String concatenate(String one, String two){
        return one + two;
    }

    public static void main(String[] args){
        MyUnit mu = new MyUnit();
	System.out.println(mu.concatenate("hi","there"));
    }

}
