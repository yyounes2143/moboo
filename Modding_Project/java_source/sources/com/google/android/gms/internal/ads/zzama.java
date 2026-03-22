package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzama implements Comparable {
    public final int zza;
    public final zzalv zzb;

    public zzama(int i, zzalv zzalvVar) {
        this.zza = i;
        this.zzb = zzalvVar;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return Integer.compare(this.zza, ((zzama) obj).zza);
    }
}
