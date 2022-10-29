package Data;


import org.json.JSONArray;
import org.json.JSONObject;

import java.io.*;
import java.net.URL;
import java.nio.charset.Charset;


//để sử dụng thêm thư viện này 
//<!-- https://mvnrepository.com/artifact/org.json/json -->
//<dependency>
//<groupId>org.json</groupId>
//<artifactId>json</artifactId>
//<version>20220320</version>
//</dependency>


public class DataJSON {
    static final String APIKey = "0fb92edf1cc4e7821b9d9e08f0a90b23";



    private String readAll(Reader reader) throws IOException {
        final long startTime = System.currentTimeMillis();

        BufferedReader br = new BufferedReader(reader);
        StringBuilder stringBuilder = new StringBuilder();
        String readAll = "";
        String readByLine;
        while ((readByLine = br.readLine()) != null) {
            stringBuilder.append(readByLine);
        }

        br.close();
        return readAll = stringBuilder.toString();
    }

    public Weather getData(String nameCity) throws IOException {
        String url = "https://api.openweathermap.org/data/2.5/weather?q=" + new Province().convertName(nameCity) + "&units=metric" +
                "&appid=" + APIKey;
        InputStream is = new URL(url).openStream();
        try {
            BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
            String jsonText = readAll(rd);
            JSONObject json = new JSONObject(jsonText);
            String city = (String) json.get("name");
            JSONArray jsonArray = json.getJSONArray("weather");
            JSONObject jsonObject = jsonArray.getJSONObject(0);
            String des = jsonObject.getString("description");
            System.out.println("Thành phố: " + city);
            System.out.println("Mô tả:" + des);

            JSONObject objectMain = json.getJSONObject("main");
            int temp = objectMain.getInt("temp");
            System.out.println("Nhiệt độ: " + temp + " C");
            int feelLike = objectMain.getInt("feels_like");
            System.out.println("Cảm giác như: " + feelLike + " C");
            int humidity = objectMain.getInt("humidity");
            System.out.println("Độ ẩm: " + humidity + " %");

            JSONObject objectWind = json.getJSONObject("wind");
            double wind = objectWind.getDouble("speed");
            System.out.println("Gió: " + wind + " m/s");


            System.out.println("---------------------------------------");
//            List<Weather>list= new ArrayList<>();
//            list.add(new Weather(city,des, temp,feelLike,humidity,wind));
            return new Weather(city, des, temp, feelLike, humidity, wind);
        } finally {
            is.close();
        }


    }

    public static void main(String[] args) throws IOException {

    }
}

