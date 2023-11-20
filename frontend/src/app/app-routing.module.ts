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

const routes: Routes = [
  {path: "register", component: RegisterComponent},
  {path: "login", component: LoginComponent},
  {path: "temp", component: TempComponent},
  {path: "", component: HomeComponent },
  {path: "profile", component: ProfileComponent},
  {path : "travel-packages", component: TravelPackageComponent},
  {path : "admin/destination", component: DestinationformComponent},
  {path : "admin/travel-package", component: TravelPackageformComponent},
  {path : "admin/attraction", component: AttractionformComponent},
  {path : "admin/airline", component: AirlineformComponent},
  { path: 'travel-packages', component: TravelPackageComponent },
  { path: 'package-profile/:id', component: PackageProfileComponent },
  { path: '', redirectTo: '/travel-packages', pathMatch: 'full' },

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
