import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-hotelfrom',
  templateUrl: './hotelfrom.component.html',
  styleUrls: ['./hotelfrom.component.css']
})
export class HotelfromComponent {
  selectedFile: File | null = null;

  onFileSelected(event: any): void {
    this.selectedFile = event.target.files[0];
  }

  constructor(private http: HttpClient, private router: Router ) {
  }
  ngOnInit(): void {
    this.http.get("http://localhost:8000/api/alldestination").subscribe((resultData: any) => {
      this.destinations = resultData;
      console.log(this.destinations);
    });
  }
  

  

  name =''
  email =''
  prices =''
  phone_no =''
  destination_id =''
  classic_prices:any
  deluxe_prices:any
  presidential_prices:any
  
  destinations:any[]=[];
  image:any;


  hotel_sub(){
    const formData = new FormData();

    formData.append('name', this.name);
    formData.append('email', this.email);
    formData.append('classic_prices', this.classic_prices);
    formData.append('deluxe_prices', this.deluxe_prices);
    formData.append('presidential_prices', this.presidential_prices);
    formData.append('phone_no', this.phone_no);
    formData.append('destination_id', this.destination_id);

    if (this.selectedFile) {
      formData.append('image', this.selectedFile, this.selectedFile.name);
    }


    this.http.post("http://localhost:8000/api/hotels/create", formData).subscribe(
  (resultData: any) => {
    alert(resultData["message"] + resultData["hotel_name"] + " has been registered");
    this.image=resultData["image"];
    console.log("This runs");
  },
  (error) => {
    console.error('Error during hotel creation:', error);
    // Handle the error appropriately (e.g., display an error message to the user)
  }
);



  }


}
