import { HttpClient } from '@angular/common/http';
import { Component, Input } from '@angular/core';
import { Router } from '@angular/router';
import { Emitters } from 'src/app/emiters/emitters';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent {

  constructor(private http: HttpClient, private router: Router) {

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
  auth: any
  admin: any
  @Input() Login: boolean = false;
  @Input() Register: boolean = false ;




  logout(): void {
    this.http.post('http://localhost:8000/api/logout', {}, {withCredentials: true})
      .subscribe((succ: any) => {
        this.auth = false
        console.log(succ)
        this.router.navigate(['/login'])
      });
  }

}
