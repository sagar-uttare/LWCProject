import { LightningElement } from 'lwc';
export default class Moviesearch extends LightningElement {
    selectedType='';
    loading = false; 
    selectedSearch = '';
    get typeoptions(){
        return [
            {label:'Movie',value:'movie'},
            {label:'Series',value:'series'},
            {label:'Episode',value:'episode'},
        ];
    }

    handleChange(event){ 
        let { name,value} = this.target;
        this.loading=true;
        if (name === 'type'){
            this.selectedType = value;
        }else if(name === 'search'){
            this.selectedSearch = value;
        }
    }
}