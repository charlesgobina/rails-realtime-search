// app/javascript/packs/search.js
import { Turbo } from "@hotwired/turbo-rails";

document.addEventListener('DOMContentLoaded', function() {
  const searchForm = document.getElementById('search-form');
  const searchInput = document.getElementById('search-input');
  const searchResultsContainer = document.getElementById('search-results');

  searchForm.addEventListener('submit', function(event) {
    event.preventDefault();
    performSearch(searchInput.value);
  });

  searchInput.addEventListener('input', function() {
    performSearch(searchInput.value);
  });

  function performSearch(query) {
    fetch(`/search?query=${query}`, {
      headers: { 'Turbo-Frame': 'search-results' }
    })
    .then(response => response.text())
    .then(html => Turbo.renderStreamMessage(html))
    .catch(error => console.error('Error:', error));
  }
});
