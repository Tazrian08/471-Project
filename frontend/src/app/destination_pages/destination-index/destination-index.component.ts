import { Component,OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { HttpClient } from '@angular/common/http';

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


}
