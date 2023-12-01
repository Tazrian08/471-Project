import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Emitters } from '../emiters/emitters';

@Component({
  selector: 'app-payment',
  templateUrl: './payment.component.html',
  styleUrls: ['./payment.component.css']
})
export class PaymentComponent {

  auth:boolean=false
  admin:boolean=false
  items:any
  user_id:any


  constructor(private http: HttpClient, private router: Router, private route: ActivatedRoute) {
    
    const userId = this.route.snapshot.paramMap.get('id');

  // Convert the id to a number if needed
  const numericUserId = Number(userId);
  this.user_id=numericUserId
  // Now you can use the userId in your component
  console.log('User ID:', this.user_id);

  let data={"user_id":this.user_id}

  this.http.post('http://localhost:8000/api/cart/index2', data).subscribe(
    (res: any) => {
      console.log(res)
      this.items=res
    }
  );


  }

booking(){
  let datas={'items':this.items}
  console.log(datas)
  this.http.post('http://localhost:8000/api/booking', datas).subscribe(
    (res: any) => {
      console.log(res)
      this.router.navigate(['/cart'])
    }
  );

}



}
