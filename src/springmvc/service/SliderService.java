package springmvc.service;

import java.util.List;

import springmvc.entity.Slider;

public interface SliderService {
	public List<Slider> getSliders();
	public void saveSlider(Slider theSlider);
	public Slider getSlider(int theId);
	public void deleteSlider(int theId);
}
