import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelfromComponent } from './hotelfrom.component';

describe('HotelfromComponent', () => {
  let component: HotelfromComponent;
  let fixture: ComponentFixture<HotelfromComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [HotelfromComponent]
    });
    fixture = TestBed.createComponent(HotelfromComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
