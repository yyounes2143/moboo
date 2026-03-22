package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdxm implements zzdyp {
    private static final Pattern zza = Pattern.compile("Received error HTTP response code: (.*)");
    private final zzdwn zzb;
    private final zzgdj zzc;
    private final zzfcp zzd;
    private final ScheduledExecutorService zze;
    private final zzeap zzf;
    private final zzfhn zzg;
    private final Context zzh;

    public zzdxm(Context context, zzfcp zzfcpVar, zzdwn zzdwnVar, zzgdj zzgdjVar, ScheduledExecutorService scheduledExecutorService, zzeap zzeapVar, zzfhn zzfhnVar) {
        this.zzh = context;
        this.zzd = zzfcpVar;
        this.zzb = zzdwnVar;
        this.zzc = zzgdjVar;
        this.zze = scheduledExecutorService;
        this.zzf = zzeapVar;
        this.zzg = zzfhnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyp
    public final ListenableFuture zzc(zzbvl zzbvlVar) {
        Context context = this.zzh;
        ListenableFuture zzc = this.zzb.zzc(zzbvlVar);
        zzfhc zza2 = zzfhb.zza(context, 11);
        zzfhm.zzd(zzc, zza2);
        ListenableFuture zzn = zzgcy.zzn(zzc, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdxj
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                ListenableFuture zzh;
                zzh = zzgcy.zzh(new zzfcg(new zzfcd(zzdxm.this.zzd), zzfcf.zza(new InputStreamReader(r2.zzb()), ((zzdyr) obj).zza().zzm)));
                return zzh;
            }
        }, this.zzc);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfO)).booleanValue()) {
            zzbcm zzbcmVar = zzbcv.zzfP;
            zzn = zzgcy.zzf(zzgcy.zzo(zzn, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).intValue(), TimeUnit.SECONDS, this.zze), TimeoutException.class, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdxk
                @Override // com.google.android.gms.internal.ads.zzgcf
                public final ListenableFuture zza(Object obj) {
                    TimeoutException timeoutException = (TimeoutException) obj;
                    return zzgcy.zzg(new zzdwf(5));
                }
            }, zzcaa.zzg);
        }
        zzfhm.zza(zzn, this.zzg, zza2);
        zzgcy.zzr(zzn, new zzdxl(this), zzcaa.zzg);
        return zzn;
    }
}
