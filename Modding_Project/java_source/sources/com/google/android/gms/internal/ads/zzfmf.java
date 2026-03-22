package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfmf implements zzfly {
    private static zzfmf zza;
    private float zzb = 0.0f;
    private zzflt zzc;
    private zzflx zzd;

    public zzfmf(zzflu zzfluVar, zzflr zzflrVar) {
    }

    public static zzfmf zzb() {
        if (zza == null) {
            zza = new zzfmf(new zzflu(), new zzflr());
        }
        return zza;
    }

    public final float zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfly
    public final void zzc(boolean z) {
        if (z) {
            zzfnh.zzd().zzi();
        } else {
            zzfnh.zzd().zzh();
        }
    }

    public final void zzd(Context context) {
        this.zzc = new zzflt(new Handler(), context, new zzflq(), this);
    }

    public final void zze(float f) {
        this.zzb = f;
        if (this.zzd == null) {
            this.zzd = zzflx.zza();
        }
        for (zzflf zzflfVar : this.zzd.zzb()) {
            zzflfVar.zzg().zzl(f);
        }
    }

    public final void zzf() {
        zzflw.zza().zze(this);
        zzflw.zza().zzf();
        zzfnh.zzd().zzi();
        this.zzc.zzc();
    }

    public final void zzg() {
        zzfnh.zzd().zzj();
        zzflw.zza().zzg();
        this.zzc.zzd();
    }
}
