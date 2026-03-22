package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdvw extends AdListener {
    final /* synthetic */ String zza;
    final /* synthetic */ zzdvz zzb;

    public zzdvw(zzdvz zzdvzVar, String str) {
        this.zza = str;
        this.zzb = zzdvzVar;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        String zzl;
        zzdvz zzdvzVar = this.zzb;
        zzl = zzdvz.zzl(loadAdError);
        zzdvzVar.zzm(zzl, this.zza);
    }
}
