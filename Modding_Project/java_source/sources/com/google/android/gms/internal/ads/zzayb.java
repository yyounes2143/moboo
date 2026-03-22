package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzayb implements Callable {
    protected final zzawo zza;
    protected final String zzb;
    protected final String zzc;
    protected final zzask zzd;
    protected Method zze;
    protected final int zzf;
    protected final int zzg;

    public zzayb(zzawo zzawoVar, String str, String str2, zzask zzaskVar, int i, int i2) {
        this.zza = zzawoVar;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = zzaskVar;
        this.zzf = i;
        this.zzg = i2;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        int i;
        try {
            long nanoTime = System.nanoTime();
            zzawo zzawoVar = this.zza;
            Method zzi = zzawoVar.zzi(this.zzb, this.zzc);
            this.zze = zzi;
            if (zzi != null) {
                zza();
                zzavf zzd = zzawoVar.zzd();
                if (zzd != null && (i = this.zzf) != Integer.MIN_VALUE) {
                    zzd.zzc(this.zzg, i, (System.nanoTime() - nanoTime) / 1000, null, null);
                    return null;
                }
                return null;
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public abstract void zza() throws IllegalAccessException, InvocationTargetException;
}
