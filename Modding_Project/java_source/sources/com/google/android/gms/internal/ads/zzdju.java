package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.Clock;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdju implements View.OnClickListener {
    @Nullable
    @VisibleForTesting
    String zza;
    @Nullable
    @VisibleForTesting
    Long zzb;
    @Nullable
    @VisibleForTesting
    WeakReference zzc;
    private final zzdns zzd;
    private final Clock zze;
    @Nullable
    private zzbhx zzf;
    @Nullable
    private zzbjw zzg;

    public zzdju(zzdns zzdnsVar, Clock clock) {
        this.zzd = zzdnsVar;
        this.zze = clock;
    }

    private final void zzd() {
        View view;
        this.zza = null;
        this.zzb = null;
        WeakReference weakReference = this.zzc;
        if (weakReference != null && (view = (View) weakReference.get()) != null) {
            view.setClickable(false);
            view.setOnClickListener(null);
            this.zzc = null;
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference weakReference = this.zzc;
        if (weakReference != null && weakReference.get() == view) {
            if (this.zza != null && this.zzb != null) {
                HashMap hashMap = new HashMap();
                hashMap.put("id", this.zza);
                hashMap.put("time_interval", String.valueOf(this.zze.currentTimeMillis() - this.zzb.longValue()));
                hashMap.put("messageType", "onePointFiveClick");
                this.zzd.zzj("sendMessageToNativeJs", hashMap);
            }
            zzd();
        }
    }

    @Nullable
    public final zzbhx zza() {
        return this.zzf;
    }

    public final void zzb() {
        if (this.zzf != null && this.zzb != null) {
            zzd();
            try {
                this.zzf.zze();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
    }

    public final void zzc(final zzbhx zzbhxVar) {
        this.zzf = zzbhxVar;
        zzbjw zzbjwVar = this.zzg;
        if (zzbjwVar != null) {
            this.zzd.zzn("/unconfirmedClick", zzbjwVar);
        }
        zzbjw zzbjwVar2 = new zzbjw() { // from class: com.google.android.gms.internal.ads.zzdjt
            @Override // com.google.android.gms.internal.ads.zzbjw
            public final void zza(Object obj, Map map) {
                zzdju zzdjuVar = zzdju.this;
                try {
                    zzdjuVar.zzb = Long.valueOf(Long.parseLong((String) map.get(CampaignEx.JSON_KEY_TIMESTAMP)));
                } catch (NumberFormatException unused) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to call parse unconfirmedClickTimestamp.");
                }
                zzbhx zzbhxVar2 = zzbhxVar;
                zzdjuVar.zza = (String) map.get("id");
                String str = (String) map.get("asset_id");
                if (zzbhxVar2 == null) {
                    int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zze("Received unconfirmed click but UnconfirmedClickListener is null.");
                    return;
                }
                try {
                    zzbhxVar2.zzf(str);
                } catch (RemoteException e) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                }
            }
        };
        this.zzg = zzbjwVar2;
        this.zzd.zzl("/unconfirmedClick", zzbjwVar2);
    }
}
