const express = require("express");
const app = express();
const port = 3000;
const axios = require("axios");

app.get("/9daysweather", async (req, res) => {
  const response = await axios.get(
    "https://data.weather.gov.hk/weatherAPI/opendata/weather.php?dataType=fnd&lang=en"
  );
  const data = response.data.weatherForecast;

  res.send(
    data.map((el) => ({ date: el.forecastDate, weather: el.forecastWeather }))
  );
});

app.listen(port, () => {
  console.log(`weather app running on port ${port}`);
});
