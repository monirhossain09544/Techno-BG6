package android.os;
public class Bundle {
    public Bundle() {}
    public Bundle(Bundle b) {}
    public int getInt(String k, int d) { return d; }
    public void putInt(String k, int v) {}
    public void remove(String k) {}
}
