import { HttpClient } from '@angular/common/http';
import { Component, OnInit} from '@angular/core';
import { Router } from '@angular/router';


@Component({
  selector: 'app-hotelindex',
  templateUrl: './hotelindex.component.html',
  styleUrls: ['./hotelindex.component.css']
})
export class HotelindexComponent implements OnInit{
hotels: any[]=[]
search:any

constructor(private http: HttpClient, private router: Router) {}

  ngOnInit(): void {
    this.http.get('http://localhost:8000/api/hotels', { withCredentials: true }).subscribe(
      (hotels: any) => {
        this.hotels = hotels;
        console.log(this.hotels)
      },
      (error) => {
        console.error('Error fetching hotel:', error);
      }
    );
  }

}
