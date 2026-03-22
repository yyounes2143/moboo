package com.google.android.gms.internal.ads;

import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.media3.common.C;
import com.tencent.thumbplayer.tcmedia.core.common.TPMediaCodecProfileLevel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzath extends zzgys implements zzhae {
    private static final zzath zza;
    private static volatile zzhal zzb;
    private long zzA;
    private long zzB;
    private long zzC;
    private long zzD;
    private long zzE;
    private long zzF;
    private long zzJ;
    private long zzK;
    private long zzL;
    private long zzN;
    private zzatj zzQ;
    private zzatc zzaH;
    private zzata zzaI;
    private long zzaO;
    private long zzaP;
    private zzass zzaS;
    private zzasu zzaT;
    private int zzaW;
    private long zzaX;
    private zzate zzai;
    private zzatg zzak;
    private int zzav;
    private int zzaw;
    private int zzax;
    private int zzay;
    private zzatw zzaz;
    private boolean zzba;
    private long zzbc;
    private zzatu zzbd;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzu;
    private long zzv;
    private long zzx;
    private long zzy;
    private long zzz;
    private String zzg = "";
    private String zzh = "";
    private String zzw = "";
    private String zzG = "";
    private String zzH = "D";
    private String zzI = "";
    private String zzM = "";
    private long zzO = -1;
    private long zzP = -1;
    private long zzR = -1;
    private long zzS = -1;
    private long zzT = -1;
    private long zzU = -1;
    private long zzV = -1;
    private long zzW = -1;
    private String zzX = "D";
    private String zzY = "D";
    private long zzZ = -1;
    private int zzaa = 1000;
    private int zzab = 1000;
    private long zzac = -1;
    private long zzad = -1;
    private long zzae = -1;
    private long zzaf = -1;
    private long zzag = -1;
    private int zzah = 1000;
    private zzgze zzaj = zzgys.zzbK();
    private long zzal = -1;
    private long zzam = -1;
    private long zzan = -1;
    private long zzao = -1;
    private long zzap = -1;
    private long zzaq = -1;
    private long zzar = -1;
    private long zzas = -1;
    private String zzat = "D";
    private long zzau = -1;
    private long zzaA = -1;
    private int zzaB = 1000;
    private int zzaC = 1000;
    private String zzaD = "D";
    private zzgze zzaE = zzgys.zzbK();
    private int zzaF = 1000;
    private zzgze zzaG = zzgys.zzbK();
    private String zzaJ = "";
    private long zzaK = -1;
    private long zzaL = -1;
    private long zzaM = -1;
    private long zzaN = -1;
    private long zzaQ = -1;
    private String zzaR = "";
    private long zzaU = -1;
    private long zzaV = -1;
    private String zzaY = "";
    private int zzaZ = 2;
    private String zzbb = "";
    private long zzbe = -1;
    private String zzbf = "";

    static {
        zzath zzathVar = new zzath();
        zza = zzathVar;
        zzgys.zzbZ(zzath.class, zzathVar);
    }

    private zzath() {
    }

    public static /* synthetic */ void zzA(zzath zzathVar, long j) {
        zzathVar.zze |= 8192;
        zzathVar.zzaM = j;
    }

    public static /* synthetic */ void zzB(zzath zzathVar, String str) {
        str.getClass();
        zzathVar.zzd |= 256;
        zzathVar.zzY = str;
    }

    public static /* synthetic */ void zzC(zzath zzathVar, String str) {
        str.getClass();
        zzathVar.zzc |= 4194304;
        zzathVar.zzG = str;
    }

    public static /* synthetic */ void zzD(zzath zzathVar, long j) {
        zzathVar.zzc |= 1048576;
        zzathVar.zzE = j;
    }

    public static /* synthetic */ void zzE(zzath zzathVar, long j) {
        zzathVar.zzc |= 1024;
        zzathVar.zzu = j;
    }

    public static /* synthetic */ void zzF(zzath zzathVar, long j) {
        zzathVar.zzc |= 2048;
        zzathVar.zzv = j;
    }

    public static /* synthetic */ void zzG(zzath zzathVar, String str) {
        str.getClass();
        zzathVar.zzc |= 1;
        zzathVar.zzg = str;
    }

    public static /* synthetic */ void zzH(zzath zzathVar, long j) {
        zzathVar.zzd |= 4194304;
        zzathVar.zzan = j;
    }

    public static /* synthetic */ void zzI(zzath zzathVar, long j) {
        zzathVar.zzc |= 524288;
        zzathVar.zzD = j;
    }

    public static /* synthetic */ void zzJ(zzath zzathVar, long j) {
        zzathVar.zzd |= 8388608;
        zzathVar.zzao = j;
    }

    public static /* synthetic */ void zzK(zzath zzathVar, long j) {
        zzathVar.zzd |= 64;
        zzathVar.zzW = j;
    }

    public static /* synthetic */ void zzL(zzath zzathVar, long j) {
        zzathVar.zzd |= 16;
        zzathVar.zzU = j;
    }

    public static /* synthetic */ void zzM(zzath zzathVar, long j) {
        zzathVar.zzc |= Integer.MIN_VALUE;
        zzathVar.zzP = j;
    }

    public static /* synthetic */ void zzN(zzath zzathVar, long j) {
        zzathVar.zzd |= 8;
        zzathVar.zzT = j;
    }

    public static /* synthetic */ void zzO(zzath zzathVar, long j) {
        zzathVar.zzd |= 4;
        zzathVar.zzS = j;
    }

    public static /* synthetic */ void zzP(zzath zzathVar, long j) {
        zzathVar.zzc |= 1073741824;
        zzathVar.zzO = j;
    }

    public static /* synthetic */ void zzQ(zzath zzathVar, long j) {
        zzathVar.zzc |= 32768;
        zzathVar.zzz = j;
    }

    public static /* synthetic */ void zzR(zzath zzathVar, long j) {
        zzathVar.zzd |= 2;
        zzathVar.zzR = j;
    }

    public static /* synthetic */ void zzS(zzath zzathVar, long j) {
        zzathVar.zzc |= 8192;
        zzathVar.zzx = j;
    }

    public static /* synthetic */ void zzT(zzath zzathVar, long j) {
        zzathVar.zzc |= 16384;
        zzathVar.zzy = j;
    }

    public static /* synthetic */ void zzU(zzath zzathVar, long j) {
        zzathVar.zzd |= 16384;
        zzathVar.zzae = j;
    }

    public static /* synthetic */ void zzV(zzath zzathVar, long j) {
        zzathVar.zze |= 2048;
        zzathVar.zzaK = j;
    }

    public static /* synthetic */ void zzW(zzath zzathVar, zzate zzateVar) {
        zzateVar.getClass();
        zzathVar.zzai = zzateVar;
        zzathVar.zzd |= 262144;
    }

    public static /* synthetic */ void zzX(zzath zzathVar, long j) {
        zzathVar.zzc |= AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL;
        zzathVar.zzK = j;
    }

    public static /* synthetic */ void zzY(zzath zzathVar, long j) {
        zzathVar.zzc |= 65536;
        zzathVar.zzA = j;
    }

    public static /* synthetic */ void zzZ(zzath zzathVar, long j) {
        zzathVar.zzc |= 2097152;
        zzathVar.zzF = j;
    }

    public static zzask zza() {
        return (zzask) zza.zzaZ();
    }

    public static /* synthetic */ void zzaa(zzath zzathVar, long j) {
        zzathVar.zzc |= C.BUFFER_FLAG_FIRST_SAMPLE;
        zzathVar.zzL = j;
    }

    public static /* synthetic */ void zzab(zzath zzathVar, long j) {
        zzathVar.zzc |= TPMediaCodecProfileLevel.HEVCHighTierLevel62;
        zzathVar.zzJ = j;
    }

    public static /* synthetic */ void zzac(zzath zzathVar, long j) {
        zzathVar.zzc |= C.BUFFER_FLAG_LAST_SAMPLE;
        zzathVar.zzN = j;
    }

    public static /* synthetic */ void zzad(zzath zzathVar, zzatg zzatgVar) {
        zzatgVar.getClass();
        zzathVar.zzak = zzatgVar;
        zzathVar.zzd |= 524288;
    }

    public static /* synthetic */ void zzae(zzath zzathVar, String str) {
        str.getClass();
        zzathVar.zzc |= 268435456;
        zzathVar.zzM = str;
    }

    public static /* synthetic */ void zzah(zzath zzathVar, int i) {
        zzathVar.zzab = i - 1;
        zzathVar.zzd |= 2048;
    }

    public static /* synthetic */ void zzai(zzath zzathVar, int i) {
        zzathVar.zzah = i - 1;
        zzathVar.zzd |= 131072;
    }

    public static /* synthetic */ void zzaj(zzath zzathVar, int i) {
        zzathVar.zzaC = i - 1;
        zzathVar.zze |= 32;
    }

    public static /* synthetic */ void zzak(zzath zzathVar, int i) {
        zzathVar.zzaW = i - 1;
        zzathVar.zze |= 8388608;
    }

    public static /* synthetic */ void zzal(zzath zzathVar, int i) {
        zzathVar.zzaB = i - 1;
        zzathVar.zze |= 16;
    }

    public static /* synthetic */ void zzam(zzath zzathVar, int i) {
        zzathVar.zzaa = i - 1;
        zzathVar.zzd |= 1024;
    }

    public static zzath zzc() {
        return zza;
    }

    public static zzath zzd(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
        return (zzath) zzgys.zzbx(zza, bArr, zzgycVar);
    }

    public static /* synthetic */ void zzh(zzath zzathVar, zzate zzateVar) {
        zzateVar.getClass();
        zzgze zzgzeVar = zzathVar.zzaj;
        if (!zzgzeVar.zzc()) {
            zzathVar.zzaj = zzgys.zzbL(zzgzeVar);
        }
        zzathVar.zzaj.add(zzateVar);
    }

    public static /* synthetic */ void zzj(zzath zzathVar, long j) {
        zzathVar.zzd |= AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL;
        zzathVar.zzar = j;
    }

    public static /* synthetic */ void zzk(zzath zzathVar, String str) {
        str.getClass();
        zzathVar.zzd |= 268435456;
        zzathVar.zzat = str;
    }

    public static /* synthetic */ void zzl(zzath zzathVar, long j) {
        zzathVar.zzd |= C.BUFFER_FLAG_FIRST_SAMPLE;
        zzathVar.zzas = j;
    }

    public static /* synthetic */ void zzm(zzath zzathVar, long j) {
        zzathVar.zze |= 4096;
        zzathVar.zzaL = j;
    }

    public static /* synthetic */ void zzn(zzath zzathVar, String str) {
        str.getClass();
        zzathVar.zze |= 262144;
        zzathVar.zzaR = str;
    }

    public static /* synthetic */ void zzo(zzath zzathVar, String str) {
        str.getClass();
        zzathVar.zzc |= 2;
        zzathVar.zzh = str;
    }

    public static /* synthetic */ void zzp(zzath zzathVar, String str) {
        str.getClass();
        zzathVar.zzd |= 128;
        zzathVar.zzX = str;
    }

    public static /* synthetic */ void zzq(zzath zzathVar, long j) {
        zzathVar.zzc |= 4;
        zzathVar.zzi = j;
    }

    public static /* synthetic */ void zzr(zzath zzathVar, long j) {
        zzathVar.zzd |= 2097152;
        zzathVar.zzam = j;
    }

    public static /* synthetic */ void zzs(zzath zzathVar, long j) {
        zzathVar.zzc |= 32;
        zzathVar.zzl = j;
    }

    public static /* synthetic */ void zzt(zzath zzathVar, long j) {
        zzathVar.zzc |= 16;
        zzathVar.zzk = j;
    }

    public static /* synthetic */ void zzu(zzath zzathVar, String str) {
        str.getClass();
        zzathVar.zzc |= 16777216;
        zzathVar.zzI = str;
    }

    public static /* synthetic */ void zzv(zzath zzathVar, long j) {
        zzathVar.zzd |= 32;
        zzathVar.zzV = j;
    }

    public static /* synthetic */ void zzw(zzath zzathVar, long j) {
        zzathVar.zzd |= 4096;
        zzathVar.zzac = j;
    }

    public static /* synthetic */ void zzx(zzath zzathVar, long j) {
        zzathVar.zzd |= 8192;
        zzathVar.zzad = j;
    }

    public static /* synthetic */ void zzy(zzath zzathVar, long j) {
        zzathVar.zze |= C.BUFFER_FLAG_LAST_SAMPLE;
        zzathVar.zzbc = j;
    }

    public static /* synthetic */ void zzz(zzath zzathVar, long j) {
        zzathVar.zze |= 16384;
        zzathVar.zzaN = j;
    }

    public final boolean zzaf() {
        if ((this.zzc & 4194304) != 0) {
            return true;
        }
        return false;
    }

    public final boolean zzag() {
        if ((this.zze & 1073741824) != 0) {
            return true;
        }
        return false;
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
                                    synchronized (zzath.class) {
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
                    return new zzask(null);
                }
                return new zzath();
            }
            zzgyy zzgyyVar = zzatp.zza;
            return zzgys.zzbQ(zza, "\u0001d\u0000\u0004\u0001Įd\u0000\u0003\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဂ\n\fဂ\u000b\rဈ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂX\u0016ဂ\u0014\u0017ဂ\u0015\u0018ဈY\u0019ဂ]\u001a᠌Z\u001bဈ\u0016\u001cဇ[\u001dဈ\u0018\u001eဈ\\\u001fဂ\u0019 ဂ\u001a!ဂ\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဂ\u001f&ဉ 'ဂ!(ဂ\")ဂ#*ဂ$+\u001b,ဂ%-ဂ&.ဈ'/ဈ(0᠌*1᠌+2ဉ23ဂ,4ဂ-5ဂ.6ဂ/7ဂ08᠌19ဉ3:ဂ4;ဂ5<ဂ6=ဂ7>ဂ:?ဂ;@ဂ=A᠌>B᠌?Cဈ<D᠌AEဉBFဂCGဂ8Hဂ9I᠌DJဂ)Kဈ\u0017L᠌EMဈFN\u001bO᠌GP\u001bQဉHRဈJSဂKTဂLUဂMVဂNWဂOXဂQYဈRZဉS[ဉT\\ဂU]ဂV^᠌W_᠌@`ဉIaဂPÉဉ^ĭဂ_Įဈ`", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzaX", "zzE", "zzF", "zzaY", "zzbc", "zzaZ", zzaso.zza, "zzG", "zzba", "zzI", "zzbb", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzaj", zzate.class, "zzV", "zzW", "zzX", "zzY", "zzaa", zzgyyVar, "zzab", zzgyyVar, "zzai", "zzac", "zzad", "zzae", "zzaf", "zzag", "zzah", zzgyyVar, "zzak", "zzal", "zzam", "zzan", "zzao", "zzar", "zzas", "zzau", "zzav", zzato.zza, "zzaw", zzats.zza, "zzat", "zzay", zzasl.zza, "zzaz", "zzaA", "zzap", "zzaq", "zzaB", zzgyyVar, "zzZ", "zzH", "zzaC", zzgyyVar, "zzaD", "zzaE", zzasy.class, "zzaF", zzgyyVar, "zzaG", zzasn.class, "zzaH", "zzaJ", "zzaK", "zzaL", "zzaM", "zzaN", "zzaO", "zzaQ", "zzaR", "zzaS", "zzaT", "zzaU", "zzaV", "zzaW", zzasv.zza, "zzax", zzasp.zza, "zzaI", "zzaP", "zzbd", "zzbe", "zzbf"});
        }
        return (byte) 1;
    }

    public final zzatu zzf() {
        zzatu zzatuVar = this.zzbd;
        if (zzatuVar == null) {
            return zzatu.zzc();
        }
        return zzatuVar;
    }

    public final String zzg() {
        return this.zzG;
    }
}
