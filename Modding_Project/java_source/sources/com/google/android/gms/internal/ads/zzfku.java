package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.ClientApi;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfku {
    private final Context zza;
    private final VersionInfoParcel zzb;
    private final ScheduledExecutorService zzc;
    private final ClientApi zzd = new ClientApi();
    private zzbpl zze;
    private final Clock zzf;

    public zzfku(Context context, VersionInfoParcel versionInfoParcel, ScheduledExecutorService scheduledExecutorService, Clock clock) {
        this.zza = context;
        this.zzb = versionInfoParcel;
        this.zzc = scheduledExecutorService;
        this.zzf = clock;
    }

    private static zzfjx zzc() {
        return new zzfjx(((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzz)).longValue(), 2.0d, ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzA)).longValue(), 0.2d);
    }

    @Nullable
    public final zzfkt zza(com.google.android.gms.ads.internal.client.zzfp zzfpVar, com.google.android.gms.ads.internal.client.zzce zzceVar) {
        AdFormat adFormat = AdFormat.getAdFormat(zzfpVar.zzb);
        if (adFormat != null) {
            int ordinal = adFormat.ordinal();
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 5) {
                        return null;
                    }
                    return new zzfjw(this.zzd, this.zza, this.zzb.clientJarVersion, this.zze, zzfpVar, zzceVar, this.zzc, zzc(), this.zzf);
                }
                return new zzfkx(this.zzd, this.zza, this.zzb.clientJarVersion, this.zze, zzfpVar, zzceVar, this.zzc, zzc(), this.zzf);
            }
            return new zzfjz(this.zzd, this.zza, this.zzb.clientJarVersion, this.zze, zzfpVar, zzceVar, this.zzc, zzc(), this.zzf);
        }
        return null;
    }

    public final void zzb(zzbpl zzbplVar) {
        this.zze = zzbplVar;
    }
}
