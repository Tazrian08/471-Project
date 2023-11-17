import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PackageProfileComponent } from './package-profile.component';

describe('PackageProfileComponent', () => {
  let component: PackageProfileComponent;
  let fixture: ComponentFixture<PackageProfileComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [PackageProfileComponent]
    });
    fixture = TestBed.createComponent(PackageProfileComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
