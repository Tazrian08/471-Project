import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DesNavComponent } from './des-nav.component';

describe('DesNavComponent', () => {
  let component: DesNavComponent;
  let fixture: ComponentFixture<DesNavComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DesNavComponent]
    });
    fixture = TestBed.createComponent(DesNavComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
