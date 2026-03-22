package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.view.View;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzflw extends zzflz {
    @SuppressLint({"StaticFieldLeak"})
    private static final zzflw zzb = new zzflw();

    private zzflw() {
    }

    public static zzflw zza() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzflz
    public final void zzb(boolean z) {
        for (zzflf zzflfVar : zzflx.zza().zzc()) {
            zzflfVar.zzg().zzk(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzflz
    public final boolean zzc() {
        for (zzflf zzflfVar : zzflx.zza().zzb()) {
            View zzf = zzflfVar.zzf();
            if (zzf != null && zzf.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
