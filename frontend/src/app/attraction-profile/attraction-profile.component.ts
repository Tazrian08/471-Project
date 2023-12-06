import { Component } from '@angular/core';
import { Emitters } from '../emiters/emitters';
import { HttpClient } from '@angular/common/http';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-attraction-profile',
  templateUrl: './attraction-profile.component.html',
  styleUrls: ['./attraction-profile.component.css']
})
export class AttractionProfileComponent {
  auth: boolean=false
  admin: boolean =false
  attraction:any


  constructor(private http: HttpClient, private route: ActivatedRoute, private router: Router) {}


  ngOnInit(): void {
    // Retrieve the package ID from the route parameters
    this.route.params.subscribe(params => {
      const attId = +params['id']; // assuming you have 'id' as a route parameter

      // Fetch the specific package by ID
      this.http.get(`http://localhost:8000/api/attraction/${attId}`, { withCredentials: true }).subscribe(
        (Data: any) => {
          this.attraction = Data
          console.log(this.attraction)




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
  goToDestinationProfile(destinationID: any): void {
    this.router.navigate(['/destination/profile', destinationID]);
  }

}
