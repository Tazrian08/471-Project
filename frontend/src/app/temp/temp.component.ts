import { Component } from '@angular/core';
import { Emitters } from '../emiters/emitters';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-temp',
  templateUrl: './temp.component.html',
  styleUrls: ['./temp.component.css']
})
export class TempComponent {

  message:any="";
  auth=false;

  constructor(private http: HttpClient) {
  }

  ngOnInit(): void {
    this.http.get('http://localhost:8000/api/user', {withCredentials: true}).subscribe(
      (res: any) => {
        this.message = `Hi ${res.name}`;
        console.log("This runs")
        Emitters.authEmitter.emit(true);
      }
    );
    Emitters.authEmitter.subscribe(
      (data: any) => {
        this.auth= data;
        console.log("This is working");
      }
    );
  


    // Emitters.dataEmitter.subscribe(         FOR RECEIVING DATA FROM ANOTHER COMPONENT
    //   (data: any) => {
    //     this.user = data;
    //     console.log("This is working");
    //     console.log(this.user)
    //   }
    // );
  }

}
