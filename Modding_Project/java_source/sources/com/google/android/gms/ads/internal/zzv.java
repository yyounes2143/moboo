package com.google.android.gms.ads.internal;

import android.os.Build;
import com.google.android.gms.ads.internal.overlay.zzae;
import com.google.android.gms.ads.internal.overlay.zzaf;
import com.google.android.gms.ads.internal.overlay.zzz;
import com.google.android.gms.ads.internal.util.zzaa;
import com.google.android.gms.ads.internal.util.zzab;
import com.google.android.gms.ads.internal.util.zzay;
import com.google.android.gms.ads.internal.util.zzbt;
import com.google.android.gms.ads.internal.util.zzbu;
import com.google.android.gms.ads.internal.util.zzci;
import com.google.android.gms.ads.internal.util.zzx;
import com.google.android.gms.ads.internal.util.zzy;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.ads.zzazo;
import com.google.android.gms.internal.ads.zzbbb;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbdb;
import com.google.android.gms.internal.ads.zzbdu;
import com.google.android.gms.internal.ads.zzboe;
import com.google.android.gms.internal.ads.zzbpg;
import com.google.android.gms.internal.ads.zzbvs;
import com.google.android.gms.internal.ads.zzbyj;
import com.google.android.gms.internal.ads.zzbzn;
import com.google.android.gms.internal.ads.zzbzu;
import com.google.android.gms.internal.ads.zzcag;
import com.google.android.gms.internal.ads.zzcan;
import com.google.android.gms.internal.ads.zzcdb;
import com.google.android.gms.internal.ads.zzcfo;
import com.google.android.gms.internal.ads.zzecu;
import com.google.android.gms.internal.ads.zzecv;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzv {
    private static final zzv zza = new zzv();
    private final zzbbq zzA;
    private final zzbyj zzB;
    private final zzci zzC;
    private final zzcdb zzD;
    private final zzcan zzE;
    private final com.google.android.gms.ads.internal.overlay.zza zzb;
    private final com.google.android.gms.ads.internal.overlay.zzn zzc;
    private final com.google.android.gms.ads.internal.util.zzs zzd;
    private final zzcfo zze;
    private final zzbzu zzf;
    private final zzaa zzg;
    private final zzazo zzh;
    private final zzbzn zzi;
    private final zzab zzj;
    private final zzbbb zzk;
    private final Clock zzl;
    private final zzf zzm;
    private final zzbdb zzn;
    private final zzbdu zzo;
    private final zzay zzp;
    private final zzbvs zzq;
    private final zzcag zzr;
    private final zzboe zzs;
    private final zzz zzt;
    private final zzbt zzu;
    private final zzae zzv;
    private final zzaf zzw;
    private final zzbpg zzx;
    private final zzbu zzy;
    private final zzecv zzz;

    public zzv() {
        zzaa zztVar;
        com.google.android.gms.ads.internal.overlay.zza zzaVar = new com.google.android.gms.ads.internal.overlay.zza();
        com.google.android.gms.ads.internal.overlay.zzn zznVar = new com.google.android.gms.ads.internal.overlay.zzn();
        com.google.android.gms.ads.internal.util.zzs zzsVar = new com.google.android.gms.ads.internal.util.zzs();
        zzcfo zzcfoVar = new zzcfo();
        zzbzu zzbzuVar = new zzbzu();
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            zztVar = new zzy();
        } else if (i >= 28) {
            zztVar = new zzx();
        } else if (i >= 26) {
            zztVar = new com.google.android.gms.ads.internal.util.zzv();
        } else if (i >= 24) {
            zztVar = new com.google.android.gms.ads.internal.util.zzu();
        } else {
            zztVar = new com.google.android.gms.ads.internal.util.zzt();
        }
        zzazo zzazoVar = new zzazo();
        zzbzn zzbznVar = new zzbzn();
        zzab zzabVar = new zzab();
        zzbbb zzbbbVar = new zzbbb();
        Clock defaultClock = DefaultClock.getInstance();
        zzf zzfVar = new zzf();
        zzbdb zzbdbVar = new zzbdb();
        zzbdu zzbduVar = new zzbdu();
        zzay zzayVar = new zzay();
        zzbvs zzbvsVar = new zzbvs();
        zzcag zzcagVar = new zzcag();
        zzboe zzboeVar = new zzboe();
        zzz zzzVar = new zzz();
        zzbt zzbtVar = new zzbt();
        zzae zzaeVar = new zzae();
        zzaf zzafVar = new zzaf();
        zzbpg zzbpgVar = new zzbpg();
        zzbu zzbuVar = new zzbu();
        zzecu zzecuVar = new zzecu();
        zzbbq zzbbqVar = new zzbbq();
        zzbyj zzbyjVar = new zzbyj();
        zzci zzciVar = new zzci();
        zzcdb zzcdbVar = new zzcdb();
        zzcan zzcanVar = new zzcan();
        this.zzb = zzaVar;
        this.zzc = zznVar;
        this.zzd = zzsVar;
        this.zze = zzcfoVar;
        this.zzf = zzbzuVar;
        this.zzg = zztVar;
        this.zzh = zzazoVar;
        this.zzi = zzbznVar;
        this.zzj = zzabVar;
        this.zzk = zzbbbVar;
        this.zzl = defaultClock;
        this.zzm = zzfVar;
        this.zzn = zzbdbVar;
        this.zzo = zzbduVar;
        this.zzp = zzayVar;
        this.zzq = zzbvsVar;
        this.zzr = zzcagVar;
        this.zzs = zzboeVar;
        this.zzu = zzbtVar;
        this.zzt = zzzVar;
        this.zzv = zzaeVar;
        this.zzw = zzafVar;
        this.zzx = zzbpgVar;
        this.zzy = zzbuVar;
        this.zzz = zzecuVar;
        this.zzA = zzbbqVar;
        this.zzB = zzbyjVar;
        this.zzC = zzciVar;
        this.zzD = zzcdbVar;
        this.zzE = zzcanVar;
    }

    public static zzcdb zzA() {
        return zza.zzD;
    }

    public static zzcfo zzB() {
        return zza.zze;
    }

    public static zzecv zzC() {
        return zza.zzz;
    }

    public static Clock zzD() {
        return zza.zzl;
    }

    public static zzf zza() {
        return zza.zzm;
    }

    public static zzazo zzb() {
        return zza.zzh;
    }

    public static zzbbb zzc() {
        return zza.zzk;
    }

    public static zzbbq zzd() {
        return zza.zzA;
    }

    public static zzbdb zze() {
        return zza.zzn;
    }

    public static zzbdu zzf() {
        return zza.zzo;
    }

    public static zzboe zzg() {
        return zza.zzs;
    }

    public static zzbpg zzh() {
        return zza.zzx;
    }

    public static com.google.android.gms.ads.internal.overlay.zza zzi() {
        return zza.zzb;
    }

    public static com.google.android.gms.ads.internal.overlay.zzn zzj() {
        return zza.zzc;
    }

    public static zzz zzk() {
        return zza.zzt;
    }

    public static zzae zzl() {
        return zza.zzv;
    }

    public static zzaf zzm() {
        return zza.zzw;
    }

    public static zzbvs zzn() {
        return zza.zzq;
    }

    public static zzbyj zzo() {
        return zza.zzB;
    }

    public static zzbzn zzp() {
        return zza.zzi;
    }

    public static zzbzu zzq() {
        return zza.zzf;
    }

    public static com.google.android.gms.ads.internal.util.zzs zzr() {
        return zza.zzd;
    }

    public static zzaa zzs() {
        return zza.zzg;
    }

    public static zzab zzt() {
        return zza.zzj;
    }

    public static zzay zzu() {
        return zza.zzp;
    }

    public static zzbt zzv() {
        return zza.zzu;
    }

    public static zzbu zzw() {
        return zza.zzy;
    }

    public static zzci zzx() {
        return zza.zzC;
    }

    public static zzcag zzy() {
        return zza.zzr;
    }

    public static zzcan zzz() {
        return zza.zzE;
    }
}
