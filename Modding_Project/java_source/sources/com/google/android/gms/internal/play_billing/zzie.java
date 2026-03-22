package com.google.android.gms.internal.play_billing;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzie implements zziy {
    private static final zzik zza = new zzic();
    private final zzik zzb;

    public zzie() {
        zzhf zza2 = zzhf.zza();
        int i = zziu.zza;
        zzid zzidVar = new zzid(zza2, zza);
        byte[] bArr = zzhp.zzb;
        this.zzb = zzidVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zziy
    public final zzix zza(Class cls) {
        zzgx zzgxVar;
        int i = zziz.zza;
        if (!zzhk.class.isAssignableFrom(cls)) {
            int i2 = zziu.zza;
        }
        zzij zzb = this.zzb.zzb(cls);
        if (!zzb.zzb()) {
            int i3 = zziu.zza;
            zzir zza2 = zzis.zza();
            zzhz zza3 = zzia.zza();
            zzjj zzm = zziz.zzm();
            if (zzb.zzc() - 1 != 1) {
                zzgxVar = zzgz.zza();
            } else {
                zzgxVar = null;
            }
            return zzip.zzl(cls, zzb, zza2, zza3, zzm, zzgxVar, zzii.zza());
        }
        int i4 = zziu.zza;
        return zziq.zzc(zziz.zzm(), zzgz.zza(), zzb.zza());
    }
}
