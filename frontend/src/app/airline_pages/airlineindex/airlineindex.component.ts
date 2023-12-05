import { HttpClient } from '@angular/common/http';
import { Component, OnInit} from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-airlineindex',
  templateUrl: './airlineindex.component.html',
  styleUrls: ['./airlineindex.component.css']
})
export class AirlineindexComponent implements OnInit{
  airlines: any[]=[]
  
  constructor(private http: HttpClient, private router: Router) {}
  
    ngOnInit(): void {
      this.http.get('http://localhost:8000/api/airline', { withCredentials: true }).subscribe(
        (airlines: any) => {
          this.airlines = airlines;
        },
        (error) => {
          console.error('Error fetching airlines:', error);
        }
      );
    }
    goToAirlineProfile(airlineId: any): void {
      this.router.navigate(['/airline-profile', airlineId]);
    }
    goToAirlineEdit(airlineId: any): void {
      this.router.navigate(['/admin/edit/airline', airlineId]);
    }
    deleteairline(airlineId: any): void {
      this.http.delete(`http://localhost:8000/api/airline/delete/${airlineId}`, {withCredentials: true}).subscribe(
        (res: any) => {
          alert(res)
          this. ngOnInit()
        }
      );

  }

}
