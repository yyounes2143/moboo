package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzli implements zzvm, zzrx {
    final /* synthetic */ zzlm zza;
    private final zzlk zzb;

    public zzli(zzlm zzlmVar, zzlk zzlkVar) {
        this.zza = zzlmVar;
        this.zzb = zzlkVar;
    }

    @Nullable
    private final Pair zzf(int i, @Nullable zzvb zzvbVar) {
        zzvb zzvbVar2;
        zzvb zzvbVar3 = null;
        if (zzvbVar != null) {
            zzlk zzlkVar = this.zzb;
            int i2 = 0;
            while (true) {
                List list = zzlkVar.zzc;
                if (i2 < list.size()) {
                    if (((zzvb) list.get(i2)).zzd == zzvbVar.zzd) {
                        Object obj = zzvbVar.zza;
                        Object obj2 = zzlkVar.zzb;
                        int i3 = zzlt.zzb;
                        zzvbVar2 = zzvbVar.zza(Pair.create(obj2, obj));
                        break;
                    }
                    i2++;
                } else {
                    zzvbVar2 = null;
                    break;
                }
            }
            if (zzvbVar2 == null) {
                return null;
            }
            zzvbVar3 = zzvbVar2;
        }
        return Pair.create(Integer.valueOf(this.zzb.zzd), zzvbVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zzag(int i, @Nullable zzvb zzvbVar, final zzux zzuxVar) {
        zzdq zzdqVar;
        final Pair zzf = zzf(0, zzvbVar);
        if (zzf != null) {
            zzdqVar = this.zza.zzi;
            zzdqVar.zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlg
                @Override // java.lang.Runnable
                public final void run() {
                    zzmj zzmjVar;
                    Pair pair = zzf;
                    zzmjVar = zzli.this.zza.zzh;
                    zzmjVar.zzag(((Integer) pair.first).intValue(), (zzvb) pair.second, zzuxVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zzah(int i, @Nullable zzvb zzvbVar, final zzus zzusVar, final zzux zzuxVar) {
        zzdq zzdqVar;
        final Pair zzf = zzf(0, zzvbVar);
        if (zzf != null) {
            zzdqVar = this.zza.zzi;
            zzdqVar.zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlf
                @Override // java.lang.Runnable
                public final void run() {
                    zzmj zzmjVar;
                    Pair pair = zzf;
                    zzmjVar = zzli.this.zza.zzh;
                    zzmjVar.zzah(((Integer) pair.first).intValue(), (zzvb) pair.second, zzusVar, zzuxVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zzai(int i, @Nullable zzvb zzvbVar, final zzus zzusVar, final zzux zzuxVar) {
        zzdq zzdqVar;
        final Pair zzf = zzf(0, zzvbVar);
        if (zzf != null) {
            zzdqVar = this.zza.zzi;
            zzdqVar.zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlh
                @Override // java.lang.Runnable
                public final void run() {
                    zzmj zzmjVar;
                    Pair pair = zzf;
                    zzmjVar = zzli.this.zza.zzh;
                    zzmjVar.zzai(((Integer) pair.first).intValue(), (zzvb) pair.second, zzusVar, zzuxVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zzaj(int i, @Nullable zzvb zzvbVar, final zzus zzusVar, final zzux zzuxVar, final IOException iOException, final boolean z) {
        zzdq zzdqVar;
        final Pair zzf = zzf(0, zzvbVar);
        if (zzf != null) {
            zzdqVar = this.zza.zzi;
            zzdqVar.zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzle
                @Override // java.lang.Runnable
                public final void run() {
                    zzmj zzmjVar;
                    Pair pair = zzf;
                    zzmjVar = zzli.this.zza.zzh;
                    zzmjVar.zzaj(((Integer) pair.first).intValue(), (zzvb) pair.second, zzusVar, zzuxVar, iOException, z);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zzak(int i, @Nullable zzvb zzvbVar, final zzus zzusVar, final zzux zzuxVar, final int i2) {
        zzdq zzdqVar;
        final Pair zzf = zzf(0, zzvbVar);
        if (zzf != null) {
            zzdqVar = this.zza.zzi;
            zzdqVar.zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzld
                @Override // java.lang.Runnable
                public final void run() {
                    zzmj zzmjVar;
                    Pair pair = zzf;
                    zzmjVar = zzli.this.zza.zzh;
                    zzmjVar.zzak(((Integer) pair.first).intValue(), (zzvb) pair.second, zzusVar, zzuxVar, i2);
                }
            });
        }
    }
}
