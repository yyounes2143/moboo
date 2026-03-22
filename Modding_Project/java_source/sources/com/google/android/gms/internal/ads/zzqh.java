package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzqh extends Exception {
    public final int zza;
    public final boolean zzb;
    public final zzz zzc;

    public zzqh(int i, zzz zzzVar, boolean z) {
        super("AudioTrack write failed: " + i);
        this.zzb = z;
        this.zza = i;
        this.zzc = zzzVar;
    }
}
