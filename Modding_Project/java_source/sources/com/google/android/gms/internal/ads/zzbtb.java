package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbtb extends zzbhw {
    private final NativeAd.UnconfirmedClickListener zza;

    public zzbtb(NativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        this.zza = unconfirmedClickListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbhx
    public final void zze() {
        this.zza.onUnconfirmedClickCancelled();
    }

    @Override // com.google.android.gms.internal.ads.zzbhx
    public final void zzf(String str) {
        this.zza.onUnconfirmedClickReceived(str);
    }
}
