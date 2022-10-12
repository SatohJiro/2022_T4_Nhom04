import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Date;
import java.util.StringTokenizer;
import java.util.regex.Pattern;

public class Province {
    private String name;
    private String url;
    private String date;
    private String time;
    private Weather weather;

    public Province(String[] province) throws IOException {
        this.name = province[0];
        this.url="https://thoitiet.vn"+province[1];
        this.weather = new Weather(url);
        String[] result = getDataStringById("timer");
        this.time = result[0];
        this.date = result[2];
    }

//    private String castNameToUrl() {
//        String temp = Normalizer.normalize(this.name, Normalizer.Form.NFD);
//        Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
//        String tem = pattern.matcher(temp).replaceAll("").replace('đ', 'd').replace('Đ', 'D');
//        String temps = pattern.matcher(tem).replaceAll("").toLowerCase();
//        return "https://thoitiet.vn/" + temps.replace(' ', '-');
//    }

    private String[] getDataStringById(String id) throws IOException {
        Document document = Jsoup.connect(this.url).get();
        Element elm = document.getElementById(id);
        String[] temps = elm.text().split(" ");
        return temps;
    }

    public String toString() {
        return "Dự Báo Thời tiết của tỉnh " + this.name + "\n" + "Ngày : " + this.date + "\n" + "Vào lúc : " + this.time + "\n" + this.weather.toString();
    }


    public static void main(String[] args) throws IOException {

    }

    public String getName() {
        return name;
    }

    public String getDate() {
        return date;
    }
    public String tranformDate(){
        return getDate().replace('/','-');
    }

    public String getTime() {
        return time;
    }

    public Weather getWeather() {
        return weather;
    }
}
