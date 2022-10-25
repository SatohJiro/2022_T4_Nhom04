package warehouse;

public class WarehouseValue {
    private String id;
    private int provinceId;
    private int dateId;
    private String time;
    private String current_temperature;
    private String overview_caption;
    private String medium_temperature;
    private String humidity;
    private String vision;
    private String wind_power;
    private String temperature_stop_point;
    private String UV_Index;
    private String airRule;

    public WarehouseValue() {

    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(int provinceId) {
        this.provinceId = provinceId;
    }

    public int getDateId() {
        return dateId;
    }

    public void setDateId(int dateId) {
        this.dateId = dateId;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getCurrent_temperature() {
        return current_temperature;
    }

    public void setCurrent_temperature(String current_temperature) {
        this.current_temperature = current_temperature;
    }

    public String getOverview_caption() {
        return overview_caption;
    }

    public void setOverview_caption(String overview_caption) {
        this.overview_caption = overview_caption;
    }

    public String getMedium_temperature() {
        return medium_temperature;
    }

    public void setMedium_temperature(String medium_temperature) {
        this.medium_temperature = medium_temperature;
    }

    public String getHumidity() {
        return humidity;
    }

    public void setHumidity(String humidity) {
        this.humidity = humidity;
    }

    public String getVision() {
        return vision;
    }

    public void setVision(String vision) {
        this.vision = vision;
    }

    public String getWind_power() {
        return wind_power;
    }

    public void setWind_power(String wind_power) {
        this.wind_power = wind_power;
    }

    public String getTemperature_stop_point() {
        return temperature_stop_point;
    }

    public void setTemperature_stop_point(String temperature_stop_point) {
        this.temperature_stop_point = temperature_stop_point;
    }

    public String getUV_Index() {
        return UV_Index;
    }

    public void setUV_Index(String UV_Index) {
        this.UV_Index = UV_Index;
    }

    public String getAirRule() {
        return airRule;
    }

    public void setAirRule(String airRule) {
        this.airRule = airRule;
    }

    @Override
    public String toString() {
        return "WarehouseValue{" +
                "id='" + id + '\'' +
                ", provinceId=" + provinceId +
                ", dateId=" + dateId +
                ", time='" + time + '\'' +
                ", current_temperature='" + current_temperature + '\'' +
                ", overview_caption='" + overview_caption + '\'' +
                ", medium_temperature='" + medium_temperature + '\'' +
                ", humidity='" + humidity + '\'' +
                ", vision='" + vision + '\'' +
                ", wind_power='" + wind_power + '\'' +
                ", temperature_stop_point='" + temperature_stop_point + '\'' +
                ", UV_Index='" + UV_Index + '\'' +
                ", airRule='" + airRule + '\'' +
                '}';
    }
}
