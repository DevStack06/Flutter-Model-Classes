### Model Class Video Series for Flutter App Developer. Playlist [Link](https://www.youtube.com/playlist?list=PLtIU0BH0pkKpXE-1vC7NswofFPby1OYh-)

#### This repository consists of both backend and front end codes

Hey There, this is Balram Rathore (DevStack). This repo consist the code flutter code of Model Class Video series, which will cover the following topic-:

1.  What is Model Classes and How to create the Model Class. Video [Link](https://www.youtube.com/watch?v=Ega4EG8ZVM4&list=PLtIU0BH0pkKpXE-1vC7NswofFPby1OYh-&index=1)

2.  Parsing Nested Object JSON data and show it on Flutter App. Video [Link](https://www.youtube.com/watch?v=HKb7lG3FIRE&list=PLtIU0BH0pkKpXE-1vC7NswofFPby1OYh-&index=2)

3.  Parsing List of Object and show the data on Flutter App. Video [Link](https://www.youtube.com/watch?v=loVpUXTMSxw&list=PLtIU0BH0pkKpXE-1vC7NswofFPby1OYh-&index=3)

4.  Post Json Data throgh Rest API and store it on the database. Video [Link](https://www.youtube.com/watch?v=0KOKX1BHr6k&list=PLtIU0BH0pkKpXE-1vC7NswofFPby1OYh-&index=4)

5.  Post List of Object throgh Rest API and store the data on the Database. Video [Link](https://www.youtube.com/watch?v=ws-NL5_KEyc&list=PLtIU0BH0pkKpXE-1vC7NswofFPby1OYh-&index=5)

#### More video will come on model class :)

### About Backend Code :smile: .

Before going to code make sure to install mongoDB database on your local system :sweat_smile: .For installing mongoDB you can take help from the [This video](https://www.youtube.com/watch?v=3Pol218EKcQ) .For this project I am using the [Mongoose](https://mongoosejs.com/).

Below are the some basic syntax for your help after installing the mongoDB.

- For starting the server
  > sudo service mongod start
- For stoping the server
  > sudo service mongod stop
- For restarting the server
  > sudo service mongod restart

**Note -:Above codes are valid for linux only.For windows user can follow this [link](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-windows/) :wink:**

_**Fork this repository and then clone it because after forking it you will be updated if i will change the code here:wink:**_

## **Back End Code folder structure**

- model
  - All Mongoose model schemas
- routes
  - All end points codes are here(routes folder)
- index.js file (main Source file)

### 1) To run the Rest Server on local system folow this steps (make sure you are inside ModelServer directory/folder)-:

1. For installing all the necessary npm packages-

> \$ npm install

2.Now,the app is connected to the local mongoDb databse .You must start the mongoDb server before running the backend server (In windows it is automatically started if you successfully installed the MongoDB) .

> sudo service mongod start

3. Below given,is the code of connecting the mongoDB with nodeJs (index.js file) for more details you can follow this video [Link](https://www.youtube.com/watch?v=kFJaXNP_YpI&t=1s) for more information-:

```javascript
mongoose.connect("mongodb://localhost:27017/blogDB", {
  useNewUrlParser: true,
  useCreateIndex: true,
});
```

4. Start the server by using below code

> \$ npm run dev

5. It will launch the server on [http://localhost:5000](http://localhost:5000) this url.
   **This localhost url is a base url you will need this while connecting your rest server with flutter app**

### How to use the Code

1. Fork this repository
2. Then create a new folder on you local system, where you want to keep the code.
3. Create an empty git repository on that folder.
   > git init
4. Copy your forked GitHub repository url
5. Now pull the code on yoor system
   > git pull origin master

Or, else just clone this repository :sweat_smile:

**Do star the repo if you liked it!**
