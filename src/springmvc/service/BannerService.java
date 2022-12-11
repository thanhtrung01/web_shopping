package springmvc.service;

import java.util.List;

import springmvc.entity.Banner;

public interface BannerService {
	public List<Banner> getBanners();
	public void saveBanner(Banner theBanner);
	public Banner getBanner(int theId);
	public void deleteBanner(int theId);
}
