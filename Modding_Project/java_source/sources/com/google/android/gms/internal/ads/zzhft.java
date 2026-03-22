package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhft implements zzhfv {
    private zzhge zza;

    public static void zza(zzhge zzhgeVar, zzhge zzhgeVar2) {
        zzhft zzhftVar = (zzhft) zzhgeVar;
        if (zzhftVar.zza == null) {
            zzhftVar.zza = zzhgeVar2;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final Object zzb() {
        zzhge zzhgeVar = this.zza;
        if (zzhgeVar != null) {
            return zzhgeVar.zzb();
        }
        throw new IllegalStateException();
    }
}
