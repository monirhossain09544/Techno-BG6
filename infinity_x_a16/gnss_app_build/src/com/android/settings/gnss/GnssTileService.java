package com.android.settings.gnss;

import android.content.Intent;
import android.content.SharedPreferences;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;

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
        if (KernelGnssService.sIsRunning) {
            Intent i = new Intent(this, KernelGnssService.class);
            i.setAction(KernelGnssService.ACTION_STOP);
            startService(i);
            KernelGnssService.sIsRunning = false;
        } else {
            Intent i = new Intent(this, KernelGnssService.class);
            i.setAction(KernelGnssService.ACTION_START);
            startForegroundService(i);
            KernelGnssService.sIsRunning = true;
        }
        syncTile();
    }
}
