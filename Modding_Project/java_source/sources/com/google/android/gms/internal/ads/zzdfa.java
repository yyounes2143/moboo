package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzdfa {
    private final zzdgi zza;
    @Nullable
    private final zzcfb zzb;

    public zzdfa(zzdgi zzdgiVar, @Nullable zzcfb zzcfbVar) {
        this.zza = zzdgiVar;
        this.zzb = zzcfbVar;
    }

    @Nullable
    public final View zza() {
        zzcfb zzcfbVar = this.zzb;
        if (zzcfbVar == null) {
            return null;
        }
        return zzcfbVar.zzG();
    }

    @Nullable
    public final View zzb() {
        zzcfb zzcfbVar = this.zzb;
        if (zzcfbVar != null) {
            return zzcfbVar.zzG();
        }
        return null;
    }

    @Nullable
    public final zzcfb zzc() {
        return this.zzb;
    }

    public final zzddq zzd(Executor executor) {
        final zzcfb zzcfbVar = this.zzb;
        return new zzddq(new zzdan() { // from class: com.google.android.gms.internal.ads.zzdez
            @Override // com.google.android.gms.internal.ads.zzdan
            public final void zza() {
                com.google.android.gms.ads.internal.overlay.zzm zzL;
                zzcfb zzcfbVar2 = zzcfb.this;
                if (zzcfbVar2 != null && (zzL = zzcfbVar2.zzL()) != null) {
                    zzL.zzb();
                }
            }
        }, executor);
    }

    public final zzdgi zze() {
        return this.zza;
    }

    public Set zzf(zzcuo zzcuoVar) {
        return Collections.singleton(new zzddq(zzcuoVar, zzcaa.zzg));
    }

    public Set zzg(zzcuo zzcuoVar) {
        return Collections.singleton(new zzddq(zzcuoVar, zzcaa.zzg));
    }
}
