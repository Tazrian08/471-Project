import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DestinationProfileComponent } from './destination-profile.component';

describe('DestinationProfileComponent', () => {
  let component: DestinationProfileComponent;
  let fixture: ComponentFixture<DestinationProfileComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DestinationProfileComponent]
    });
    fixture = TestBed.createComponent(DestinationProfileComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
