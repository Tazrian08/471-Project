import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DesEditComponent } from './des-edit.component';

describe('DesEditComponent', () => {
  let component: DesEditComponent;
  let fixture: ComponentFixture<DesEditComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DesEditComponent]
    });
    fixture = TestBed.createComponent(DesEditComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
