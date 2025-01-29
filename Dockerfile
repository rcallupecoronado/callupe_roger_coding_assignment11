# Step 1: Use Node.js image
FROM node:16

# Step 2: Set the working directory
WORKDIR /callupe_roger_site

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application files
COPY . .

# Step 6: Expose the development port
EXPOSE 3000

# Step 7: Start the React development server
CMD ["npm", "start"]