import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { RegisterComponent } from './register/register.component';
import { LoginComponent } from './login/login.component';
import { TempComponent } from './temp/temp.component';
import { HomeComponent } from './home/home.component';
import { ProfileComponent } from './profile/profile.component';
import { TravelPackageComponent } from './travel-package/travel-package.component';
import { DestinationformComponent } from './adminpages/destinationform/destinationform.component';
import { AirlineformComponent } from './adminpages/airlineform/airlineform.component';
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
import { AirlineEditComponent } from './adminpages/editpages/airline-edit/airline-edit.component';
import { CartComponent } from './cart/cart.component';
import { CustomPackageComponent } from './custom-package/custom-package.component';

const routes: Routes = [
  {path: "register", component: RegisterComponent},
  {path: "login", component: LoginComponent},
  {path: "temp", component: TempComponent},
  {path: "home", component: HomeComponent },
  {path: "profile", component: ProfileComponent},
  {path : "travel-packages", component: TravelPackageComponent},
  {path : "admin/destination", component: DestinationformComponent},
  {path : "admin/travel-package", component: TravelPackageformComponent},
  {path : "admin/attraction", component: AttractionformComponent},
  {path : "admin/airline", component: AirlineformComponent},
  {path: 'travel-packages', component: TravelPackageComponent },
  {path: 'package-profile/:id', component: PackageProfileComponent },
  {path : "destination/index", component: DestinationIndexComponent},
  {path: '', redirectTo: '/travel-packages', pathMatch: 'full' },
  {path : "destination/profile/:id", component: DestinationProfileComponent},
  {path: '', redirectTo: '/travel-packages', pathMatch: 'full' },
  {path: "admin/hotels", component: HotelfromComponent},
  {path: "hotels", component: HotelindexComponent},
  {path:"airline", component:AirlineindexComponent},
  {path:"airline-profile/:id", component: AirlineProfileComponent},
  {path:"flight", component:FlightsComponent},
  {path:"destination/:id", component: DestinationIndexComponent},
  {path: "admin/edit/airline/:id", component: AirlineEditComponent},
  {path: "cart", component: CartComponent},
  // {path:"airline/:id", component: AirlineindexComponent},
  {path: "custom-package", component: CustomPackageComponent},

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
