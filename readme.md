# Usage
This is simple NodeJS Express application which demonstrate setup of NodeJS development environment including debuging inside docker using as IDE - VisualStudio Code. 
 1. Create docker image with command:
```bash
docker build -t myapp .
```
 2. Run container with:
```bash
 docker run -d -p 3000:3000 -p 9229:9229  -v $(pwd):/usr/src/app myapp
```
 3. Go to browser url: http://localhost:3000
 4. In VS Code just press F5 to attach to container's nodejs app debug port 9229

NOTES:
- This project is already setup for debug inside docker you need just to run debug in VS Code with F5
- For production please change in Dockerfile NODE_ENV to `production`. It won't be using nodemon anymore and debug will be disabled.
- If you want to change start scripts you can change it in package.json. In file docker-entrypoint.sn is called `npm start` or `npm run debug` it depends on NODE_ENV is it set to `debug` or `production` 