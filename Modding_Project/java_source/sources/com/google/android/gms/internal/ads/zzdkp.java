package com.google.android.gms.internal.ads;

import androidx.collection.ArrayMap;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdkp implements zzcwn {
    private final zzdio zza;
    private final zzdit zzb;
    private final Executor zzc;
    private final Executor zzd;

    public zzdkp(zzdio zzdioVar, zzdit zzditVar, Executor executor, Executor executor2) {
        this.zza = zzdioVar;
        this.zzb = zzditVar;
        this.zzc = executor;
        this.zzd = executor2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(final zzcfb zzcfbVar) {
        this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdkn
            @Override // java.lang.Runnable
            public final void run() {
                zzcfb.this.zzd("onSdkImpression", new ArrayMap());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final void zzs() {
        if (this.zzb.zzd()) {
            zzdio zzdioVar = this.zza;
            zzeda zzu = zzdioVar.zzu();
            if (zzu == null && zzdioVar.zzw() != null && ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfD)).booleanValue()) {
                ListenableFuture zzw = zzdioVar.zzw();
                zzcaf zzp = zzdioVar.zzp();
                if (zzw != null && zzp != null) {
                    zzgcy.zzr(zzgcy.zzl(zzw, zzp), new zzdko(this), this.zzd);
                }
            } else if (zzu != null) {
                zzcfb zzr = zzdioVar.zzr();
                zzcfb zzs = zzdioVar.zzs();
                if (zzr == null) {
                    if (zzs == null) {
                        zzr = null;
                    } else {
                        zzr = zzs;
                    }
                }
                if (zzr != null) {
                    zzb(zzr);
                }
            }
        }
    }
}
