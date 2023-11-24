import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-travel-packageform',
  templateUrl: './travel-packageform.component.html',
  styleUrls: ['./travel-packageform.component.css']
})
export class TravelPackageformComponent {

  selectedFile: File | null = null;


  onFileSelected(event: any): void {
    this.selectedFile = event.target.files[0];
  }


  constructor(private http: HttpClient, private router: Router) 
  {
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

  }

  name=""
  description=""
  price=""
  destination_id=""
  airline_id=""
  departure=""
  return=""



  destinations:any
  airlines: any
  airlineflag: boolean =false
  flights: any
  image:any
  



// getFlight(airline: any)

//   { 
    

    
//     this.http.post("http://localhost:8000/api/flightselector/${airline}")
  
//     .subscribe((resultData: any)=>
//     {
//       this.flights=resultData

//       this.airlineflag=true
//       console.log(resultData.destinations)
//       console.log(this.flights)
//     });

// }


getFlight(airlineId: any): void {
  this.http.get(`http://localhost:8000/api/flightselector/${airlineId}`)
    .subscribe((resultData: any) => {
      this.flights = resultData;
      this.airlineflag = true;
      console.log(this.flights);
    });
}






  package_sub()
  {
    const formData = new FormData();

    // Append the existing form data
    formData.append('name', this.name);
    formData.append('price', this.price);
    formData.append('description', this.description);
    formData.append('destination_id', this.destination_id);
    formData.append('airline_id', this.airline_id);
    formData.append('departure', this.departure);
    formData.append('return', this.return);

    if (this.selectedFile) {
      formData.append('image', this.selectedFile, this.selectedFile.name);
    }


    this.http.post("http://localhost:8000/api/travel-package/create",formData).subscribe((resultData: any)=> 
    {

        alert(resultData["message"] + resultData["package"].name + " has been registered")
        // this.router.navigate(['/login'])
        this.image=resultData["image"]

    });
    console.log("This runs")
    
  }
  

}
