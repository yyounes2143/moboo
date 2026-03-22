package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import java.lang.ref.WeakReference;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhgm extends CustomTabsServiceConnection {
    private final WeakReference zza;

    public zzhgm(zzbdw zzbdwVar) {
        this.zza = new WeakReference(zzbdwVar);
    }

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public final void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
        zzbdw zzbdwVar = (zzbdw) this.zza.get();
        if (zzbdwVar != null) {
            zzbdwVar.zzc(customTabsClient);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzbdw zzbdwVar = (zzbdw) this.zza.get();
        if (zzbdwVar != null) {
            zzbdwVar.zzd();
        }
    }
}
