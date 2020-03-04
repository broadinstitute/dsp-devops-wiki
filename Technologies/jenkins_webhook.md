For each GitHub repository or organization that you need to configure, perform the following steps:

Navigate to the "Settings" tab.
Select the "Webhooks" option on the left menu
Click "Add Webhook"
For "Payload URL":
Use the address for the Jenkins server instance (e.g. http://myjenkins.com)
Add /github-webhook/ to the end of it.
Make sure to include the last /!
example: http://myjenkins.com/github-webhook/
Select "application/json" as the encoding type
Leave "Secret" blank (unless a secret has been created and configured in the Jenkins "Configure System -> GitHub plugin" section)
Select "Let me select individual events"
Enable PUSH event
Enable Pull Request event
Make sure "Active" is checked
Click "Add Webhook"

