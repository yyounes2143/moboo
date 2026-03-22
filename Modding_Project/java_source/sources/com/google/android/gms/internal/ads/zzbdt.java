package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabsCallback;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbdt extends CustomTabsCallback {
    final /* synthetic */ zzbdu zza;

    public zzbdt(zzbdu zzbduVar) {
        this.zza = zzbduVar;
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onNavigationEvent(int i, @Nullable Bundle bundle) {
        this.zza.zze(i);
    }
}
