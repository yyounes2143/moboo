package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzxz extends zzyj implements Comparable {
    private final int zze;
    private final int zzf;

    public zzxz(int i, zzbm zzbmVar, int i2, zzyc zzycVar, int i3) {
        super(i, zzbmVar, i2);
        this.zze = zzlw.zza(i3, zzycVar.zzR) ? 1 : 0;
        this.zzf = this.zzd.zza();
    }

    @Override // java.lang.Comparable
    /* renamed from: zza */
    public final int compareTo(zzxz zzxzVar) {
        return Integer.compare(this.zzf, zzxzVar.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final int zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final /* bridge */ /* synthetic */ boolean zzc(zzyj zzyjVar) {
        zzxz zzxzVar = (zzxz) zzyjVar;
        return false;
    }
}
