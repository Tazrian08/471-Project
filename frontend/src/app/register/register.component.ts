import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent {
  Register: boolean =true

  constructor(private http: HttpClient, private router: Router ) 
  {

  }


name: string="";
email: string="";
password: string="";
message:any


register()
  {
    
   
    let bodyData = {
      "name" : this.name,
      "email" : this.email,
      "password" : this.password
    };


    this.http.post("http://localhost:8000/api/register",bodyData).subscribe((resultData: any)=> 
    {

        alert(resultData["message"] + resultData["user"].name + " has been registered")
        this.router.navigate(['/login'])

    });
    console.log("This runs")
    
  }

}
