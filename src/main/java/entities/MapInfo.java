package entities;

import javax.persistence.*;

@Table(name = "map_info")
@Entity
public class MapInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "current_map")
    private String currentMap;

    @Column(name = "next_map")
    private String nextMap;

    @Column(name = "duration_mins")
    private int durationMins;

    @Lob
    @Column(name = "current_map_image")
    private String currentMapImage;

    public String getCurrentMapImage() {
        String lastParam = currentMapImage.substring(currentMapImage.lastIndexOf('/') + 1);
        String[] maparray = lastParam.split("_",5);
        if (maparray[0].equals("Worlds")){
            currentMap = currentMap.replace("'","");
        }
        String[] maparray2 = maparray[1].split("\\.",5);
        String img_arr = maparray[0] + " " + maparray2[0];
        if (currentMap.equals(img_arr)){
            setCurrentMapImage(currentMap);
        }
            return currentMap;
    }

    public void setCurrentMapImage(String currentMapImage) {
        this.currentMapImage = currentMapImage;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDurationMins() {
        return durationMins;
    }

    public void setDurationMins(int durationMins) {
        this.durationMins = durationMins;
    }

    public String getNextMap() {
        return nextMap;
    }

    public void setNextMap(String nextMap) {
        this.nextMap = nextMap;
    }

    public String getCurrentMap() {
        return currentMap;
    }

    public void setCurrentMap(String currentMap) {
        this.currentMap = currentMap;
    }
}