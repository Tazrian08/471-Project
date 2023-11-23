import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DestinationIndexComponent } from './destination-index.component';

describe('DestinationIndexComponent', () => {
  let component: DestinationIndexComponent;
  let fixture: ComponentFixture<DestinationIndexComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DestinationIndexComponent]
    });
    fixture = TestBed.createComponent(DestinationIndexComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
