package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import j$.util.Objects;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzuh implements zzvm, zzrx {
    final /* synthetic */ zzuj zza;
    private final Object zzb;
    private zzvl zzc;
    private zzrw zzd;

    public zzuh(zzuj zzujVar, Object obj) {
        this.zza = zzujVar;
        this.zzc = zzujVar.zze(null);
        this.zzd = zzujVar.zzc(null);
        this.zzb = obj;
    }

    private final zzux zzf(zzux zzuxVar, @Nullable zzvb zzvbVar) {
        zzuj zzujVar = this.zza;
        Object obj = this.zzb;
        zzujVar.zzx(obj, zzuxVar.zzc, zzvbVar);
        zzujVar.zzx(obj, zzuxVar.zzd, zzvbVar);
        return zzuxVar;
    }

    private final boolean zzg(int i, @Nullable zzvb zzvbVar) {
        zzvb zzvbVar2;
        if (zzvbVar != null) {
            zzvbVar2 = this.zza.zzy(this.zzb, zzvbVar);
            if (zzvbVar2 == null) {
                return false;
            }
        } else {
            zzvbVar2 = null;
        }
        zzuj zzujVar = this.zza;
        zzujVar.zzw(this.zzb, 0);
        zzvl zzvlVar = this.zzc;
        int i2 = zzvlVar.zza;
        if (!Objects.equals(zzvlVar.zzb, zzvbVar2)) {
            this.zzc = zzujVar.zzf(0, zzvbVar2);
        }
        zzrw zzrwVar = this.zzd;
        int i3 = zzrwVar.zza;
        if (!Objects.equals(zzrwVar.zzb, zzvbVar2)) {
            this.zzd = zzujVar.zzd(0, zzvbVar2);
            return true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zzag(int i, @Nullable zzvb zzvbVar, zzux zzuxVar) {
        if (zzg(0, zzvbVar)) {
            zzvl zzvlVar = this.zzc;
            zzf(zzuxVar, zzvbVar);
            zzvlVar.zzd(zzuxVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zzah(int i, @Nullable zzvb zzvbVar, zzus zzusVar, zzux zzuxVar) {
        if (zzg(0, zzvbVar)) {
            zzvl zzvlVar = this.zzc;
            zzf(zzuxVar, zzvbVar);
            zzvlVar.zze(zzusVar, zzuxVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zzai(int i, @Nullable zzvb zzvbVar, zzus zzusVar, zzux zzuxVar) {
        if (zzg(0, zzvbVar)) {
            zzvl zzvlVar = this.zzc;
            zzf(zzuxVar, zzvbVar);
            zzvlVar.zzf(zzusVar, zzuxVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zzaj(int i, @Nullable zzvb zzvbVar, zzus zzusVar, zzux zzuxVar, IOException iOException, boolean z) {
        if (zzg(0, zzvbVar)) {
            zzvl zzvlVar = this.zzc;
            zzf(zzuxVar, zzvbVar);
            zzvlVar.zzg(zzusVar, zzuxVar, iOException, z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zzak(int i, @Nullable zzvb zzvbVar, zzus zzusVar, zzux zzuxVar, int i2) {
        if (zzg(0, zzvbVar)) {
            zzvl zzvlVar = this.zzc;
            zzf(zzuxVar, zzvbVar);
            zzvlVar.zzh(zzusVar, zzuxVar, i2);
        }
    }
}
