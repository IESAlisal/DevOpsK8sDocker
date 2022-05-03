#git clone https://github.com/MicrosoftDocs/mslearn-hotel-reservation-system.git 
# docker pull mcr.microsoft.com/dotnet/core/samples:aspnetapp
# docker pull mcr.microsoft.com/dotnet/core/sdk:latest

FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /src
COPY ["/HotelReservationSystem/HotelReservationSystem.csproj", "HotelReservationSystem/"]
COPY ["/HotelReservationSystemTypes/HotelReservationSystemTypes.csproj", "HotelReservationSystemTypes/"]
RUN dotnet restore "HotelReservationSystem/HotelReservationSystem.csproj"

COPY . .
WORKDIR "/src/HotelReservationSystem"
RUN dotnet build "HotelReservationSystem.csproj" -c Release -o /app

RUN dotnet publish "HotelReservationSystem.csproj" -c Release -o /app

EXPOSE 80
WORKDIR /app
ENTRYPOINT ["dotnet", "HotelReservationSystem.dll"]

