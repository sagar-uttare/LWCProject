public class CustomerDiscount implements IpurchaseOrder {
    public contact customer;
    
    public Decimal Discount(){
        DateTime oneYearOld = System.now().addYears(-1);
        DateTime twoYearOld = System.now().addYears(-2);
        if (this.customer.CreatedDate > oneYearOld){
            return 1.6;
        } if (this.customer.CreatedDate > twoYearOld){
            return 2.5;
        } else return 2.6;
    }
}