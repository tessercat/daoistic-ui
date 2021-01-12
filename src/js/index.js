/*
 *  Copyright (c) 2021 Peter Christensen. All Rights Reserved.
 *  CC BY-NC-ND 4.0.
 */
import logger from './logger.js';

function hidePanel(panel) {
  panel.classList.add('hide');
  panel.classList.remove('show');
}

function showPanel(event, panel) {
  // Load clicked-link data into the definition panel.
  const article = document.querySelector(event.target.attributes.href.value);
  panel.innerHTML = article.outerHTML;
  //logger.info('height', event.target.offsetHeight);
  //logger.info('left', event.target.offsetLeft);
  //logger.info('top', event.target.offsetTop);
  //logger.info('width', event.target.offsetWidth);
  panel.classList.remove('hide');
  panel.classList.add('show');
}

function addVocabListeners() {
  const panel = document.querySelector('#definition');

  // Hide the panel when the document scrolls.
  document.addEventListener('scroll', () => {
    hidePanel(panel);
  });

  // Hide the panel when the document is clicked, unless the click is on
  // a Unihan character link or on the panel itself.
  document.addEventListener('click', (event) => {
    if (panel.classList.contains('hide')) {
      return;
    }
    let exempt = false;
    if (
        event.target.localName === 'a'
        && event.target.classList.contains('unihan')) {
      exempt = true;
    } else if (event.target.closest('#definition')) {
      exempt = true;
    }
    if (!exempt) {
      hidePanel(panel);
    }
  });

  // Show the panel when a Unihan character is clicked.
  document.querySelectorAll('.unihan').forEach((link) => {
    link.addEventListener('click', (event) => {
      showPanel(event, panel);
      event.preventDefault();
    });
  });

  logger.info('Vocab enabled.');
}

// Set log vars and hide vocab elements as soon as the script runs.
document.debugLogEnabled = true;
document.infoLogEnabled = true;
document.querySelectorAll('.v-toggle').forEach((section) => {
  section.style.display = 'none';
});

// Init the definitions panel when the page loads.
window.addEventListener('load', function() {
  addVocabListeners();
});
