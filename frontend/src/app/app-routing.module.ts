import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { RegisterComponent } from './register/register.component';
import { LoginComponent } from './login/login.component';
import { TempComponent } from './temp/temp.component';
import { ProfileComponent } from './profile/profile.component';
import { TravelPackageComponent } from './travel-package/travel-package.component';
import { PackageProfileComponent } from './package-profile/package-profile.component';

const routes: Routes = [
  {path: "register", component: RegisterComponent},
  {path: "login", component: LoginComponent},
  {path: "temp", component: TempComponent},
  {path: "profile", component: ProfileComponent},
  { path: 'travel-packages', component: TravelPackageComponent },
  { path: 'package-profile/:id', component: PackageProfileComponent },
  { path: '', redirectTo: '/travel-packages', pathMatch: 'full' },

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
