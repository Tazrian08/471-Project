import { Component } from '@angular/core';
import { ActivatedRoute } from '@angular/router';   //for receiving data from another componenet
import { Emitters } from '../emiters/emitters';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-temp',
  templateUrl: './temp.component.html',
  styleUrls: ['./temp.component.css']
})
export class TempComponent {

  user: any;

  constructor(private http: HttpClient) {
  }

  ngOnInit(): void {
    Emitters.dataEmitter.subscribe(
      (data: any) => {
        this.user = data;
        console.log("This is working");
        console.log(this.user)
      }
    );
  }

}
