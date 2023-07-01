
package Business;

public class Cars {
   private int model;
   private double Speed;
   private String Color;

    public Cars(int model, double Speed, String Color) {
        this.model = model;
        this.Speed = Speed;
        this.Color = Color;
    }

    public int getModel() {
        return model;
    }

    public double getSpeed() {
        return Speed;
    }

    public String getColor() {
        return Color;
    }

    @Override
    public String toString() {
        return  model + "|" + Speed + "|" + Color;
    }
   
   
}
