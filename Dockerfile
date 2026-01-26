# Use the official ASP.NET runtime image as the base image
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 80
ENV ASPNETCORE_URLS http://*:80

# Copy the published files from the local publish folder to the container
# Ensure your published files are in a folder named 'publish' next to this Dockerfile
COPY ./publish /app

# Set the entry point for the application
# IMPORTANT: Replace 'Inpatient_API.dll' with the actual name of your project's DLL
ENTRYPOINT ["dotnet", "Service_API.dll"]