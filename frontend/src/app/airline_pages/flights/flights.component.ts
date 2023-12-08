import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { forkJoin } from 'rxjs';
import { Emitters } from 'src/app/emiters/emitters';

@Component({
  selector: 'app-flights',
  templateUrl: './flights.component.html',
  styleUrls: ['./flights.component.css']
})
export class FlightsComponent implements OnInit {


  flights: any
  auth:boolean=false
  admin:boolean=false
  Login:boolean=true
  Register:boolean=true
  destinations:any
  airlines: any
  defaultorder:any


  selectedDestination:any="Default"
  selectedAirline:any="Default"
  sort="Price"

  constructor(private http: HttpClient, private router: Router) {}

  ngOnInit(): void {

    { 
    
      this.http.get("http://localhost:8000/api/alldestination")
    
      .subscribe((resultData: any)=>
      {
        this.destinations=resultData
        console.log(this.destinations)
      });
    }
    { 
    
      this.http.get("http://localhost:8000/api/airline")
    
      .subscribe((resultData: any)=>
      {
        this.airlines=resultData
        console.log(this.airlines)
      });
    }




    this.http.get('http://localhost:8000/api/flight', { withCredentials: true }).subscribe(
      (packages: any) => {
        this.flights = packages;
        this.defaultorder = packages;
        this.flights.sort((a:any, b:any) => a.prices - b.prices);
        console.log(this.flights)

        // Fetch destination names based on destination IDs
        // this.fetchDestinationNames();
        // this.fetchAirlineNames();
      },
      (error) => {
        console.error('Error fetching flights:', error);
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

  getflight(){
    this.sort="Price"
    if(this.selectedDestination=="Default" && this.selectedAirline=="Default"){
      this.http.get('http://localhost:8000/api/flight', { withCredentials: true }).subscribe(
        (packages: any) => {
          this.flights = packages;
          console.log(this.flights)
        },
        (error) => {
          console.error('Error fetching flights:', error);
        }
      );
    }

    if(this.selectedDestination!="Default" && this.selectedAirline!="Default"){
      let data={"destination":this.selectedDestination,"airline":this.selectedAirline};
        this.http.post('http://localhost:8000/api/desairflight', data).subscribe(
          (packages: any) => {
            this.flights = packages;
            console.log("condition works0")
            console.log(this.flights)
          },
          (error) => {
            console.error('Error fetching flights:', error);
          }
        );
      }
    
  if(this.selectedDestination!="Default" && this.selectedAirline=="Default"){
    let data={"destination":this.selectedDestination};
      this.http.post('http://localhost:8000/api/desflight', data).subscribe(
        (packages: any) => {
          this.flights = packages;
          console.log("condition works1")
          console.log(this.flights)
        },
        (error) => {
          console.error('Error fetching flights:', error);
        }
      );
    }
    if(this.selectedDestination=="Default" && this.selectedAirline!="Default"){
      let data={"destination":this.selectedDestination,"airline":this.selectedAirline};
        this.http.post('http://localhost:8000/api/airflight', data).subscribe(
          (packages: any) => {
            this.flights = packages;
            console.log("condition works0")
            console.log(this.flights)
          },
          (error) => {
            console.error('Error fetching flights:', error);
          }
        );
      }
      this.flights.sort((a:any, b:any) => a.prices - b.prices);
  }


  Sort() {
    if (this.sort === "Price") {
      this.flights.sort((a: any, b: any) => a.prices - b.prices);
    }
  
    if (this.sort === "Date") {
      // Convert departure to timestamp before sorting
      this.flights.sort((a: any, b: any) => {
        const departureA = new Date(a.departure).getTime();
        const departureB = new Date(b.departure).getTime();
        return departureA - departureB;
      });
    }
  }
  

  // Method to navigate to the package profile with the specific package ID
  goToAirlineFlights(airlineId: any): void {
    this.router.navigate(['/find_flights', airlineId]);
  }

  // Fetch destination names based on destination IDs
  // fetchDestinationNames(): void {
  //   const requests = this.flights.map(flight =>
  //     this.http.get(`http://localhost:8000/api/alldestination/${flight.destination_id}`)
  //   );
  
  //   forkJoin(requests).subscribe(
  //     (destinations: any[]) => {
  //       destinations.forEach((destination, index) => {
  //         // Check if 'destination' contains 'destination' property
  //         if (destination.destination) {
  //           this.flights[index].destination_name = destination.destination.city;
  //         }
  //       });
  //     },
  //     (error) => {
  //       console.error('Error fetching destination name:', error);
  //     }
  //   );
  // }
  // fetchAirlineNames(): void {
  //   const requests = this.flights.map(flight =>
  //     this.http.get(`http://localhost:8000/api/airline/${flight.airlines_id}`)
  //   );
  
  //   forkJoin(requests).subscribe(
  //     (airlines: any[]) => {
  //       console.log('API Response:', airlines);
    
  //       airlines.forEach((airlines, index) => {
  //         if (airlines.airlines) {
  //           this.flights[index].airline_name = airlines.airlines.name;
  //         }
  //       });
  //     },
  //     (error) => {
  //       console.error('Error fetching airline names:', error);
  //     }
  //   );
    
  // }
  deleteairline(airlineId: any): void {
    this.http.delete(`http://localhost:8000/api/airline/delete/${airlineId}`, {withCredentials: true}).subscribe(
      (res: any) => {
        alert(res)
        this. ngOnInit()
      }
    );

}
goToAirlineEdit(airlineId: any): void {
  this.router.navigate(['/admin/edit/airline', airlineId]);
}
}