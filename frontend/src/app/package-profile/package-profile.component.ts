// src/app/components/package-profile/package-profile.component.ts

import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Emitters } from '../emiters/emitters';

@Component({
  selector: 'app-package-profile',
  templateUrl: './package-profile.component.html',
  styleUrls: ['./package-profile.component.css']
})
export class PackageProfileComponent implements OnInit {
  package: any;
  selectedNumber: number = 1;
  showDescriptionDropdown: boolean = false;
  showDescriptionDropdown2: boolean = false;
  image: any
  path: any
  quantity: any
  auth: boolean=false
  admin: boolean =false
  duration: any
  
  




  constructor(private http: HttpClient, private route: ActivatedRoute, private router: Router) {}

  ngOnInit(): void {
    // Retrieve the package ID from the route parameters
    this.route.params.subscribe(params => {
      const packageId = +params['id']; // assuming you have 'id' as a route parameter

      // Fetch the specific package by ID
      this.http.get(`http://localhost:8000/api/travel-packages/${packageId}`, { withCredentials: true }).subscribe(
        (packageData: any) => {
          this.package = packageData["package"];
          this.image=packageData["image"][0]

           // Calculate the duration
           const departureTimestamp = new Date(this.package.departure_flight.departure).getTime();
           const returnTimestamp = new Date(this.package.return_flight.departure).getTime();
 
           const timeDifference = returnTimestamp - departureTimestamp;
 
           // Calculate days and minutes
           const days = Math.floor(timeDifference / (1000 * 60 * 60 * 24));


           this.duration = `${days} days`;
          console.log(this.image)
          console.log(this.package.hotel.name)

        },
        (error) => {
          console.error('Error fetching package profile:', error);
        }
      );
    });


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



//   payment(price: any){
    
    
   
//     let bodyData = {
//       "price" : price
//     };


//     this.http.post("http://localhost:8000/api/paypal/payment",bodyData,{withCredentials: true}).subscribe((resultData: any)=>
//     {  
//       window.location.href=resultData['link']
//     });
//     console.log("This runs")
    
  
// }
  

  addToCart(): void {

    let data={'package_id':this.package.id, 'amount':this.quantity}

    this.http.post('http://localhost:8000/api/cart',data, {withCredentials: true}).subscribe(
      (res: any) => {
        console.log(res)
        alert("Added to Cart")
      }
    );
  }
  toggleDescriptionDropdown(): void {
    this.showDescriptionDropdown = !this.showDescriptionDropdown;
  }
  toggleDescriptionDropdown2(): void {
    this.showDescriptionDropdown2 = !this.showDescriptionDropdown2;
  }
  goToDestinationProfile(destinationID: any): void {
    this.router.navigate(['/destination/profile', destinationID]);
  }
}
