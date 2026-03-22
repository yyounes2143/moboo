package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbsv extends zzbhj {
    final /* synthetic */ zzbsy zza;

    public /* synthetic */ zzbsv(zzbsy zzbsyVar, zzbsx zzbsxVar) {
        this.zza = zzbsyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zze(zzbha zzbhaVar, String str) {
        zzbsy zzbsyVar = this.zza;
        if (zzbsy.zzc(zzbsyVar) == null) {
            return;
        }
        zzbsy.zzc(zzbsyVar).onCustomClick(zzbsy.zze(zzbsyVar, zzbhaVar), str);
    }
}
