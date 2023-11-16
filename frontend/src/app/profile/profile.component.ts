import { Component } from '@angular/core';
import { Emitters } from '../emiters/emitters';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent {

  message:any="";
  id:any="";
  name : any;
  email: any;
  auth=false;
  admin=false

  constructor(private http: HttpClient, private router: Router) {
  }

  ngOnInit(): void {
    this.http.get('http://localhost:8000/api/user', {withCredentials: true}).subscribe(
      (res: any) => {
        this.message = `Hi ${res.name}`;
        this.name = `${res.name}`;
        this.id = `${res.id}`;
        this.email = `${res.email}`;
        console.log(res)
        if (res.admin_access==1){
          Emitters.adminEmitter.emit(true);
          this.message=this.message+ " You're an admin";
        }
        Emitters.authEmitter.emit(true);
      }
    );
    Emitters.authEmitter.subscribe(
      (data: any) => {
        this.auth= data;
        console.log("This is working1");
      }
    );
    Emitters.adminEmitter.subscribe(
      (data: any) => {
        this.admin= data;
        console.log("This is working2");
      }
    );
  }

  logout(): void {
    this.http.post('http://localhost:8000/api/logout', {}, {withCredentials: true})
      .subscribe((succ: any) => {
        this.auth = false
        console.log(succ)
        this.router.navigate(['/login'])
      });
  }

}
