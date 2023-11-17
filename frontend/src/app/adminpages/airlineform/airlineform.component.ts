import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-airlineform',
  templateUrl: './airlineform.component.html',
  styleUrls: ['./airlineform.component.css']
})
export class AirlineformComponent {
  constructor(private http: HttpClient, private router: Router) 
  {

  }
  name=''
  email=''
  


  air_sub(){
    let bodyData = {
      "name" : this.name,
      "email" : this.email,
  
    };


    this.http.post("http://localhost:8000/api/airline/create",bodyData).subscribe((resultData: any)=> 
    {

        alert(resultData["message"] + resultData["airline"].country + " has been registered")
        // this.router.navigate(['/login'])

    });
    console.log("This runs")
    
  }

}
