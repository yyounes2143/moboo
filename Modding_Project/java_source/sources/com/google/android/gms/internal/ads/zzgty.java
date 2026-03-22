package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgty extends zzgys implements zzhae {
    private static final zzgty zza;
    private static volatile zzhal zzb;
    private int zzc;
    private zzgze zzd = zzgys.zzbK();

    static {
        zzgty zzgtyVar = new zzgty();
        zza = zzgtyVar;
        zzgys.zzbZ(zzgty.class, zzgtyVar);
    }

    private zzgty() {
    }

    public static zzgtu zzc() {
        return (zzgtu) zza.zzaZ();
    }

    public static zzgty zzg(InputStream inputStream, zzgyc zzgycVar) throws IOException {
        return (zzgty) zzgys.zzbu(zza, inputStream, zzgycVar);
    }

    public static /* synthetic */ void zzi(zzgty zzgtyVar, zzgtw zzgtwVar) {
        zzgtwVar.getClass();
        zzgze zzgzeVar = zzgtyVar.zzd;
        if (!zzgzeVar.zzc()) {
            zzgtyVar.zzd = zzgys.zzbL(zzgzeVar);
        }
        zzgtyVar.zzd.add(zzgtwVar);
    }

    public final int zza() {
        return this.zzd.size();
    }

    public final int zzb() {
        return this.zzc;
    }

    public final zzgtw zzd(int i) {
        return (zzgtw) this.zzd.get(i);
    }

    @Override // com.google.android.gms.internal.ads.zzgys
    public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
        zzhal zzhalVar;
        int ordinal = zzgyrVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        if (ordinal != 5) {
                            if (ordinal == 6) {
                                zzhal zzhalVar2 = zzb;
                                if (zzhalVar2 == null) {
                                    synchronized (zzgty.class) {
                                        try {
                                            zzhalVar = zzb;
                                            if (zzhalVar == null) {
                                                zzhalVar = new zzgyn(zza);
                                                zzb = zzhalVar;
                                            }
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                    return zzhalVar;
                                }
                                return zzhalVar2;
                            }
                            throw null;
                        }
                        return zza;
                    }
                    return new zzgtu(null);
                }
                return new zzgty();
            }
            return zzgys.zzbQ(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzc", "zzd", zzgtw.class});
        }
        return (byte) 1;
    }

    public final List zzh() {
        return this.zzd;
    }
}
