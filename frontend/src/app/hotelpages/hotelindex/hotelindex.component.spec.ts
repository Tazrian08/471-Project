import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelindexComponent } from './hotelindex.component';

describe('HotelindexComponent', () => {
  let component: HotelindexComponent;
  let fixture: ComponentFixture<HotelindexComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [HotelindexComponent]
    });
    fixture = TestBed.createComponent(HotelindexComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
