// src/app/components/package-profile/package-profile.component.ts

import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-package-profile',
  templateUrl: './package-profile.component.html',
  styleUrls: ['./package-profile.component.css']
})
export class PackageProfileComponent implements OnInit {
  package: any;


  constructor(private http: HttpClient, private route: ActivatedRoute) {}

  ngOnInit(): void {
    // Retrieve the package ID from the route parameters
    this.route.params.subscribe(params => {
      const packageId = +params['id']; // assuming you have 'id' as a route parameter

      // Fetch the specific package by ID
      this.http.get(`http://localhost:8000/api/travel-packages/${packageId}`, { withCredentials: true }).subscribe(
        (packageData: any) => {
          this.package = packageData;
        },
        (error) => {
          console.error('Error fetching package profile:', error);
        }
      );
    });
  }



  payment(price: any){
    
    
   
    let bodyData = {
      "price" : price
    };


    this.http.post("http://localhost:8000/api/paypal/payment",bodyData,{withCredentials: true}).subscribe((resultData: any)=>
    {  
      window.location.href=resultData['link']
    });
    console.log("This runs")
    
  
}
}
