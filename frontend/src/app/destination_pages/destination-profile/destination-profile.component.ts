import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Emitters } from 'src/app/emiters/emitters';

@Component({
  selector: 'app-destination-profile',
  templateUrl: './destination-profile.component.html',
  styleUrls: ['./destination-profile.component.css']
})
export class DestinationProfileComponent {


  Profile: boolean = false;
  Attractions: boolean = true ;
  Packages: boolean = false ;
  Hotels: boolean = false ;


 


  destination:any


  constructor(private http: HttpClient, private route: ActivatedRoute) {


    this.route.params.subscribe(params => {
      const destinationID = +params['id']; // assuming you have 'id' as a route parameter

      // Fetch the specific package by ID
      this.http.get(`http://localhost:8000/api/destination/profile/${destinationID}`).subscribe(
        (data: any) => {
          this.destination = data;

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



  }



}
