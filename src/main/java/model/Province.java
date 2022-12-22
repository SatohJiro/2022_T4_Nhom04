package model;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import java.io.IOException;

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


// check crawl data by id of province
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
