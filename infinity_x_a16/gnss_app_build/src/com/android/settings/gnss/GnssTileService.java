package com.android.settings.gnss;

import android.content.Intent;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;
import android.widget.Toast;

public class GnssTileService extends TileService {
    @Override
    public void onStartListening() {
        super.onStartListening();
        syncTile();
    }

    private void syncTile() {
        Tile t = getQsTile();
        if (t == null) return;
        boolean active = KernelGnssService.sIsRunning;
        t.setState(active ? Tile.STATE_ACTIVE : Tile.STATE_INACTIVE);
        t.setLabel("Kernel GNSS");
        t.setSubtitle(active ? "Locked" : "Real GPS");
        t.updateTile();
    }

    @Override
    public void onClick() {
        super.onClick();
        try {
            if (KernelGnssService.sIsRunning) {
                KernelGnssService.sIsRunning = false;
                Intent i = new Intent(this, KernelGnssService.class);
                i.setAction(KernelGnssService.ACTION_STOP);
                startService(i);
                Toast.makeText(this, "Kernel GNSS OFF (Real GPS)", Toast.LENGTH_SHORT).show();
            } else {
                KernelGnssService.sIsRunning = true;
                Intent i = new Intent(this, KernelGnssService.class);
                i.setAction(KernelGnssService.ACTION_START);
                startForegroundService(i);
                Toast.makeText(this, "Kernel GNSS ON (Locked)", Toast.LENGTH_SHORT).show();
            }
        } catch (Throwable t) {
            KernelGnssService.sIsRunning = false;
        }
        syncTile();
    }
}
