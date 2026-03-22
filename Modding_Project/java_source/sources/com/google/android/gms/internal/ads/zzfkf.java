package com.google.android.gms.internal.ads;

import android.net.ConnectivityManager;
import android.net.Network;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfkf extends ConnectivityManager.NetworkCallback {
    final /* synthetic */ zzfkg zza;

    public zzfkf(zzfkg zzfkgVar) {
        this.zza = zzfkgVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        this.zza.zzr(true);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        this.zza.zzr(false);
    }
}
