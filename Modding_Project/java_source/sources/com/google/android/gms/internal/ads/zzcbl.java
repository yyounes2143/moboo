package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcbl {
    private final Context zza;
    private final zzcbw zzb;
    private final ViewGroup zzc;
    @Nullable
    private final zzdsd zzd;
    private zzcbk zze;

    public zzcbl(Context context, ViewGroup viewGroup, zzcfb zzcfbVar, @Nullable zzdsd zzdsdVar) {
        this.zza = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzc = viewGroup;
        this.zzb = zzcfbVar;
        this.zze = null;
        this.zzd = zzdsdVar;
    }

    public final zzcbk zza() {
        return this.zze;
    }

    @Nullable
    public final Integer zzb() {
        zzcbk zzcbkVar = this.zze;
        if (zzcbkVar != null) {
            return zzcbkVar.zzl();
        }
        return null;
    }

    public final void zzc(int i, int i2, int i3, int i4) {
        Preconditions.checkMainThread("The underlay may only be modified from the UI thread.");
        zzcbk zzcbkVar = this.zze;
        if (zzcbkVar != null) {
            zzcbkVar.zzF(i, i2, i3, i4);
        }
    }

    public final void zzd(int i, int i2, int i3, int i4, int i5, boolean z, zzcbv zzcbvVar) {
        if (this.zze != null) {
            return;
        }
        zzcbw zzcbwVar = this.zzb;
        zzbdc.zza(zzcbwVar.zzl().zza(), zzcbwVar.zzk(), "vpr2");
        zzcbk zzcbkVar = new zzcbk(this.zza, zzcbwVar, i5, z, zzcbwVar.zzl().zza(), zzcbvVar, this.zzd);
        this.zze = zzcbkVar;
        this.zzc.addView(zzcbkVar, 0, new ViewGroup.LayoutParams(-1, -1));
        this.zze.zzF(i, i2, i3, i4);
        zzcbwVar.zzz(false);
    }

    public final void zze() {
        Preconditions.checkMainThread("onDestroy must be called from the UI thread.");
        zzcbk zzcbkVar = this.zze;
        if (zzcbkVar != null) {
            zzcbkVar.zzq();
            this.zzc.removeView(this.zze);
            this.zze = null;
        }
    }

    public final void zzf() {
        Preconditions.checkMainThread("onPause must be called from the UI thread.");
        zzcbk zzcbkVar = this.zze;
        if (zzcbkVar != null) {
            zzcbkVar.zzu();
        }
    }

    public final void zzg(int i) {
        zzcbk zzcbkVar = this.zze;
        if (zzcbkVar != null) {
            zzcbkVar.zzC(i);
        }
    }
}
