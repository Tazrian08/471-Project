import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AirlineProfileComponent } from './airline-profile.component';

describe('AirlineProfileComponent', () => {
  let component: AirlineProfileComponent;
  let fixture: ComponentFixture<AirlineProfileComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [AirlineProfileComponent]
    });
    fixture = TestBed.createComponent(AirlineProfileComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
