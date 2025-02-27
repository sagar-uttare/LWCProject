public Class Animal{
    public String name = 'max';
    Integer age = 24;
    public void helloWorld(){
        system.debug('Welcome to salesfoce programing world');
        system.debug('my name is '+name);
        add(10,30);
    }
    public Integer add(integer a,integer b,integer c){
        return a+b+c;
    }
    private void add(integer a,integer b){
        integer sum = a+b;
        system.debug(sum);
    }
    public static void greek(){
        system.debug('Hello static method');
    }
    
}