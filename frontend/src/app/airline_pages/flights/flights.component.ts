import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { forkJoin } from 'rxjs';

@Component({
  selector: 'app-flights',
  templateUrl: './flights.component.html',
  styleUrls: ['./flights.component.css']
})
export class FlightsComponent implements OnInit {
  flights: any[] = [];

  constructor(private http: HttpClient, private router: Router) {}

  ngOnInit(): void {
    this.http.get('http://localhost:8000/api/flight', { withCredentials: true }).subscribe(
      (packages: any) => {
        this.flights = packages;

        // Fetch destination names based on destination IDs
        this.fetchDestinationNames();
        this.fetchAirlineNames();
      },
      (error) => {
        console.error('Error fetching flights:', error);
      }
    );
  }

  // Method to navigate to the package profile with the specific package ID
  goToAirlineFlights(airlineId: any): void {
    this.router.navigate(['/find_flights', airlineId]);
  }

  // Fetch destination names based on destination IDs
  fetchDestinationNames(): void {
    const requests = this.flights.map(flight =>
      this.http.get(`http://localhost:8000/api/alldestination/${flight.destination_id}`)
    );
  
    forkJoin(requests).subscribe(
      (destinations: any[]) => {
        destinations.forEach((destination, index) => {
          // Check if 'destination' contains 'destination' property
          if (destination.destination) {
            this.flights[index].destination_name = destination.destination.city;
          }
        });
      },
      (error) => {
        console.error('Error fetching destination name:', error);
      }
    );
  }
  fetchAirlineNames(): void {
    const requests = this.flights.map(flight =>
      this.http.get(`http://localhost:8000/api/airline/${flight.airlines_id}`)
    );
  
    forkJoin(requests).subscribe(
      (airlines: any[]) => {
        console.log('API Response:', airlines);
    
        airlines.forEach((airlines, index) => {
          if (airlines.airlines) {
            this.flights[index].airline_name = airlines.airlines.name;
          }
        });
      },
      (error) => {
        console.error('Error fetching airline names:', error);
      }
    );
    
  }
}