package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzqw {
    @Nullable
    private final Context zza;
    private final zzpe zzb;
    private boolean zzc;
    private final zzqu zzd;
    private final zzqv zze;
    @Nullable
    private zzqy zzf;
    private zzqo zzg;

    @Deprecated
    public zzqw() {
        this.zza = null;
        this.zzb = zzpe.zza;
        this.zzd = zzqu.zza;
        this.zze = zzqv.zza;
    }

    public static /* bridge */ /* synthetic */ Context zza(zzqw zzqwVar) {
        return zzqwVar.zza;
    }

    public static /* bridge */ /* synthetic */ zzpe zzb(zzqw zzqwVar) {
        return zzqwVar.zzb;
    }

    public static /* bridge */ /* synthetic */ zzqy zzd(zzqw zzqwVar) {
        return zzqwVar.zzf;
    }

    public static /* bridge */ /* synthetic */ zzqo zze(zzqw zzqwVar) {
        return zzqwVar.zzg;
    }

    public final zzri zzc() {
        zzdc.zzf(!this.zzc);
        this.zzc = true;
        if (this.zzf == null) {
            this.zzf = new zzqy(new zzcn[0]);
        }
        if (this.zzg == null) {
            this.zzg = new zzqo(this.zza);
        }
        return new zzri(this, null);
    }

    public zzqw(Context context) {
        this.zza = context;
        this.zzb = zzpe.zza;
        this.zzd = zzqu.zza;
        this.zze = zzqv.zza;
    }
}
