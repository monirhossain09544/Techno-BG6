package android.location;
import android.os.Bundle;
public class Location {
    public Location(String provider) {}
    public String getProvider() { return ""; }
    public void setMock(boolean mock) {}
    public Bundle getExtras() { return null; }
    public void setExtras(Bundle b) {}
    public boolean hasAltitude() { return false; }
    public void setAltitude(double a) {}
    public void setVerticalAccuracyMeters(float v) {}
    public boolean hasAccuracy() { return false; }
    public void setAccuracy(float a) {}
    public boolean hasElapsedRealtimeUncertaintyNanos() { return false; }
    public void setElapsedRealtimeUncertaintyNanos(double u) {}
    public void setLatitude(double l) {}
    public void setLongitude(double l) {}
    public void setTime(long t) {}
    public void setElapsedRealtimeNanos(long n) {}
}
