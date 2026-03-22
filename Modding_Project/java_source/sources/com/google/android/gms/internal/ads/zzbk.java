package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbk {
    public static final Object zza = new Object();
    private static final zzap zzp;
    @Nullable
    @Deprecated
    public Object zzc;
    public long zze;
    public long zzf;
    public long zzg;
    public boolean zzh;
    public boolean zzi;
    @Nullable
    public zzaj zzj;
    public boolean zzk;
    public long zzl;
    public long zzm;
    public int zzn;
    public int zzo;
    public Object zzb = zza;
    public zzap zzd = zzp;

    static {
        zzad zzadVar = new zzad();
        zzadVar.zza("androidx.media3.common.Timeline");
        zzadVar.zzb(Uri.EMPTY);
        zzp = zzadVar.zzc();
        String str = zzeu.zza;
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(7, 36);
        Integer.toString(8, 36);
        Integer.toString(9, 36);
        Integer.toString(10, 36);
        Integer.toString(11, 36);
        Integer.toString(12, 36);
        Integer.toString(13, 36);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzbk.class.equals(obj.getClass())) {
            zzbk zzbkVar = (zzbk) obj;
            if (Objects.equals(this.zzb, zzbkVar.zzb) && Objects.equals(this.zzd, zzbkVar.zzd) && Objects.equals(this.zzj, zzbkVar.zzj) && this.zze == zzbkVar.zze && this.zzf == zzbkVar.zzf && this.zzg == zzbkVar.zzg && this.zzh == zzbkVar.zzh && this.zzi == zzbkVar.zzi && this.zzk == zzbkVar.zzk && this.zzm == zzbkVar.zzm && this.zzn == zzbkVar.zzn && this.zzo == zzbkVar.zzo) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = ((this.zzb.hashCode() + 217) * 31) + this.zzd.hashCode();
        zzaj zzajVar = this.zzj;
        if (zzajVar == null) {
            hashCode = 0;
        } else {
            hashCode = zzajVar.hashCode();
        }
        long j = this.zze;
        long j2 = this.zzf;
        long j3 = this.zzg;
        int i = (((((((((((((hashCode2 * 961) + hashCode) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.zzh ? 1 : 0)) * 31) + (this.zzi ? 1 : 0)) * 31) + (this.zzk ? 1 : 0);
        long j4 = this.zzm;
        return ((((((i * 961) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + this.zzn) * 31) + this.zzo) * 31;
    }

    public final zzbk zza(Object obj, @Nullable zzap zzapVar, @Nullable Object obj2, long j, long j2, long j3, boolean z, boolean z2, @Nullable zzaj zzajVar, long j4, long j5, int i, int i2, long j6) {
        this.zzb = obj;
        if (zzapVar == null) {
            zzapVar = zzp;
        }
        this.zzd = zzapVar;
        this.zzc = null;
        this.zze = -9223372036854775807L;
        this.zzf = -9223372036854775807L;
        this.zzg = -9223372036854775807L;
        this.zzh = z;
        this.zzi = z2;
        this.zzj = zzajVar;
        this.zzl = 0L;
        this.zzm = j5;
        this.zzn = 0;
        this.zzo = 0;
        this.zzk = false;
        return this;
    }

    public final boolean zzb() {
        if (this.zzj != null) {
            return true;
        }
        return false;
    }
}
