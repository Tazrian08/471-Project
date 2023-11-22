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
    AttractionformComponent
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
