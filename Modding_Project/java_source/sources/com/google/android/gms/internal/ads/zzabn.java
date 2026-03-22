package com.google.android.gms.internal.ads;

import android.hardware.display.DisplayManager;
import android.view.Display;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzabn implements DisplayManager.DisplayListener {
    final /* synthetic */ zzabp zza;
    private final DisplayManager zzb;

    public zzabn(zzabp zzabpVar, DisplayManager displayManager) {
        this.zza = zzabpVar;
        this.zzb = displayManager;
    }

    private final Display zzc() {
        return this.zzb.getDisplay(0);
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i) {
        if (i == 0) {
            zzabp.zzb(this.zza, zzc());
        }
    }

    public final void zza() {
        this.zzb.registerDisplayListener(this, zzeu.zzy(null));
        zzabp.zzb(this.zza, zzc());
    }

    public final void zzb() {
        this.zzb.unregisterDisplayListener(this);
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i) {
    }
}
