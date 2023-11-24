import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-airline-profile',
  templateUrl: './airline-profile.component.html',
  styleUrls: ['./airline-profile.component.css']
})
export class AirlineProfileComponent implements OnInit {
  airline:any;
  image: any

  constructor(private http: HttpClient, private route: ActivatedRoute) {}

  ngOnInit(): void {
    // Retrieve the package ID from the route parameters
    this.route.params.subscribe(params => {
      const airlineId = +params['id']; // assuming you have 'id' as a route parameter

      // Fetch the specific package by ID
      this.http.get(`http://localhost:8000/api/airline/${airlineId}`, { withCredentials: true }).subscribe(
        (airlineData: any) => {
          this.airline = airlineData['airline'];
          this.image=airlineData['image']

        },
        (error) => {
          console.error('Error fetching package profile:', error);
        }
      );
    });
  }
}