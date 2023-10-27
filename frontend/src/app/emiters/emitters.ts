import {EventEmitter} from '@angular/core';

export class Emitters {
  static authEmitter = new EventEmitter<boolean>();
  static dataEmitter= new EventEmitter<any>();
}