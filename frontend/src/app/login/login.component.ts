import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { Emitters } from '../emiters/emitters';

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
          alert(resultData['user'].name + " has been logged in");
          Emitters.authEmitter.emit(true);
          Emitters.dataEmitter.emit(resultData['user'])
          this.router.navigate(['/temp'])

      });
      console.log("This runs")
    
  }

}
