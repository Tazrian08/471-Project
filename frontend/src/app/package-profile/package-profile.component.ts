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
  userRating: number = 0; // Add this line to store the user's rating
  userId: number | undefined;
  averageRating: number | null = null; 



  // Track the selected rating separately
  selectedRating: number | null = null;

  constructor(private http: HttpClient, private route: ActivatedRoute, private router: Router) {}

  ngOnInit(): void {
    // Retrieve the package ID from the route parameters
    this.route.params.subscribe(params => {
      const packageId = +params['id']; // assuming you have 'id' as a route parameter

      // Fetch the specific package by ID
      this.http.get(`http://localhost:8000/api/travel-packages/${packageId}`, { withCredentials: true }).subscribe(
        (packageData: any) => {
          this.package = packageData["package"];
          this.image = packageData["image"][0];
          console.log(this.package)

          if (this.package && this.package.review && this.package.review.length > 0) {
            const totalRatings = this.package.review.reduce(
              (acc: any, review: any) => acc + review.ratings,
              0
            );
            const averageRatings = totalRatings / this.package.review.length;
            this.averageRating= averageRatings;
          } else {
            // Handle the case where there are no reviews or package is undefined
            this.averageRating= 0; //
          }
          console.log(this.averageRating)
          // Calculate the duration
          const departureTimestamp = new Date(this.package.departure_flight.departure).getTime();
          const returnTimestamp = new Date(this.package.return_flight.departure).getTime();

          const timeDifference = returnTimestamp - departureTimestamp;

          // Calculate days and minutes
          const days = Math.floor(timeDifference / (1000 * 60 * 60 * 24));

          this.duration = `${days} days`;
        },
        (error) => {
          console.error('Error fetching package profile:', error);
        }
      );
    });

    // Fetch user's rating for the current package
    this.http.get('http://localhost:8000/api/user', { withCredentials: true }).subscribe(
      (res: any) => {
        this.userId = res.id;  // Adjust this based on your user object structure
        if (res.admin_access == 1) {
          Emitters.adminEmitter.emit(true);
        }
        Emitters.authEmitter.emit(true);
      }
    );

    this.http.get('http://localhost:8000/api/user', { withCredentials: true }).subscribe(
      (res: any) => {
        if (res.admin_access == 1) {
          Emitters.adminEmitter.emit(true);
        }
        Emitters.authEmitter.emit(true);
      }
    );

    Emitters.authEmitter.subscribe(
      (data: any) => {
        this.auth = data;
        console.log("This is working1");
      }
    );

    Emitters.adminEmitter.subscribe(
      (data: any) => {
        this.admin = data;
        console.log("This is working2");
      }
    );
    // Fetch and display the average rating after getting the user's ID
    // this.fetchAverageRating();
    
  }

  

    // fetchAverageRating(): void {
      
    //   if (this.package && this.package.id) {
    //     this.http.get(`http://localhost:8000/api/average-rating/${this.package.id}`, { withCredentials: true }).subscribe(
    //       (response: any) => {
    //         this.averageRating = response
    //       },
    //       (error) => {
    //         console.error('Error fetching average rating:', error);
    //       }
    //     );
    //   }
    // }
 
  onStarClick(rating: number): void {
    this.selectedRating = rating;
  }

  
  submitRating(): void {
    if (this.selectedRating !== null) {
      
      const data = {
        package_id: this.package.id,
        rating: this.selectedRating,
        user_id: this.userId 
      };

      this.http.post('http://localhost:8000/api/rate-package', data, { withCredentials: true }).subscribe(
        (res: any) => {
          alert("Rating Submitted")
          // console.log(res);
          
        },
        (error) => {
          console.error('Error submitting rating:', error);
        });

      //reset
      this.selectedRating = null;
    } else {
      
      console.warn('Please select a rating before submitting.');
    }
    this.ngOnInit()
  }

  ratePackage(rating: number): void {
    this.userRating = rating;

   
    const data = {
      package_id: this.package.id,
      rating: this.userRating,
      comments: '', 
      user_id: this.userId 
    };

    this.http.post('http://localhost:8000/api/rate-package', data, { withCredentials: true }).subscribe(
      (res: any) => {
      },
      (error) => {
        console.error('Error submitting rating:', error);
      }
    );
    this.ngOnInit()
  }


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
  Delete(id:any){
    this.http.delete(`http://localhost:8000/api/travel-package/delete/${id}`, {withCredentials: true}).subscribe(
      (res: any) => {
        alert(res)
        this.router.navigate(['/travel-packages']);
      }
    );
  }
  goToHotelProfile(hotelId: any): void {
    this.router.navigate(['/hotel-profile', hotelId]);
  }
}
