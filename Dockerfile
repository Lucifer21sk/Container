# Base image
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
RUN ls
# Set the working directory
WORKDIR /app

# Copy the project files to the container
COPY . .

# change the working directory to the project folder
WORKDIR /app/Ppt23.Api
RUN ls -la

# Build the application
RUN dotnet restore
RUN dotnet build -c Release --no-restore

# Publish the application
RUN dotnet publish -c Release -o out --no-restore

# Create the runtime image
FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS runtime

# Set the working directory
WORKDIR /app

# Copy the published output from the previous stage
COPY --from=build /app/Ppt23.Api/out .

# Expose the port that the application listens on
EXPOSE 80

# Start the application
ENTRYPOINT ["dotnet", "Ppt23.Api.dll"]
