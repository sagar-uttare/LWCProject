import { LightningElement } from 'lwc';

export default class Datablinding extends LightningElement {


    //USE OF GETTER PROPERTYs
    
    firstName = '';
    lastName = '';

    handleChange(event){
        const fields = event.target.name;
        console.log(fields);
        if(fields ==='fName'){
            this.firstName = event.target.value;
        }else if(fields ==='lName'){
            this.lastName = event.target.value;
        }
    }
    get upperCase(){ 
        if(this.firstName.toLocaleLowerCase()){
            return `${this.firstName} ${this.lastName}`.toUpperCase();

        }else return`${this.firstName} ${this.lastName}`.toUpperCase();


    }
}