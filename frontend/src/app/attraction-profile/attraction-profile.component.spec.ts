import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AttractionProfileComponent } from './attraction-profile.component';

describe('AttractionProfileComponent', () => {
  let component: AttractionProfileComponent;
  let fixture: ComponentFixture<AttractionProfileComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [AttractionProfileComponent]
    });
    fixture = TestBed.createComponent(AttractionProfileComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
