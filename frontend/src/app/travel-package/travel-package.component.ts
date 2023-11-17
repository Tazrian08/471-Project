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
        // Sort the packages by name in alphabetical order
        this.travelPackages = packages.sort((a: any, b: any) => (a.name < b.name ? -1 : 1)); 
      },
      (error) => {
        console.error('Error fetching travel packages:', error);
      }
    );
  }
}