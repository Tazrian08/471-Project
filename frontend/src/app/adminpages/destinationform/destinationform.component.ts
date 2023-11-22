import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-destinationform',
  templateUrl: './destinationform.component.html',
  styleUrls: ['./destinationform.component.css']
})
export class DestinationformComponent {
  constructor(private http: HttpClient, private router: Router ) 
  {

  }

  selectedFile: File | null = null;


  onFileSelected(event: any): void {
    this.selectedFile = event.target.files[0];
  }



  country=''
  city=''
  description=''


  des_sub(){
    // let bodyData = {
    //   "country" : this.country,
    //   "city" : this.city,
    //   "description" : this.description
    // };
    const formData = new FormData();

    // Append the existing form data
    formData.append('country', this.country);
    formData.append('city', this.city);
    formData.append('description', this.description);

    if (this.selectedFile) {
      formData.append('image', this.selectedFile, this.selectedFile.name);
    }


    this.http.post("http://localhost:8000/api/destination/create",formData).subscribe((resultData: any)=> 
    {

        alert(resultData["message"] + resultData["destination"].country + " has been registered")
        // this.router.navigate(['/login'])

    });
    console.log("This runs")
    
  }

  


}
