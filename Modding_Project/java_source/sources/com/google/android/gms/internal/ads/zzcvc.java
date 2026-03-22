package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcvc {
    private final Context zza;
    private final zzfcp zzb;
    private final Bundle zzc;
    @Nullable
    private final zzfch zzd;
    @Nullable
    private final zzcut zze;
    @Nullable
    private final zzedk zzf;
    private final int zzg;

    public /* synthetic */ zzcvc(zzcva zzcvaVar, zzcvb zzcvbVar) {
        this.zza = zzcva.zzb(zzcvaVar);
        this.zzb = zzcva.zzo(zzcvaVar);
        this.zzc = zzcva.zzc(zzcvaVar);
        this.zzd = zzcva.zzn(zzcvaVar);
        this.zze = zzcva.zzd(zzcvaVar);
        this.zzf = zzcva.zzm(zzcvaVar);
        this.zzg = zzcva.zza(zzcvaVar);
    }

    public final int zza() {
        return this.zzg;
    }

    public final Context zzb(Context context) {
        return this.zza;
    }

    @Nullable
    public final Bundle zzc() {
        return this.zzc;
    }

    @Nullable
    public final zzcut zzd() {
        return this.zze;
    }

    public final zzcva zze() {
        zzcva zzcvaVar = new zzcva();
        zzcvaVar.zzf(this.zza);
        zzcvaVar.zzk(this.zzb);
        zzcvaVar.zzg(this.zzc);
        zzcvaVar.zzh(this.zze);
        zzcvaVar.zze(this.zzf);
        return zzcvaVar;
    }

    public final zzedk zzf(String str) {
        zzedk zzedkVar = this.zzf;
        if (zzedkVar != null) {
            return zzedkVar;
        }
        return new zzedk(str);
    }

    @Nullable
    public final zzfch zzg() {
        return this.zzd;
    }

    public final zzfcp zzh() {
        return this.zzb;
    }
}
