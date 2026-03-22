package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzit {
    final Context zza;
    zzdg zzb;
    zzfvu zzc;
    zzfvu zzd;
    zzfvu zze;
    zzfvu zzf;
    zzfvu zzg;
    zzfur zzh;
    Looper zzi;
    int zzj;
    zze zzk;
    int zzl;
    boolean zzm;
    zzmd zzn;
    long zzo;
    long zzp;
    boolean zzq;
    boolean zzr;
    String zzs;
    zzid zzt;

    public zzit(final Context context, zzceh zzcehVar) {
        zzim zzimVar = new zzim(zzcehVar);
        zzin zzinVar = new zzin(context);
        zzfvu zzfvuVar = new zzfvu() { // from class: com.google.android.gms.internal.ads.zzio
            @Override // com.google.android.gms.internal.ads.zzfvu
            public final Object zza() {
                return new zzyo(context);
            }
        };
        zzfvu zzfvuVar2 = new zzfvu() { // from class: com.google.android.gms.internal.ads.zzip
            @Override // com.google.android.gms.internal.ads.zzfvu
            public final Object zza() {
                return new zzig();
            }
        };
        zziq zziqVar = new zziq(context);
        zzfur zzfurVar = new zzfur() { // from class: com.google.android.gms.internal.ads.zzir
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                return new zzoo((zzdg) obj);
            }
        };
        context.getClass();
        this.zza = context;
        this.zzc = zzimVar;
        this.zzd = zzinVar;
        this.zze = zzfvuVar;
        this.zzf = zzfvuVar2;
        this.zzg = zziqVar;
        this.zzh = zzfurVar;
        this.zzi = zzeu.zzz();
        this.zzk = zze.zza;
        this.zzl = 1;
        this.zzm = true;
        this.zzn = zzmd.zzb;
        int i = zzmc.zza;
        this.zzt = new zzid(0.97f, 1.03f, 1000L, 1.0E-7f, zzeu.zzs(20L), zzeu.zzs(500L), 0.999f, null);
        this.zzb = zzdg.zza;
        this.zzo = 500L;
        this.zzp = 2000L;
        this.zzq = true;
        this.zzs = "";
        this.zzj = -1000;
        if (Build.VERSION.SDK_INT >= 35) {
            int i2 = zzij.zza;
        }
    }

    public static /* synthetic */ zzva zza(Context context) {
        return new zzuo(context, new zzadi());
    }
}
