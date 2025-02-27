public class MyClass { 
    static {
        system.debug('static block');
    }
    {
        system.debug('instance block');
    }
    public myClass(){
        system.debug('myclass constructor');
    }
}