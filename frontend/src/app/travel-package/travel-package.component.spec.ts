import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TravelPackageComponent } from './travel-package.component';

describe('TravelPackageComponent', () => {
  let component: TravelPackageComponent;
  let fixture: ComponentFixture<TravelPackageComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [TravelPackageComponent]
    });
    fixture = TestBed.createComponent(TravelPackageComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
