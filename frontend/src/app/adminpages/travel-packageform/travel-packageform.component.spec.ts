import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TravelPackageformComponent } from './travel-packageform.component';

describe('TravelPackageformComponent', () => {
  let component: TravelPackageformComponent;
  let fixture: ComponentFixture<TravelPackageformComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [TravelPackageformComponent]
    });
    fixture = TestBed.createComponent(TravelPackageformComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
