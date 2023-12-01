import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Emitters } from '../emiters/emitters';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})
export class CartComponent {

  auth:boolean=false
  admin:boolean=false
  items:any
  user:any
  currentDate: any;
  total:any

  constructor(private http: HttpClient, private route: ActivatedRoute) {

    this.http.get('http://localhost:8000/api/user', {withCredentials: true}).subscribe(
      (res: any) => {
        this.user=res
        if (res.admin_access==1){
          Emitters.adminEmitter.emit(true);
        }
        Emitters.authEmitter.emit(true);
      }
    );
    Emitters.authEmitter.subscribe(
      (data: any) => {
        this.auth= data;
      }
    );
    Emitters.adminEmitter.subscribe(
      (data: any) => {
        this.admin= data;
      }
    );

    this.http.get('http://localhost:8000/api/cart/index', {withCredentials: true}).subscribe(
      (res: any) => {
        console.log(res)
        this.items=res

        const totalPrice = this.items.reduce((total: number, item: any) => {
          const itemPrice = Number(item.travel_package.price) + (200 * Number(item.amount));
          return total + itemPrice;
        }, 0);

        this.total=totalPrice

      }
    );
    

  }
  ngOnInit() {
    this.getCurrentDate();
  }

  getCurrentDate() {
    this.currentDate = new Date();
  }
}




