import { HttpClient } from '@angular/common/http';
import { Component, OnInit} from '@angular/core';
import { Router } from '@angular/router';
import { Emitters } from 'src/app/emiters/emitters';


@Component({
  selector: 'app-hotelindex',
  templateUrl: './hotelindex.component.html',
  styleUrls: ['./hotelindex.component.css']
})
export class HotelindexComponent implements OnInit{
hotels: any[]=[]
search:any
auth:boolean=false
  admin:boolean=false
  Login:boolean=true
  Register:boolean=true

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
  goToHotelProfile(hotelId: any): void {
    this.router.navigate(['/hotel-profile', hotelId]);
  }

}
