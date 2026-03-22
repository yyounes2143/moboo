package com.google.android.gms.internal.ads;

import android.util.Base64;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzor implements zzpa {
    public static final zzfvu zza = new zzfvu() { // from class: com.google.android.gms.internal.ads.zzop
        @Override // com.google.android.gms.internal.ads.zzfvu
        public final Object zza() {
            String zzn;
            zzn = zzor.zzn();
            return zzn;
        }
    };
    private static final Random zzb = new Random();
    private final zzbk zzc;
    private final zzbj zzd;
    private final HashMap zze;
    private zzoz zzf;
    private zzbl zzg;
    @Nullable
    private String zzh;
    private long zzi;

    public zzor() {
        throw null;
    }

    public final long zzl() {
        long j;
        long j2;
        zzoq zzoqVar = (zzoq) this.zze.get(this.zzh);
        if (zzoqVar != null) {
            j = zzoqVar.zzd;
            if (j != -1) {
                j2 = zzoqVar.zzd;
                return j2;
            }
        }
        return this.zzi + 1;
    }

    private final zzoq zzm(int i, @Nullable zzvb zzvbVar) {
        long j;
        int i2;
        zzvb zzvbVar2;
        zzvb zzvbVar3;
        HashMap hashMap = this.zze;
        long j2 = Long.MAX_VALUE;
        zzoq zzoqVar = null;
        for (zzoq zzoqVar2 : hashMap.values()) {
            zzoqVar2.zzg(i, zzvbVar);
            if (zzoqVar2.zzj(i, zzvbVar)) {
                j = zzoqVar2.zzd;
                if (j != -1 && j >= j2) {
                    if (i2 == 0) {
                        String str = zzeu.zza;
                        zzvbVar2 = zzoqVar.zze;
                        if (zzvbVar2 != null) {
                            zzvbVar3 = zzoqVar2.zze;
                            if (zzvbVar3 != null) {
                                zzoqVar = zzoqVar2;
                            }
                        }
                    }
                } else {
                    zzoqVar = zzoqVar2;
                    j2 = j;
                }
            }
        }
        if (zzoqVar == null) {
            String zzn = zzn();
            zzoq zzoqVar3 = new zzoq(this, zzn, i, zzvbVar);
            hashMap.put(zzn, zzoqVar3);
            return zzoqVar3;
        }
        return zzoqVar;
    }

    public static String zzn() {
        byte[] bArr = new byte[12];
        zzb.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    private final void zzo(zzoq zzoqVar) {
        long j;
        long j2;
        j = zzoqVar.zzd;
        if (j != -1) {
            j2 = zzoqVar.zzd;
            this.zzi = j2;
        }
        this.zzh = null;
    }

    @RequiresNonNull
    private final void zzp(zzmk zzmkVar) {
        String str;
        long j;
        zzvb zzvbVar;
        zzvb zzvbVar2;
        zzvb zzvbVar3;
        String unused;
        String unused2;
        if (zzmkVar.zzb.zzo()) {
            String str2 = this.zzh;
            if (str2 != null) {
                zzoq zzoqVar = (zzoq) this.zze.get(str2);
                zzoqVar.getClass();
                zzo(zzoqVar);
                return;
            }
            return;
        }
        zzoq zzoqVar2 = (zzoq) this.zze.get(this.zzh);
        int i = zzmkVar.zzc;
        zzvb zzvbVar4 = zzmkVar.zzd;
        zzoq zzm = zzm(i, zzvbVar4);
        str = zzm.zzb;
        this.zzh = str;
        zzi(zzmkVar);
        if (zzvbVar4 != null && zzvbVar4.zzb()) {
            if (zzoqVar2 != null) {
                long j2 = zzvbVar4.zzd;
                j = zzoqVar2.zzd;
                if (j == j2) {
                    zzvbVar = zzoqVar2.zze;
                    if (zzvbVar != null) {
                        zzvbVar2 = zzoqVar2.zze;
                        if (zzvbVar2.zzb == zzvbVar4.zzb) {
                            zzvbVar3 = zzoqVar2.zze;
                            if (zzvbVar3.zzc == zzvbVar4.zzc) {
                                return;
                            }
                        }
                    }
                }
            }
            unused = zzm(i, new zzvb(zzvbVar4.zza, zzvbVar4.zzd)).zzb;
            unused2 = zzm.zzb;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    @Nullable
    public final synchronized String zze() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final synchronized String zzf(zzbl zzblVar, zzvb zzvbVar) {
        String str;
        str = zzm(zzblVar.zzn(zzvbVar.zza, this.zzd).zzc, zzvbVar).zzb;
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final synchronized void zzg(zzmk zzmkVar) {
        boolean z;
        zzoz zzozVar;
        String str;
        try {
            String str2 = this.zzh;
            if (str2 != null) {
                zzoq zzoqVar = (zzoq) this.zze.get(str2);
                if (zzoqVar != null) {
                    zzo(zzoqVar);
                } else {
                    throw null;
                }
            }
            Iterator it = this.zze.values().iterator();
            while (it.hasNext()) {
                zzoq zzoqVar2 = (zzoq) it.next();
                it.remove();
                z = zzoqVar2.zzf;
                if (z && (zzozVar = this.zzf) != null) {
                    str = zzoqVar2.zzb;
                    zzozVar.zzv(zzmkVar, str, false);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final void zzh(zzoz zzozVar) {
        this.zzf = zzozVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final synchronized void zzi(zzmk zzmkVar) {
        boolean z;
        String str;
        boolean z2;
        String str2;
        boolean z3;
        String str3;
        long j;
        int i;
        String unused;
        String unused2;
        try {
            if (this.zzf != null) {
                zzbl zzblVar = zzmkVar.zzb;
                if (!zzblVar.zzo()) {
                    zzvb zzvbVar = zzmkVar.zzd;
                    if (zzvbVar != null) {
                        if (zzvbVar.zzd >= zzl()) {
                            zzoq zzoqVar = (zzoq) this.zze.get(this.zzh);
                            if (zzoqVar != null) {
                                j = zzoqVar.zzd;
                                if (j == -1) {
                                    i = zzoqVar.zzc;
                                    if (i == zzmkVar.zzc) {
                                    }
                                }
                            }
                        }
                    }
                    int i2 = zzmkVar.zzc;
                    zzoq zzm = zzm(i2, zzvbVar);
                    if (this.zzh == null) {
                        str3 = zzm.zzb;
                        this.zzh = str3;
                    }
                    if (zzvbVar != null && zzvbVar.zzb()) {
                        Object obj = zzvbVar.zza;
                        long j2 = zzvbVar.zzd;
                        int i3 = zzvbVar.zzb;
                        zzoq zzm2 = zzm(i2, new zzvb(obj, j2, i3));
                        z3 = zzm2.zzf;
                        if (!z3) {
                            zzm2.zzf = true;
                            zzbj zzbjVar = this.zzd;
                            zzblVar.zzn(obj, zzbjVar);
                            zzbjVar.zzg(i3);
                            Math.max(0L, zzeu.zzv(0L) + zzeu.zzv(0L));
                            unused = zzm2.zzb;
                        }
                    }
                    z = zzm.zzf;
                    if (!z) {
                        zzm.zzf = true;
                        unused2 = zzm.zzb;
                    }
                    str = zzm.zzb;
                    if (str.equals(this.zzh)) {
                        z2 = zzm.zzg;
                        if (!z2) {
                            zzm.zzg = true;
                            zzoz zzozVar = this.zzf;
                            str2 = zzm.zzb;
                            zzozVar.zzu(zzmkVar, str2);
                            return;
                        }
                    }
                }
                return;
            }
            throw null;
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final synchronized void zzj(zzmk zzmkVar, int i) {
        boolean z;
        String str;
        String str2;
        boolean z2;
        try {
            if (this.zzf != null) {
                Iterator it = this.zze.values().iterator();
                while (it.hasNext()) {
                    zzoq zzoqVar = (zzoq) it.next();
                    if (zzoqVar.zzk(zzmkVar)) {
                        it.remove();
                        z = zzoqVar.zzf;
                        if (z) {
                            str = zzoqVar.zzb;
                            boolean equals = str.equals(this.zzh);
                            boolean z3 = false;
                            if (i == 0 && equals) {
                                z2 = zzoqVar.zzg;
                                if (z2) {
                                    z3 = true;
                                }
                            }
                            if (equals) {
                                zzo(zzoqVar);
                            }
                            zzoz zzozVar = this.zzf;
                            str2 = zzoqVar.zzb;
                            zzozVar.zzv(zzmkVar, str2, z3);
                        }
                    }
                }
                zzp(zzmkVar);
            } else {
                throw null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final synchronized void zzk(zzmk zzmkVar) {
        boolean z;
        String str;
        String str2;
        try {
            if (this.zzf != null) {
                zzbl zzblVar = this.zzg;
                this.zzg = zzmkVar.zzb;
                Iterator it = this.zze.values().iterator();
                while (it.hasNext()) {
                    zzoq zzoqVar = (zzoq) it.next();
                    if (zzoqVar.zzl(zzblVar, this.zzg) && !zzoqVar.zzk(zzmkVar)) {
                    }
                    it.remove();
                    z = zzoqVar.zzf;
                    if (z) {
                        str = zzoqVar.zzb;
                        if (str.equals(this.zzh)) {
                            zzo(zzoqVar);
                        }
                        zzoz zzozVar = this.zzf;
                        str2 = zzoqVar.zzb;
                        zzozVar.zzv(zzmkVar, str2, false);
                    }
                }
                zzp(zzmkVar);
            } else {
                throw null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public zzor(zzfvu zzfvuVar) {
        this.zzc = new zzbk();
        this.zzd = new zzbj();
        this.zze = new HashMap();
        this.zzg = zzbl.zza;
        this.zzi = -1L;
    }
}
