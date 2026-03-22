package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
abstract class zzafx {
    protected final zzaet zza;

    public zzafx(zzaet zzaetVar) {
        this.zza = zzaetVar;
    }

    public abstract boolean zza(zzek zzekVar) throws zzaz;

    public abstract boolean zzb(zzek zzekVar, long j) throws zzaz;

    public final boolean zzf(zzek zzekVar, long j) throws zzaz {
        if (zza(zzekVar) && zzb(zzekVar, j)) {
            return true;
        }
        return false;
    }
}
