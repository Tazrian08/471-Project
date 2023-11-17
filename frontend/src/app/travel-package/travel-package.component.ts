// src/app/components/travel-packages/travel-packages.component.ts

import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-travel-package',
  templateUrl: './travel-package.component.html',
  styleUrls: ['./travel-package.component.css']
})
export class TravelPackageComponent implements OnInit {
  travelPackages: any[] = [];

  constructor(private http: HttpClient, private router: Router) {}

  ngOnInit(): void {
    this.http.get('http://localhost:8000/api/travel-packages', { withCredentials: true }).subscribe(
      (packages: any) => {
        this.travelPackages = packages;
      },
      (error) => {
        console.error('Error fetching travel packages:', error);
      }
    );
  }

  // Method to navigate to the package profile with the specific package ID
  goToPackageProfile(packageId: any): void {
    this.router.navigate(['/package-profile', packageId]);
  }
}
