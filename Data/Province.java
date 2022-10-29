package Data;

import java.io.IOException;
import java.text.Normalizer;
import java.util.regex.Pattern;

public class Province {
    String[] listCity = {"Hà nội", "hải phòng", "tokyo", "nanjing", "đà nẵng", "berlin",
            "jakarta", "manila", "moscow", "yokohama", "warsaw", "Huế", "dehli", "bangkok",
            "florida", "london", "manchester", "Barcelona", "Amsterdam", "Beijing", "HongKong", "singapore", "istanbul", "paris"};

    public String convertName(String nameProvince) {

        String temp = Normalizer.normalize(nameProvince, Normalizer.Form.NFD);
        Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
        String tem = pattern.matcher(temp).replaceAll("").replace('đ', 'd')
                .replace('Đ', 'D').replace(" ", "");
        String temps = pattern.matcher(tem).replaceAll("").toLowerCase().trim();
        return temps;

    }

    public String changeCity(String listCity) {
        String url = "https://api.openweathermap.org/data/2.5/weather?q=" + convertName(listCity) + "&units=metric" +
                "&appid=" + DataJSON.APIKey;
        return url;

    }

    public void dataManyCity() throws IOException {


        for (int i = 0; i < listCity.length; i++) {
            DataJSON json = new DataJSON();
            //  System.out.println(json.getData(listCity[i]));
            json.getData(listCity[i]);
        }
    }


    public static void main(String[] args) throws IOException {
//        final long startTime = System.currentTimeMillis();
          Province province = new Province();
//        System.out.println(province.convertName("Sài Gòn"));
          province.dataManyCity();
//        final long endTime = System.currentTimeMillis();
//        System.out.println(endTime - startTime + " ms");
    }

}
