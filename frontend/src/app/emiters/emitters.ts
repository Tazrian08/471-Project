import {EventEmitter} from '@angular/core';

export class Emitters {
  static authEmitter = new EventEmitter<boolean>();
  static adminEmitter = new EventEmitter<boolean>();

  //des-nav Emitters
  static profileEmitter = new EventEmitter<boolean>();
  static attractionsEmitter = new EventEmitter<boolean>();
  static packagesEmitter = new EventEmitter<boolean>();
  static hotelsEmitter = new EventEmitter<boolean>();


}