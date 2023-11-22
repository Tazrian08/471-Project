import { Component, Input } from '@angular/core';
import { Emitters } from 'src/app/emiters/emitters';

@Component({
  selector: 'app-des-nav',
  templateUrl: './des-nav.component.html',
  styleUrls: ['./des-nav.component.css']
})
export class DesNavComponent {


  @Input() Profile: boolean = true;
  @Input() Attractions: boolean = false ;
  @Input() Packages: boolean = false ;
  @Input() Hotels: boolean = false ;

  profile(){
    this.Profile=true
    this.Attractions=false
    this.Packages=false
    this.Hotels=false
    Emitters.profileEmitter.emit(true);
    Emitters.attractionsEmitter.emit(false);
    Emitters.packagesEmitter.emit(false);
    Emitters.hotelsEmitter.emit(false);
  }
  attractions(){
    this.Profile=false
    this.Attractions=true
    this.Packages=false
    this.Hotels=false
    Emitters.profileEmitter.emit(false);
    Emitters.attractionsEmitter.emit(true);
    Emitters.packagesEmitter.emit(false);
    Emitters.hotelsEmitter.emit(false);
  }
  packages(){
    this.Profile=false
    this.Attractions=false
    this.Packages=true
    this.Hotels=false
    Emitters.profileEmitter.emit(false);
    Emitters.attractionsEmitter.emit(false);
    Emitters.packagesEmitter.emit(false);
    Emitters.hotelsEmitter.emit(true);
  }
  hotels(){
    this.Profile=false
    this.Attractions=false
    this.Packages=false
    this.Hotels=true
    Emitters.profileEmitter.emit(false);
    Emitters.attractionsEmitter.emit(false);
    Emitters.packagesEmitter.emit(false);
    Emitters.hotelsEmitter.emit(true);
  }

}
