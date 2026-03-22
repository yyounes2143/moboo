package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgtm extends zzgys implements zzhae {
    private static final zzgtm zza;
    private static volatile zzhal zzb;
    private String zzc = "";
    private zzgxk zzd = zzgxk.zzb;
    private int zze;

    static {
        zzgtm zzgtmVar = new zzgtm();
        zza = zzgtmVar;
        zzgys.zzbZ(zzgtm.class, zzgtmVar);
    }

    private zzgtm() {
    }

    public static zzgtj zza() {
        return (zzgtj) zza.zzaZ();
    }

    public static zzgtm zzd() {
        return zza;
    }

    public static /* synthetic */ void zzi(zzgtm zzgtmVar, String str) {
        str.getClass();
        zzgtmVar.zzc = str;
    }

    public static /* synthetic */ void zzj(zzgtm zzgtmVar, zzgxk zzgxkVar) {
        zzgxkVar.getClass();
        zzgtmVar.zzd = zzgxkVar;
    }

    public final zzgtk zzb() {
        zzgtk zzgtkVar;
        int i = this.zze;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            zzgtkVar = null;
                        } else {
                            zzgtkVar = zzgtk.REMOTE;
                        }
                    } else {
                        zzgtkVar = zzgtk.ASYMMETRIC_PUBLIC;
                    }
                } else {
                    zzgtkVar = zzgtk.ASYMMETRIC_PRIVATE;
                }
            } else {
                zzgtkVar = zzgtk.SYMMETRIC;
            }
        } else {
            zzgtkVar = zzgtk.UNKNOWN_KEYMATERIAL;
        }
        if (zzgtkVar == null) {
            return zzgtk.UNRECOGNIZED;
        }
        return zzgtkVar;
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
                                    synchronized (zzgtm.class) {
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
                    return new zzgtj(null);
                }
                return new zzgtm();
            }
            return zzgys.zzbQ(zza, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final zzgxk zzf() {
        return this.zzd;
    }

    public final String zzg() {
        return this.zzc;
    }
}
