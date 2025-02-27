public class ClassStackDemo {
    public void methodA(){
        methodB();
        system.debug('Method a');
        
    }
    public void methodB(){
        system.debug('Method b');
        methodC();
    }
    public void methodC(){
        system.debug('method c');
        methodD();
    }
    public void methodD(){
        system.debug('method d');
    }
}