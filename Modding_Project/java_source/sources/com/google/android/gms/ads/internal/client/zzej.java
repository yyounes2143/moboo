package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.VideoController;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzej extends zzbc {
    final /* synthetic */ zzek zza;

    public zzej(zzek zzekVar) {
        this.zza = zzekVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbc, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        VideoController videoController;
        zzek zzekVar = this.zza;
        videoController = zzekVar.zze;
        videoController.zzb(zzekVar.zzi());
        super.onAdFailedToLoad(loadAdError);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbc, com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        VideoController videoController;
        zzek zzekVar = this.zza;
        videoController = zzekVar.zze;
        videoController.zzb(zzekVar.zzi());
        super.onAdLoaded();
    }
}
