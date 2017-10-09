import UIkit from 'uikit';
import Icons from 'uikit/dist/js/uikit-icons';


document.addEventListener('DOMContentLoaded', () => {

  console.log('Webpack is working!');

  // loads the Icon plugin
  UIkit.use(Icons);

  console.log('UIkit is configured');
});

