import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-airline-edit',
  templateUrl: './airline-edit.component.html',
  styleUrls: ['./airline-edit.component.css']
})
export class AirlineEditComponent {
  
  constructor(private http: HttpClient, private route: ActivatedRoute) {}

  ngOnInit(): void {

    // Retrieve the package ID from the route parameters
    this.route.params.subscribe(params => {
      const airlineId = +params['id']; // assuming you have 'id' as a route parameter

      // Fetch the specific package by ID
      this.http.get(`http://localhost:8000/api/airline/${airlineId}`, { withCredentials: true }).subscribe(
        (airlineData: any) => {
          this.airline = airlineData['airline'];
          this.name= this.airline.name;
          this.email=this.airline.email;
          this.id=this.airline.id;
        
          

        },
        (error) => {
          console.error('Error fetching package profile:', error);
        }
      );
    });
  }
airline : any
name=''
email=''
id:any

message= 'Success ! '
air_edit(){
  let data={'name':this.name,'email':this.email,'id':this.id}





  this.http.put(`http://localhost:8000/api/airline/edit`,data).subscribe(
        (airlineData: any) => {
          alert(this.message + airlineData['name'] + ' has been updated.')
          

        }
        
      );
    };

}



