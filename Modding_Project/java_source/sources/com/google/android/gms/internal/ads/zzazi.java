package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzazi extends com.google.android.gms.ads.internal.client.zzck {
    private final AppEventListener zza;

    public zzazi(AppEventListener appEventListener) {
        this.zza = appEventListener;
    }

    public final AppEventListener zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcl
    public final void zzc(String str, String str2) {
        this.zza.onAppEvent(str, str2);
    }
}
