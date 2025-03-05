import { LightningElement } from 'lwc';

export default class Datablinding extends LightningElement {

    firstName = '';
    lastName = '';

    handleChange(event){
        const fields = event.target.name;
        console.log(fields);
        if(fields ==='fName'){
            this.firstName = event.target.value;
        }else if(fields ==='lame'){
            this.lastName = event.target.value;
        }
    }
    get upperCase(){
        // return `${this.firstName} ${this.lastName}`.toUpperCase();
        return `${this.firstName === this.firstName.toUpperCase() ? this.firstName.toLowerCase() : this.firstName.toUpperCase()} ${this.lastName === this.lastName.toUpperCase() ? this.lastName.toLowerCase() : this.lastName.toUpperCase()}`;
    }

    greeting = 'sagar';

    handleClick(){
        this.greeting = this.template.querySelector("lightning-input").value;
    }
}