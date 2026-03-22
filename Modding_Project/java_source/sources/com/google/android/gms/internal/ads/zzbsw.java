package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbsw extends zzbhm {
    final /* synthetic */ zzbsy zza;

    public /* synthetic */ zzbsw(zzbsy zzbsyVar, zzbsx zzbsxVar) {
        this.zza = zzbsyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhn
    public final void zze(zzbha zzbhaVar) {
        NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener;
        NativeCustomFormatAd zzf;
        zzbsy zzbsyVar = this.zza;
        onCustomFormatAdLoadedListener = zzbsyVar.zza;
        zzf = zzbsyVar.zzf(zzbhaVar);
        onCustomFormatAdLoadedListener.onCustomFormatAdLoaded(zzf);
    }
}
