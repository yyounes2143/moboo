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
public final class zzfkx extends zzfkt {
    public zzfkx(ClientApi clientApi, Context context, int i, zzbpl zzbplVar, com.google.android.gms.ads.internal.client.zzfp zzfpVar, com.google.android.gms.ads.internal.client.zzce zzceVar, ScheduledExecutorService scheduledExecutorService, zzfjx zzfjxVar, Clock clock) {
        super(clientApi, context, i, zzbplVar, zzfpVar, zzceVar, scheduledExecutorService, zzfjxVar, clock);
    }

    @Override // com.google.android.gms.internal.ads.zzfkt
    @Nullable
    public final /* bridge */ /* synthetic */ com.google.android.gms.ads.internal.client.zzdx zza(Object obj) {
        try {
            return ((zzbwq) obj).zzc();
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to get response info for the rewarded ad.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfkt
    public final ListenableFuture zzb(Context context) {
        zzgds zze = zzgds.zze();
        zzbwq zzp = this.zza.zzp(ObjectWrapper.wrap(context), this.zze.zza, this.zzd, this.zzc);
        zzfkw zzfkwVar = new zzfkw(this, zze, zzp);
        if (zzp != null) {
            try {
                zzp.zzg(this.zze.zzc, zzfkwVar);
                return zze;
            } catch (RemoteException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to load rewarded ad.");
                zze.zzd(new zzfjt(1, "remote exception"));
                return zze;
            }
        }
        zze.zzd(new zzfjt(1, "Failed to create a rewarded ad."));
        return zze;
    }
}
