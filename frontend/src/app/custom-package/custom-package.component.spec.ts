import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CustomPackageComponent } from './custom-package.component';

describe('CustomPackageComponent', () => {
  let component: CustomPackageComponent;
  let fixture: ComponentFixture<CustomPackageComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [CustomPackageComponent]
    });
    fixture = TestBed.createComponent(CustomPackageComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
