package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgzv implements zzhax {
    private static final zzhab zza = new zzgzt();
    private final zzhab zzb;

    public zzgzv() {
        zzgyl zza2 = zzgyl.zza();
        int i = zzhan.zza;
        zzgzu zzgzuVar = new zzgzu(zza2, zza);
        byte[] bArr = zzgzf.zzb;
        this.zzb = zzgzuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhax
    public final zzhaw zza(Class cls) {
        zzgyd zzgydVar;
        int i = zzhay.zza;
        if (!zzgys.class.isAssignableFrom(cls)) {
            int i2 = zzhan.zza;
        }
        zzhaa zzb = this.zzb.zzb(cls);
        if (!zzb.zzb()) {
            int i3 = zzhan.zza;
            zzhaj zza2 = zzhak.zza();
            zzgzq zza3 = zzgzr.zza();
            zzhbi zzm = zzhay.zzm();
            if (zzb.zzc() - 1 != 1) {
                zzgydVar = zzgyf.zza();
            } else {
                zzgydVar = null;
            }
            return zzhag.zzm(cls, zzb, zza2, zza3, zzm, zzgydVar, zzgzz.zza());
        }
        int i4 = zzhan.zza;
        return zzhah.zzc(zzhay.zzm(), zzgyf.zza(), zzb.zza());
    }
}
