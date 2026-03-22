package com.google.android.gms.internal.ads;

import android.os.Looper;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzlr {
    private final zzlq zza;
    private final zzlp zzb;
    private final zzbl zzc;
    private int zzd;
    @Nullable
    private Object zze;
    private final Looper zzf;
    private final int zzg;
    private boolean zzh;
    private boolean zzi;

    public zzlr(zzlp zzlpVar, zzlq zzlqVar, zzbl zzblVar, int i, zzdg zzdgVar, Looper looper) {
        this.zzb = zzlpVar;
        this.zza = zzlqVar;
        this.zzc = zzblVar;
        this.zzf = looper;
        this.zzg = i;
    }

    public final int zza() {
        return this.zzd;
    }

    public final Looper zzb() {
        return this.zzf;
    }

    public final zzlq zzc() {
        return this.zza;
    }

    public final zzlr zzd() {
        zzdc.zzf(!this.zzh);
        this.zzh = true;
        this.zzb.zzo(this);
        return this;
    }

    public final zzlr zze(@Nullable Object obj) {
        zzdc.zzf(!this.zzh);
        this.zze = obj;
        return this;
    }

    public final zzlr zzf(int i) {
        zzdc.zzf(!this.zzh);
        this.zzd = i;
        return this;
    }

    @Nullable
    public final Object zzg() {
        return this.zze;
    }

    public final synchronized void zzh(boolean z) {
        this.zzi = z | this.zzi;
        notifyAll();
    }

    public final synchronized boolean zzi() {
        return false;
    }
}
