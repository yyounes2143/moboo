package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.ClientApi;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfjz extends zzfkt {
    public zzfjz(ClientApi clientApi, Context context, int i, zzbpl zzbplVar, com.google.android.gms.ads.internal.client.zzfp zzfpVar, com.google.android.gms.ads.internal.client.zzce zzceVar, ScheduledExecutorService scheduledExecutorService, zzfjx zzfjxVar, Clock clock) {
        super(clientApi, context, i, zzbplVar, zzfpVar, zzceVar, scheduledExecutorService, zzfjxVar, clock);
    }

    @Override // com.google.android.gms.internal.ads.zzfkt
    @Nullable
    public final /* bridge */ /* synthetic */ com.google.android.gms.ads.internal.client.zzdx zza(Object obj) {
        try {
            return ((com.google.android.gms.ads.internal.client.zzbx) obj).zzk();
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to get response info for  the interstitial ad.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfkt
    public final ListenableFuture zzb(Context context) {
        zzgds zze = zzgds.zze();
        com.google.android.gms.ads.internal.client.zzbx zze2 = this.zza.zze(ObjectWrapper.wrap(context), new com.google.android.gms.ads.internal.client.zzr(), this.zze.zza, this.zzd, this.zzc);
        if (zze2 != null) {
            try {
                zze2.zzy(this.zze.zzc, new zzfjy(this, zze, zze2));
                return zze;
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to load interstitial ad.", e);
                zze.zzd(new zzfjt(1, "remote exception"));
                return zze;
            }
        }
        zze.zzd(new zzfjt(1, "Failed to create an interstitial ad manager."));
        return zze;
    }
}
