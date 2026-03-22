package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbdu extends CustomTabsServiceConnection {
    public static final /* synthetic */ int zza = 0;
    private final AtomicBoolean zzb = new AtomicBoolean(false);
    @Nullable
    private Context zzc;
    @Nullable
    private zzdsd zzd;
    @Nullable
    private CustomTabsSession zze;
    @Nullable
    private CustomTabsClient zzf;

    public static /* synthetic */ void zzb(zzbdu zzbduVar, int i) {
        zzdsd zzdsdVar = zzbduVar.zzd;
        if (zzdsdVar != null) {
            zzdsc zza2 = zzdsdVar.zza();
            zza2.zzb("action", "cct_nav");
            zza2.zzb("cct_navs", String.valueOf(i));
            zza2.zzj();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzf(@Nullable Context context) {
        String packageName;
        if (this.zzf == null && context != null && (packageName = CustomTabsClient.getPackageName(context, null)) != null) {
            CustomTabsClient.bindCustomTabsService(context, packageName, this);
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public final void onCustomTabsServiceConnected(@NonNull ComponentName componentName, @NonNull CustomTabsClient customTabsClient) {
        this.zzf = customTabsClient;
        customTabsClient.warmup(0L);
        this.zze = customTabsClient.newSession(new zzbdt(this));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.zzf = null;
        this.zze = null;
    }

    @Nullable
    public final CustomTabsSession zza() {
        if (this.zze == null) {
            zzcaa.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbds
                @Override // java.lang.Runnable
                public final void run() {
                    r0.zzf(zzbdu.this.zzc);
                }
            });
        }
        return this.zze;
    }

    public final void zzd(Context context, zzdsd zzdsdVar) {
        if (this.zzb.getAndSet(true)) {
            return;
        }
        this.zzc = context;
        this.zzd = zzdsdVar;
        zzf(context);
    }

    @VisibleForTesting
    public final void zze(final int i) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeP)).booleanValue() && this.zzd != null) {
            zzcaa.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbdr
                @Override // java.lang.Runnable
                public final void run() {
                    zzbdu.zzb(zzbdu.this, i);
                }
            });
        }
    }
}
