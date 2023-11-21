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
  selectedColor: string = 'roseGold';
  selectedNumber: number = 1;
  showColorDropdown: boolean = false;
  showDescriptionDropdown: boolean = false;

  colorOptions: string[] = ['roseGold', 'red', 'blue', 'green'];
  numberOptions: number[] = [1, 2, 3, 4, 5, 6];

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
  img(anything: string): void {
    this.package.name = anything;
  }

  changeColor(color: string): void {
    this.selectedColor = color;
  }

  changeNumber(number: number): void {
    this.selectedNumber = number;
  }

  addToBag(): void {
    // Implement the logic for adding the item to the bag
  }

  toggleColorDropdown(): void {
    this.showColorDropdown = !this.showColorDropdown;
  }

  toggleDescriptionDropdown(): void {
    this.showDescriptionDropdown = !this.showDescriptionDropdown;
  }
}
