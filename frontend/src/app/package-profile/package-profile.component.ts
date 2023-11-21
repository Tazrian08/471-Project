// src/app/components/package-profile/package-profile.component.ts

import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-package-profile',
  templateUrl: './package-profile.component.html',
  styleUrls: ['./package-profile.component.css']
})
export class PackageProfileComponent implements OnInit {
  package: any;
  selectedNumber: number = 1;
  showDescriptionDropdown: boolean = false;
  showDescriptionDropdown2: boolean = false;



  constructor(private http: HttpClient, private route: ActivatedRoute) {}

  ngOnInit(): void {
    // Retrieve the package ID from the route parameters
    this.route.params.subscribe(params => {
      const packageId = +params['id']; // assuming you have 'id' as a route parameter

      // Fetch the specific package by ID
      this.http.get(`http://localhost:8000/api/travel-packages/${packageId}`, { withCredentials: true }).subscribe(
        (packageData: any) => {
          this.package = packageData;
        },
        (error) => {
          console.error('Error fetching package profile:', error);
        }
      );
    });
  }
  

  addToBag(): void {
    // Implement the logic for adding the item to the bag
  }
  toggleDescriptionDropdown(): void {
    this.showDescriptionDropdown = !this.showDescriptionDropdown;
  }
  toggleDescriptionDropdown2(): void {
    this.showDescriptionDropdown2 = !this.showDescriptionDropdown2;
  }
}
