package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzwk extends zzua implements zzwb {
    private final zzgf zza;
    private final zzsb zzb;
    private final int zzc;
    private boolean zzd = true;
    private long zze = -9223372036854775807L;
    private boolean zzf;
    private boolean zzg;
    @Nullable
    private zzhg zzh;
    @GuardedBy("this")
    private zzap zzi;
    private final zzwh zzj;
    private final zzzk zzk;

    public /* synthetic */ zzwk(zzap zzapVar, zzgf zzgfVar, zzwh zzwhVar, zzsb zzsbVar, zzzk zzzkVar, int i, int i2, zzz zzzVar, zzfvu zzfvuVar, zzwj zzwjVar) {
        this.zzi = zzapVar;
        this.zza = zzgfVar;
        this.zzj = zzwhVar;
        this.zzb = zzsbVar;
        this.zzk = zzzkVar;
        this.zzc = i;
    }

    private final void zzw() {
        zzaj zzajVar;
        long j = this.zze;
        boolean z = this.zzf;
        boolean z2 = this.zzg;
        zzap zzJ = zzJ();
        if (z2) {
            zzajVar = zzJ.zzc;
        } else {
            zzajVar = null;
        }
        zzbl zzwxVar = new zzwx(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j, j, 0L, 0L, z, false, false, null, zzJ, zzajVar);
        if (this.zzd) {
            zzwxVar = new zzwg(this, zzwxVar);
        }
        zzo(zzwxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final void zzG(zzuz zzuzVar) {
        ((zzwf) zzuzVar).zzO();
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final zzuz zzI(zzvb zzvbVar, zzzg zzzgVar, long j) {
        zzgg zza = this.zza.zza();
        zzhg zzhgVar = this.zzh;
        if (zzhgVar != null) {
            zza.zzf(zzhgVar);
        }
        zzak zzakVar = zzJ().zzb;
        zzakVar.getClass();
        Uri uri = zzakVar.zza;
        zzwh zzwhVar = this.zzj;
        zzb();
        return new zzwf(uri, zza, new zzud(zzwhVar.zza), this.zzb, zzc(zzvbVar), this.zzk, zze(zzvbVar), this, zzzgVar, null, this.zzc, 0, null, zzeu.zzs(-9223372036854775807L), null);
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final synchronized zzap zzJ() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void zza(long j, zzaem zzaemVar, boolean z) {
        if (j == -9223372036854775807L) {
            j = this.zze;
        }
        boolean zzh = zzaemVar.zzh();
        if (!this.zzd && this.zze == j && this.zzf == zzh && this.zzg == z) {
            return;
        }
        this.zze = j;
        this.zzf = zzh;
        this.zzg = z;
        this.zzd = false;
        zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzua
    public final void zzn(@Nullable zzhg zzhgVar) {
        this.zzh = zzhgVar;
        Looper.myLooper().getClass();
        zzb();
        zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzua, com.google.android.gms.internal.ads.zzvd
    public final synchronized void zzt(zzap zzapVar) {
        this.zzi = zzapVar;
    }

    @Override // com.google.android.gms.internal.ads.zzua
    public final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final void zzz() {
    }
}
