import org.bson.types.ObjectId;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.util.ArrayList;

public class Weather {
    private String url;
    private String current_temperature;
    private String overview_caption;
    private String medium_temperature;
    private String humidity;
    private String vision;
    private String wind_power;

    private String temperature_stop_point;
    private String UV_Index;
    private  String airRule;

    public Weather(String url) throws IOException {
        this.url = url;
        this.current_temperature = getDataStringByClass("current-temperature");
        this.overview_caption = getDataStringByClass("overview-caption-item-detail");
        ArrayList<String> results = getArrayData();
        this.medium_temperature = results.get(0);
        this.humidity = results.get(1);
        this.vision = results.get(2);
        this.wind_power = results.get(3);
        this.temperature_stop_point = results.get(4);
        this.UV_Index = results.get(5);
        this.airRule = getDataStringByClass("air-active");
    }


    private String getDataStringByClass(String className) throws IOException {
        Document document = Jsoup.connect(url).get();
        Elements elms = document.getElementsByClass(className);
        Element elm_row = elms.get(0);
        return elm_row.text();
    }



    public String getCurrent_temperature() {
        return current_temperature;
    }

    public String getOverview_caption() {
        return overview_caption;
    }

    public String getMedium_temperature() {
        return medium_temperature;
    }

    public String getHumidity() {
        return humidity;
    }

    public String getVision() {
        return vision;
    }

    public String getWind_power() {
        return wind_power;
    }

    public String getTemperature_stop_point() {
        return temperature_stop_point;
    }

    public String getUV_Index() {
        return UV_Index;
    }
    public String getAir_Rule() {
        return airRule;
    }

    @Override
    public String toString() {
        return "Weather{" +"\n"+
                "url='" + url + '\'' +"\n"+
                ", Nhiệt độ hiện tại='" + current_temperature + '\'' +"\n"+
                ", Trời='" + overview_caption + '\'' +"\n"+
                ", Nhiệt độ cao/thấp nhất='" + medium_temperature + '\'' +"\n"+
                ", Độ ẩm='" + humidity + '\'' +"\n"+
                ", Tầm Nhìn='" + vision + '\'' +"\n"+
                ", Sức gió='" + wind_power + '\'' +"\n"+
                ", Điểm Ngưng='" + temperature_stop_point + '\'' +"\n"+
                ", Chỉ số UV='" + UV_Index + '\'' +"\n"+
                ", Chất lượng không khí='" +airRule + '\'' +"\n"+
                '}';
    }

    private ArrayList<String> getArrayData() throws IOException {
        ArrayList<String> results = new ArrayList<>();
        String result = "";
        Document document = Jsoup.connect(url).get();
        Elements elms = document.getElementsByClass("weather-detail");
        for (int i = 0; i < elms.size() + 2; i++) {
            result = elms.get(0).getElementsByClass("ml-2").get(i).getElementsByClass("text-white").get(0).text();
//            System.out.println(i + " : " + result);
            results.add(result);
        }
        return results;
    }


    public static void main(String[] args) throws IOException {
//        Weather a = new Weather("https://thoitiet.vn/ha-giang");
//        System.out.println(a.toString());
        ObjectId objid = new ObjectId();
        System.out.println(objid);
    }




}
