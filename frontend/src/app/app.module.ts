import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { RegisterComponent } from './register/register.component';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { LoginComponent } from './login/login.component';
import { TempComponent } from './temp/temp.component';
import { HomeComponent } from './home/home.component';
import { ProfileComponent } from './profile/profile.component';
import { TravelPackageComponent } from './travel-package/travel-package.component';
import { DestinationformComponent } from './adminpages/destinationform/destinationform.component';
import { AirlineformComponent } from './adminpages/airlineform/airlineform.component';
import { NavbarComponent } from './partials/navbar/navbar.component';
import { PackageProfileComponent } from './package-profile/package-profile.component';
import { TravelPackageformComponent } from './adminpages/travel-packageform/travel-packageform.component';
import { AttractionformComponent } from './adminpages/attractionform/attractionform.component';
import { DestinationIndexComponent } from './destination_pages/destination-index/destination-index.component';
import { HotelfromComponent } from './hotelpages/hotelfrom/hotelfrom.component';
import { HotelindexComponent } from './hotelpages/hotelindex/hotelindex.component';
import { AirlineindexComponent } from './airline_pages/airlineindex/airlineindex.component';
import { AirlineProfileComponent } from './airline_pages/airline-profile/airline-profile.component';
import { FlightsComponent } from './airline_pages/flights/flights.component';
import { DestinationProfileComponent } from './destination_pages/destination-profile/destination-profile.component';
import { DesNavComponent } from './partials/des-nav/des-nav.component';
import { DesEditComponent } from './adminpages/editpages/des-edit/des-edit.component';
import { AirlineEditComponent } from './adminpages/editpages/airline-edit/airline-edit.component';
import { CartComponent } from './cart/cart.component';
import { PaymentComponent } from './payment/payment.component';
import { CustomPackageComponent } from './custom-package/custom-package.component';
import { AttractionProfileComponent } from './attraction-profile/attraction-profile.component';
import { HotelProfileComponent } from './hotelpages/hotel-profile/hotel-profile.component';




@NgModule({
  declarations: [
    AppComponent,
    RegisterComponent,
    LoginComponent,
    TempComponent,
    HomeComponent,
    ProfileComponent,
    TravelPackageComponent,
    DestinationformComponent,
    AirlineformComponent,
    NavbarComponent,
    PackageProfileComponent,
    TravelPackageformComponent,
    AttractionformComponent,
    DestinationIndexComponent,
    HotelfromComponent,
    HotelindexComponent,
    AirlineindexComponent,
    AirlineProfileComponent,
    FlightsComponent,
    DestinationProfileComponent,
    DesNavComponent,
    DesEditComponent,
    AirlineEditComponent,
    CartComponent,
    PaymentComponent,
    CustomPackageComponent,
    AttractionProfileComponent,
    HotelProfileComponent,


  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
