package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaxg implements Callable {
    private final zzawo zza;
    private final zzask zzb;

    public zzaxg(zzawo zzawoVar, zzask zzaskVar) {
        this.zza = zzawoVar;
        this.zzb = zzaskVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzawo zzawoVar = this.zza;
        if (zzawoVar.zzk() != null) {
            zzawoVar.zzk().get();
        }
        zzath zzc = zzawoVar.zzc();
        if (zzc != null) {
            try {
                zzask zzaskVar = this.zzb;
                synchronized (zzaskVar) {
                    zzaskVar.zzaY(zzc.zzaV(), zzgyc.zza());
                }
                return null;
            } catch (zzgzh | NullPointerException unused) {
                return null;
            }
        }
        return null;
    }
}
