import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {

  constructor(private http: HttpClient,private router: Router  ) 
  {

  }


  email: string ="";
  password: string ="";

  login(){
    
    
   
      let bodyData = {
        "email" : this.email,
        "password" : this.password,
      };
  
  
      this.http.post("http://localhost:8000/api/login",bodyData,{withCredentials: true}).subscribe((resultData: any)=>
      {   
          alert(resultData);
          this.router.navigate(['/'])
      });
      console.log("This runs")
    
  }

}
