package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeis implements com.google.android.gms.ads.internal.zzg {
    final AtomicBoolean zza = new AtomicBoolean(false);
    private final zzcvr zzb;
    private final zzcwl zzc;
    private final zzdea zzd;
    private final zzdds zze;
    private final zzcnk zzf;

    public zzeis(zzcvr zzcvrVar, zzcwl zzcwlVar, zzdea zzdeaVar, zzdds zzddsVar, zzcnk zzcnkVar) {
        this.zzb = zzcvrVar;
        this.zzc = zzcwlVar;
        this.zzd = zzdeaVar;
        this.zze = zzddsVar;
        this.zzf = zzcnkVar;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final synchronized void zza(View view) {
        if (!this.zza.compareAndSet(false, true)) {
            return;
        }
        this.zzf.zzs();
        this.zze.zza(view);
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzb() {
        if (this.zza.get()) {
            this.zzb.onAdClicked();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzc() {
        if (this.zza.get()) {
            this.zzc.zza();
            this.zzd.zza();
        }
    }
}
