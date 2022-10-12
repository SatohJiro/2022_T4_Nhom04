import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVPrinter;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

public class Data {
    private String rootURL;
    private ArrayList<Province> data;

    public Data(String rootURL) throws IOException {
        this.rootURL=rootURL;
        data = new ArrayList<>();
        ArrayList<String[]> temp = getNameProvinces();
        Province p;
        for (int i = 0; i < temp.size(); i++) {
            p = new Province(temp.get(i));
            System.out.println(p.toString());
            data.add(p);
        }
    }
    public ArrayList<String[]> getNameProvinces() throws IOException {
        ArrayList<String[]> listName = new ArrayList<>();
        Document document = Jsoup.connect(rootURL).get();

        Elements elms = document.select(".mega-submenu a");
        elms.forEach(elm ->{
            String[] temp= new String[2];
            temp[0]=elm.text();
            temp[1]=elm.attr("href");
            listName.add(temp);
        });
        return listName;
    }
public String writeData() throws IOException {
    ArrayList<Province> provinces = this.data;
    String csvFile = "data/dataWeather_"+provinces.get(0).tranformDate()+".csv";
    try (BufferedWriter writer = new BufferedWriter(new FileWriter(csvFile));
         CSVPrinter csvPrinter = new CSVPrinter(writer,
                 CSVFormat.DEFAULT.withHeader("Tỉnh", "Ngày", "Giờ", "Nhiệt độ hiện tại", " Trời", "Nhiệt độ cao/thấp nhất", "Độ ẩm", "Tầm Nhìn", "Sức gió", "Điểm Ngưng", "Chỉ số UV","Chất lượng không khí"));) {
        Province p;
        Weather w;
        for (int i = 0; i < provinces.size(); i++) {
            p = provinces.get(i);
            w = p.getWeather();
            csvPrinter.printRecord(p.getName(), p.getDate(), p.getTime(), w.getCurrent_temperature(), w.getOverview_caption(), w.getMedium_temperature(), w.getHumidity(), w.getVision(), w.getWind_power(), w.getTemperature_stop_point(), w.getUV_Index(),w.getAir_Rule());
        }
        csvPrinter.flush();
    }
    return csvFile;
}

    public ArrayList<Province> getData() {
        return data;
    }


}
