// profile.component.ts

import { Component, OnInit } from '@angular/core';
import { Emitters } from '../emiters/emitters';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent implements OnInit {
  res: any;
  name: string;
  id: number;
  email: string;
  isAdmin: boolean = false;
  isAuthenticated: boolean = false;

  constructor(private http: HttpClient, private router: Router) {
    this.name = '';
    this.id = 0;
    this.email = '';
  }

  ngOnInit(): void {
    this.http.get('http://localhost:8000/api/profile', { withCredentials: true }).subscribe(
      (res: any) => {
        this.name = res.user.name;
        this.id = res.user.id;
        this.email = res.user.email;

        this.isAuthenticated = true;

        if (res.user.admin_access == 1) {
          this.isAdmin = true;
        }

        Emitters.authEmitter.emit(true);
      },
      (error) => {
        // Handle error, for example, redirect to login page
        this.isAuthenticated = false;
        this.router.navigate(['/login']);
      }
    );

    Emitters.authEmitter.subscribe(
      (data: any) => {
        this.isAuthenticated = data;
        console.log('Authentication status:', this.isAuthenticated);
      }
    );

    Emitters.adminEmitter.subscribe(
      (data: any) => {
        this.isAdmin = data;
        console.log('Admin status:', this.isAdmin);
      }
    );
  }
}

