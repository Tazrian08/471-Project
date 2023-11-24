import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AirlineindexComponent } from './airlineindex.component';

describe('AirlineindexComponent', () => {
  let component: AirlineindexComponent;
  let fixture: ComponentFixture<AirlineindexComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [AirlineindexComponent]
    });
    fixture = TestBed.createComponent(AirlineindexComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
