package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.HashSet;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzbr {
    public final boolean zzA;
    public final boolean zzB;
    public final boolean zzC;
    public final zzfyf zzD;
    public final zzfyh zzE;
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final int zzj;
    public final boolean zzk;
    public final boolean zzl;
    public final zzfyc zzm;
    public final zzfyc zzn;
    public final int zzo;
    public final zzfyc zzp;
    public final int zzq;
    public final int zzr;
    public final int zzs;
    public final zzfyc zzt;
    public final zzbp zzu;
    public final zzfyc zzv;
    public final int zzw;
    public final boolean zzx;
    public final int zzy;
    public final boolean zzz;

    static {
        new zzbr(new zzbq());
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
        Integer.toString(14, 36);
        Integer.toString(15, 36);
        Integer.toString(16, 36);
        Integer.toString(17, 36);
        Integer.toString(18, 36);
        Integer.toString(19, 36);
        Integer.toString(20, 36);
        Integer.toString(21, 36);
        Integer.toString(22, 36);
        Integer.toString(23, 36);
        Integer.toString(24, 36);
        Integer.toString(25, 36);
        Integer.toString(26, 36);
        Integer.toString(27, 36);
        Integer.toString(28, 36);
        Integer.toString(29, 36);
        Integer.toString(30, 36);
        Integer.toString(31, 36);
        Integer.toString(32, 36);
        Integer.toString(33, 36);
        Integer.toString(34, 36);
    }

    public zzbr(zzbq zzbqVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z;
        boolean z2;
        zzfyc zzfycVar;
        zzfyc zzfycVar2;
        zzfyc zzfycVar3;
        int i7;
        int i8;
        zzfyc zzfycVar4;
        zzbp zzbpVar;
        zzfyc zzfycVar5;
        boolean z3;
        HashMap hashMap;
        HashSet hashSet;
        i = zzbqVar.zza;
        this.zza = i;
        i2 = zzbqVar.zzb;
        this.zzb = i2;
        i3 = zzbqVar.zzc;
        this.zzc = i3;
        i4 = zzbqVar.zzd;
        this.zzd = i4;
        this.zze = 0;
        this.zzf = 0;
        this.zzg = 0;
        this.zzh = 0;
        i5 = zzbqVar.zze;
        this.zzi = i5;
        i6 = zzbqVar.zzf;
        this.zzj = i6;
        z = zzbqVar.zzg;
        this.zzk = z;
        z2 = zzbqVar.zzh;
        this.zzl = z2;
        zzfycVar = zzbqVar.zzi;
        this.zzm = zzfycVar;
        zzfycVar2 = zzbqVar.zzj;
        this.zzn = zzfycVar2;
        this.zzo = 0;
        zzfycVar3 = zzbqVar.zzk;
        this.zzp = zzfycVar3;
        this.zzq = 0;
        i7 = zzbqVar.zzl;
        this.zzr = i7;
        i8 = zzbqVar.zzm;
        this.zzs = i8;
        zzfycVar4 = zzbqVar.zzn;
        this.zzt = zzfycVar4;
        zzbpVar = zzbqVar.zzo;
        this.zzu = zzbpVar;
        zzfycVar5 = zzbqVar.zzp;
        this.zzv = zzfycVar5;
        this.zzw = 0;
        z3 = zzbqVar.zzq;
        this.zzx = z3;
        this.zzy = 0;
        this.zzz = false;
        this.zzA = false;
        this.zzB = false;
        this.zzC = false;
        hashMap = zzbqVar.zzr;
        this.zzD = zzfyf.zzc(hashMap);
        hashSet = zzbqVar.zzs;
        this.zzE = zzfyh.zzl(hashSet);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzbr zzbrVar = (zzbr) obj;
            if (this.zza == zzbrVar.zza && this.zzb == zzbrVar.zzb && this.zzc == zzbrVar.zzc && this.zzd == zzbrVar.zzd && this.zzl == zzbrVar.zzl && this.zzi == zzbrVar.zzi && this.zzj == zzbrVar.zzj && this.zzk == zzbrVar.zzk && this.zzm.equals(zzbrVar.zzm) && this.zzn.equals(zzbrVar.zzn) && this.zzp.equals(zzbrVar.zzp) && this.zzr == zzbrVar.zzr && this.zzs == zzbrVar.zzs && this.zzt.equals(zzbrVar.zzt) && this.zzu.equals(zzbrVar.zzu) && this.zzv.equals(zzbrVar.zzv) && this.zzx == zzbrVar.zzx && this.zzD.equals(zzbrVar.zzD) && this.zzE.equals(zzbrVar.zzE)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((((((((this.zza + 31) * 31) + this.zzb) * 31) + this.zzc) * 31) + this.zzd) * 28629151) + (this.zzl ? 1 : 0)) * 31) + this.zzi) * 31) + this.zzj) * 31) + (this.zzk ? 1 : 0)) * 31) + this.zzm.hashCode()) * 31) + this.zzn.hashCode()) * 961) + this.zzp.hashCode()) * 961) + this.zzr) * 31) + this.zzs) * 31) + this.zzt.hashCode()) * 31) + 29791) * 31) + this.zzv.hashCode()) * 961) + (this.zzx ? 1 : 0)) * 887503681) + this.zzD.hashCode()) * 31) + this.zzE.hashCode();
    }
}
