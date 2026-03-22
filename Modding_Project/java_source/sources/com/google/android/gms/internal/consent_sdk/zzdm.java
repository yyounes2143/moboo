package com.google.android.gms.internal.consent_sdk;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdm implements zzdo {
    private zzdr zza;

    public static void zzb(zzdr zzdrVar, zzdr zzdrVar2) {
        zzdm zzdmVar = (zzdm) zzdrVar;
        if (zzdmVar.zza == null) {
            zzdmVar.zza = zzdrVar2;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdt, com.google.android.gms.internal.consent_sdk.zzds
    public final Object zza() {
        zzdr zzdrVar = this.zza;
        if (zzdrVar != null) {
            return zzdrVar.zza();
        }
        throw new IllegalStateException();
    }
}
