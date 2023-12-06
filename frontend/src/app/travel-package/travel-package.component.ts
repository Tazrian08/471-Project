// src/app/components/travel-packages/travel-packages.component.ts

import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Emitters } from '../emiters/emitters';

@Component({
  selector: 'app-travel-package',
  templateUrl: './travel-package.component.html',
  styleUrls: ['./travel-package.component.css']
})
export class TravelPackageComponent implements OnInit {
  travelPackages: any
  search:any
  auth:boolean=false
  admin:boolean=false
  Package:boolean=true

  constructor(private http: HttpClient, private router: Router) {

    this.http.get('http://localhost:8000/api/user', {withCredentials: true}).subscribe(
      (res: any) => {
        console.log(res)
        if (res.admin_access==1){
          Emitters.adminEmitter.emit(true);
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

  ngOnInit(): void {
    this.http.get('http://localhost:8000/api/travel-packages', { withCredentials: true }).subscribe(
      (packages: any) => {
        this.travelPackages = packages;
        console.log(this.travelPackages)
      },
      (error) => {
        console.error('Error fetching travel packages:', error);
      }
    );
  }

  // Method to navigate to the package profile with the specific package ID
  goToPackageProfile(packageId: any): void {
    this.router.navigate(['/package-profile', packageId]);
  }

  packageSearch(search: any): void {
    let apiUrl: string;
  
    // Check if the search string is empty
    if (search !== '') {
      apiUrl = `http://localhost:8000/api/travel-package/search/${search}`;
    } else {
      apiUrl = 'http://localhost:8000/api/travel-packages';
    }
  
    this.http.get(apiUrl).subscribe((resultData: any) => {
      this.travelPackages = resultData;
    });
  }
}
