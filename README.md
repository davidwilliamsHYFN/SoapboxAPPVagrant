# Setting Up A SoapboxAPP Environment

You are reading this because you have been handed some files and you are now scratching your head. You are in luck! This README will get you up and running in no time!

### Some things to note before starting

Open up the Vagrant file. Note a couple of things:
- The Ip address listed as "private_network". This is how you will access the api.
- The sync folder is the folder that you keep the soapbox rails app. Vagrant is mapping /vagrant to the folder listed in this config. I kept mine at ~/sites/soapbox_api. You can put yours anywhere, just change the name or you will be SOL. Side note: if you are using a PC, nfs is not an option for you, so you will want to delete that option and maybe reevaluate how you are going to set this environment up.

### Ready..Set..
	vagrant up
Go grab a cup of coffee or stare intently at the monitor so people will think you are busy, either way you are going to be waiting for a little while

### After installation completes
	cd /vagrant
	npm install
    
### Post install housekeeping
At the moment you have a react app and some modules. Now you need to ask an administrator for a copy of the .env file. These are stored on google drive somewhere. Once you get them add .env to the root directory of the app.

In the .env file you will notice a variable labeled API_URL. This is the url that the node server forwards requests to. Change the URL to whatever IP the server box is running on. The default is http://192.168.33.99::3000/

### Building the assets
  	npm run build
    
### Time to fire up the server and serve some assets!
  	npm run start
    
visit 192.168.33.88:8080 and you should be cooking with gas!

