# Use an official Node.js runtime as a parent image
FROM node:19-alpine3.17

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and yarn.lock files to the container
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --immutable

# Copy the rest of the application code to the container
COPY . .

# Quickfix
#RUN yarn add esbuild-linux-64

# Build the Storybook
RUN yarn build-storybook
