public class Laptop {
    public String companyName;
    public String processer;
    public Integer ramSize;
    
    public static String name;
    
    public Laptop(string companyName){
        system.debug('companyname ' + companyName);
        this.companyName = companyName;
    }
    public Laptop(String companyName,String processer){
        system.debug('Processer name is '+ processer);
        this.processer = processer;
    }
    public Laptop(String comapanyName,String processer ,Integer ramSize){
        system.debug('ramsize is '+ ramSize);
        this.ramSize = ramSize;
    } 
    public void listAllDetails(){
        
    if (companyName != null) {
        
        System.debug('Company Name is if condition '+ companyName);
        
    } else if (companyName !=null && processer !=null){
        
        System.debug('company name is '+companyName);
        System.debug('processer name is '+processer);
        
    } else if (companyName !=null && processer !=null && ramsize !=null){
        
        System.debug('company name is '+companyName);
        System.debug('processer name is '+processer);
		System.debug('ramSize name is '+ramsize);

    }
        
    }
    
    public void helloworld(){
        system.debug(' this methos used ' + companyName);
    }
    public static void printName(){
        system.debug('static methos run '+name);
    }
}