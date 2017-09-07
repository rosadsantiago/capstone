/* global Vue, Rails*/
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      message: 'Hello Vue!',
      reviews: [],
      newReviewText: '',
      newReviewRating: '',
      newRestaurantId: '',
      newCategoryId: '',
    },
    mounted: function() {
      this.newRestaurantId = restaurantId;
      this.newCategoryId = categoryId;
      Rails.ajax({
        url: "/api/v1/review",
        type: "GET",
        success: function(data) {
          console.log(data);
          this.reviews = data;
        }.bind(this)
      });
    },

    methods: {
      addReview: function() {
        Rails.ajax({
          url: "/api/v1/review",
          type: "POST",
          data: `text=${this.newReviewText}&rating=${this.newReviewRating}&restaurant_id=${this.newRestaurantId}&category_id=${this.newCategoryId}`,
          success: function(data) {
            console.log('success!!!', data);
            this.reviews.push(data);
            this.newReviewText = "";
          }.bind(this)
        });
      }
    },


   
    computed: {

    }
  });
});
