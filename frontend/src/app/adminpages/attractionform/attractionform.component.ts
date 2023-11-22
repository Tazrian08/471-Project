import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-attractionform',
  templateUrl: './attractionform.component.html',
  styleUrls: ['./attractionform.component.css']
})
export class AttractionformComponent {

  destinations: any
  attraction=''
  destination_id=''
  cost=''
  detail=''
  image: any


  selectedFile: File | null = null;


  onFileSelected(event: any): void {
    this.selectedFile = event.target.files[0];
  }



  constructor(private http: HttpClient, private router: Router) 
  {
    { 
    
      this.http.get("http://localhost:8000/api/alldestination")
    
      .subscribe((resultData: any)=>
      {
        this.destinations=resultData
        console.log(this.destinations)
      });
    }


 

  }
  attraction_sub()
  {
    const formData = new FormData();

    // Append the existing form data
    formData.append('attraction', this.attraction);
    formData.append('cost', this.cost);
    formData.append('detail', this.detail);
    formData.append('destination_id', this.destination_id);
    

    if (this.selectedFile) {
      formData.append('image', this.selectedFile, this.selectedFile.name);
    }


    this.http.post("http://localhost:8000/api/attraction/create",formData).subscribe((resultData: any)=> 
    {

        alert(resultData["message"] + resultData["attraction"].attraction + " has been registered")
        // this.router.navigate(['/login'])
        this.image=resultData["image"]

    });
    console.log("This runs")
    
  }

}
