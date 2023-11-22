import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-destination-index',
  templateUrl: './destination-index.component.html',
  styleUrls: ['./destination-index.component.css']
})
export class DestinationIndexComponent {


  destinations:any
  search=""

  constructor(private http: HttpClient, private router: Router) 
  {
    { 
    
      this.http.get("http://localhost:8000/api/alldestination")
    
      .subscribe((resultData: any)=>
      {
        this.destinations=resultData
        console.log(this.destinations)
      });
    }

  }



  Search(){
    let data={'search': this.search}

    
  }
}
