/* global Vue */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      message: 'Hello Vue!',
      reviews: [
        'Great fresh seafood in the midwest!',
        'will come back soon',
        'get the oysters!'
      ],
      newReviewText: ''
    },
    mounted: function() {

    },
    methods: {
      addReview: function() {
        Rails.ajax(
        );
        this.reviews.push(this.newReviewText);
        this.newReviewText = '';
      }
    },
    computed: {

    }
  });
});
