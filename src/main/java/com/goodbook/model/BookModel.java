package com.goodbook.model;

public class BookModel extends AbstractModel<BookModel> {
	private String name;
	private Long categoryId;
	private String description;
	private String image;
	private int rating;
	private Long authorId;
	//private String cateName;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public Long getAuthorId() {
		return authorId;
	}
	public void setAuthorId(Long authorId) {
		this.authorId = authorId;
	}
	public Long getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}
//	public String getCateName() {
//		return cateName;
//	}
//	public void setCateName(String cateName) {
//		this.cateName = cateName;
//	}

}
