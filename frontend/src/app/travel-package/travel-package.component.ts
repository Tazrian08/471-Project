import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-travel-package',
  templateUrl: './travel-package.component.html',
  styleUrls: ['./travel-package.component.css']
})

export class TravelPackageComponent{
  travelPackages: any[] = [];

  constructor(private http: HttpClient) {}

  ngOnInit(): void {
    this.http.get('http://localhost:8000/api/travel-packages', { withCredentials: true }).subscribe(
      (packages:any) => {
        this.travelPackages = packages;
      },
      (error) => {
        console.error('Error fetching travel packages:', error);
      }
    );
  }
}