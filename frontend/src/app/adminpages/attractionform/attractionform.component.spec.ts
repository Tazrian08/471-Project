import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AttractionformComponent } from './attractionform.component';

describe('AttractionformComponent', () => {
  let component: AttractionformComponent;
  let fixture: ComponentFixture<AttractionformComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [AttractionformComponent]
    });
    fixture = TestBed.createComponent(AttractionformComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
