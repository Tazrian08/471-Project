import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Emitters } from 'src/app/emiters/emitters';

@Component({
  selector: 'app-hotel-profile',
  templateUrl: './hotel-profile.component.html',
  styleUrls: ['./hotel-profile.component.css']
})
export class HotelProfileComponent {


  auth: boolean=false
  admin: boolean =false
  hotel:any
  Login:boolean=true
  Register:boolean=true


  constructor(private http: HttpClient, private route: ActivatedRoute, private router: Router) {}


  ngOnInit(): void {
    // Retrieve the package ID from the route parameters
    this.route.params.subscribe(params => {
      const hotelId = +params['id']; // assuming you have 'id' as a route parameter

      // Fetch the specific package by ID
      this.http.get(`http://localhost:8000/api/hotel/${hotelId}`, { withCredentials: true }).subscribe(
        (Data: any) => {
          this.hotel = Data
          console.log(this.hotel)




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
        this.Login=false;
        this.Register=false;
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
  goToDestinationProfile(destinationID: any): void {
    this.router.navigate(['/destination/profile', destinationID]);
  }

}
