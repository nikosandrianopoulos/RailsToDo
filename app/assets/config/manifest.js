window.onload = function() {
    // Customize the Swagger UI appearance
    const ui = window.ui;
  
    // Change the colors
    ui.colors.primary = '#336699'; // Change primary color
    ui.colors.success = '#4CAF50'; // Change success color
    ui.colors.failure = '#FF5252'; // Change failure color
  
    // Customize the layout
    ui.initOAuth({
      appName: "Your App Name",
      clientId: "your-client-id",
      realm: "your-realm",
      scopeSeparator: " ",
      scopes: "scope1 scope2",
      additionalQueryStringParams: {}
    });
  
    // Add custom CSS
    const styles = document.createElement('style');
    styles.type = 'text/css';
    styles.innerHTML = `
      /* Add your custom CSS styles here */
      body {
        font-family: Arial, sans-serif;
      }
      h1 {
        color: #336699;
      }
      /* Example of hiding a specific element */
      .info .description {
        display: none;
      }
    `;
    document.getElementsByTagName('head')[0].appendChild(styles);
  };
  