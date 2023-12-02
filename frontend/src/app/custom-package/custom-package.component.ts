import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';
import { forkJoin } from 'rxjs';

@Component({
  selector: 'app-custom-package',
  templateUrl: './custom-package.component.html',
  styleUrls: ['./custom-package.component.css']
})
export class CustomPackageComponent {
  selectedFile: File | null = null;
  roomPrices: { [key: string]: any[] } = {};
  name: string = '';
  hotel_price: string = '';
  destination_id: string = '';
  hotel_id: string = '';
  room_price: string = ''; // Add this line


  onFileSelected(event: any): void {
    this.selectedFile = event.target.files[0];
  }

  constructor(private http: HttpClient, private router: Router) {
    this.http.get("http://localhost:8000/api/custom-package/create")
      .subscribe((resultData: any) => {
        this.destinations = resultData;
        console.log(this.destinations);
      });

    this.http.get("http://localhost:8000/api/airline")
      .subscribe((resultData: any) => {
        this.airlines = resultData;
        console.log(this.airlines);
      });
  }

  // name = "";
  description = "";
  // hotel_price = "";
  // destination_id = "";
  // hotel_id = "";
  airline_id = "";
  departure = "";
  return = "";

  destinations: any;
  airlines: any;
  airlineflag: boolean = false;
  destinationflag: boolean = false;
  flights: any;
  image: any;
  hotels: any;

  getFlight(airlineId: any): void {
    this.http.get(`http://localhost:8000/api/flightselector/${airlineId}`)
      .subscribe((resultData: any) => {
        this.flights = resultData;
        this.airlineflag = true;
        console.log(this.flights);
      });
  }

  getHotels(destinationId: any): void {
    console.log(destinationId);
    this.http.get(`http://localhost:8000/api/hotelselector/${destinationId}`)
      .subscribe((resultData: any) => {
        this.hotels = resultData;
        this.destinationflag = true;
        console.log(this.hotels);
        /// Fetch room prices for each hotel
      this.roomPrices = {}; // Change this line
      
      // Use forkJoin to wait for all requests to complete
      forkJoin(
        this.hotels.map((hotel: any) =>
          this.http.get(`http://localhost:8000/api/hotel-room-details/${hotel.id}`)
        )
      ).subscribe((roomDetailsArray: any) => {
        // Assign room details to corresponding hotel IDs
        this.hotels.forEach((hotel: any, index: number) => {
          this.roomPrices[hotel.id] = roomDetailsArray[index];
        });
      });
    });
}
  custom_package_sub() {
    const formData = new FormData();

    // Append the existing form data
    formData.append('name', this.name);
    formData.append('price', this.hotel_price);
    formData.append('description', this.description);
    formData.append('destination_id', this.destination_id);
    formData.append('airline_id', this.airline_id);
    formData.append('hotel_id', this.hotel_id);
    formData.append('departure', this.departure);
    formData.append('return', this.return);

    if (this.selectedFile) {
      formData.append('image', this.selectedFile, this.selectedFile.name);
    }

    this.http.post("http://localhost:8000/api/custom-package/create", formData).subscribe((resultData: any) => {

      alert(resultData["message"] + resultData["package"].name + " has been registered");
      // this.router.navigate(['/login'])
      this.image = resultData["image"];

    });
    console.log("This runs");

  }
}
