import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Emitters } from 'src/app/emiters/emitters';

@Component({
  selector: 'app-destination-profile',
  templateUrl: './destination-profile.component.html',
  styleUrls: ['./destination-profile.component.css']
})
export class DestinationProfileComponent {


  Profile: boolean = true;
  Attractions: boolean = false ;
  Packages: boolean = false ;
  Hotels: boolean = false ;


 

  attractions:any
  destination:any
  packages: any
  hotels: any



  auth:boolean=false
  admin:boolean=false
  Login:boolean=true
  Register:boolean=true


  constructor(private http: HttpClient, private route: ActivatedRoute, private router: Router) {


    this.route.params.subscribe(params => {
      const destinationID = +params['id']; // assuming you have 'id' as a route parameter

      // Fetch the specific package by ID
      this.http.get(`http://localhost:8000/api/destination/profile/${destinationID}`).subscribe(
        (data: any) => {
          this.destination = data;
          this.attractions=data.attraction
          this.packages=data.travel_package
          this.hotels=data.hotel
          console.log(this.destination)

        },
        (error) => {
          console.error('Error fetching package profile:', error);
        }
      );
    });

    Emitters.profileEmitter.subscribe(
      (data: any) => {
        this.Profile= data;
      }
    );

    Emitters.attractionsEmitter.subscribe(
      (data: any) => {
        this.Attractions= data;
      }
    );
    Emitters.packagesEmitter.subscribe(
      (data: any) => {
        this.Packages= data;
      }
    );
    Emitters.hotelsEmitter.subscribe(
      (data: any) => {
        this.Hotels= data;
      }
    );




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
  goToPackageProfile(packageId: any): void {
    this.router.navigate(['/package-profile', packageId]);
  }
  goToAttractionProfile(attId: any): void {
    this.router.navigate(['/attraction-profile', attId]);
  }



}
