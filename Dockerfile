# Use the official ASP.NET runtime image as the base image
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app

ENV ASPNETCORE_URLS=http://0.0.0.0:8080
EXPOSE 8080
  
# Copy the published files from the host machine's publish folder to the container
COPY ./publish /app

# Set the entry point for the application
ENTRYPOINT ["dotnet", "Service_API.dll"]



