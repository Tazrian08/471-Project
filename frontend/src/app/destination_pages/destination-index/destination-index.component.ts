import { Component,OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-destination-index',
  templateUrl: './destination-index.component.html',
  styleUrls: ['./destination-index.component.css']
})
export class DestinationIndexComponent implements OnInit{

  destinations:any
  constructor(private route: ActivatedRoute) {}

  ngOnInit(): void {
    // Access the 'id' parameter from the route
    this.route.params.subscribe(params => {
      const destinationId = params['id'];
      // Now you can use 'destinationId' in your component logic
    });
  }

  search=""

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

  }



  // Search(search: any): void {
  //   this.http.get(`http://localhost:8000/api/destination/search/${search}`)
  //     .subscribe((resultData: any) => {
  //       this.destinations=resultData
  //     });
  // }
  Search(search: any): void {
    let apiUrl: string;
  
    // Check if the search string is empty
    if (search !== '') {
      apiUrl = `http://localhost:8000/api/destination/search/${search}`;
    } else {
      apiUrl = 'http://localhost:8000/api/alldestination';
    }
  
    this.http.get(apiUrl).subscribe((resultData: any) => {
      this.destinations = resultData;
    });
  }

  goToDestinationProfile(destinationID: any): void {
    this.router.navigate(['/destination/profile', destinationID]);
  }
  
  
}
