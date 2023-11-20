import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-travel-packageform',
  templateUrl: './travel-packageform.component.html',
  styleUrls: ['./travel-packageform.component.css']
})
export class TravelPackageformComponent {


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
    
    this.http.get("http://localhost:8000/api/allairline")
  
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
    let bodyData = {
      "name" : this.name,
      "price" : this.price,
      "description" : this.description,
      "destination_id" : this.destination_id,
      "airline_id" : this.airline_id,
      "departure" : this.departure,
      "return" : this.return
    };


    this.http.post("http://localhost:8000/api/travel-package/create",bodyData).subscribe((resultData: any)=> 
    {

        alert(resultData["message"] + resultData["package"].name + " has been registered")
        // this.router.navigate(['/login'])

    });
    console.log("This runs")
    
  }
  

}
