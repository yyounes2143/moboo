package com.google.android.gms.internal.ads;

import androidx.annotation.CallSuper;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.media3.common.C;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzhj {
    private int zza;

    public final void zza(int i) {
        this.zza |= C.BUFFER_FLAG_LAST_SAMPLE;
    }

    @CallSuper
    public void zzb() {
        this.zza = 0;
    }

    public final void zzc(int i) {
        this.zza = i;
    }

    public final boolean zzd(int i) {
        if ((this.zza & i) == i) {
            return true;
        }
        return false;
    }

    public final boolean zze() {
        return zzd(268435456);
    }

    public final boolean zzf() {
        return zzd(4);
    }

    public final boolean zzg() {
        return zzd(1);
    }

    public final boolean zzh() {
        return zzd(C.BUFFER_FLAG_LAST_SAMPLE);
    }

    public final boolean zzi() {
        return zzd(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
    }
}
