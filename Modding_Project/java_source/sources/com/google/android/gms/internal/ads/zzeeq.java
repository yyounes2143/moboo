package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeeq implements zzedl {
    private final Context zza;
    private final zzcpu zzb;
    private View zzc;
    private zzbpu zzd;

    public zzeeq(Context context, zzcpu zzcpuVar) {
        this.zza = context;
        this.zzb = zzcpuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final /* bridge */ /* synthetic */ Object zza(zzfcg zzfcgVar, final zzfbu zzfbuVar, final zzedi zzediVar) throws zzfcw, zzegy {
        final View view;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzie)).booleanValue() && zzfbuVar.zzag) {
            try {
                view = (View) ObjectWrapper.unwrap(this.zzd.zze());
                boolean zzf = this.zzd.zzf();
                if (view != null) {
                    if (zzf) {
                        try {
                            view = (View) zzgcy.zzn(zzgcy.zzh(null), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzeen
                                @Override // com.google.android.gms.internal.ads.zzgcf
                                public final ListenableFuture zza(Object obj) {
                                    ListenableFuture zzh;
                                    zzh = zzgcy.zzh(zzcqj.zza(zzeeq.this.zza, view, zzfbuVar));
                                    return zzh;
                                }
                            }, zzcaa.zzf).get();
                        } catch (InterruptedException | ExecutionException e) {
                            throw new zzfcw(e);
                        }
                    }
                } else {
                    throw new zzfcw(new Exception("BannerRtbAdapterWrapper interscrollerView should not be null"));
                }
            } catch (RemoteException e2) {
                throw new zzfcw(e2);
            }
        } else {
            view = this.zzc;
        }
        zzcoq zza = this.zzb.zza(new zzcrn(zzfcgVar, zzfbuVar, zzediVar.zza), new zzcow(view, null, new zzcqv() { // from class: com.google.android.gms.internal.ads.zzeem
            @Override // com.google.android.gms.internal.ads.zzcqv
            public final com.google.android.gms.ads.internal.client.zzea zza() {
                try {
                    return ((zzbrk) zzedi.this.zzb).zze();
                } catch (RemoteException e3) {
                    throw new zzfcw(e3);
                }
            }
        }, (zzfbv) zzfbuVar.zzu.get(0)));
        zza.zzh().zza(view);
        ((zzeew) zzediVar.zzc).zzc(zza.zzj());
        return zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final void zzb(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw {
        try {
            zzbrk zzbrkVar = (zzbrk) zzediVar.zzb;
            zzbrkVar.zzq(zzfbuVar.zzZ);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzie)).booleanValue() && zzfbuVar.zzag) {
                String str = zzfbuVar.zzU;
                String jSONObject = zzfbuVar.zzv.toString();
                zzfcp zzfcpVar = zzfcgVar.zza.zza;
                zzbrkVar.zzk(str, jSONObject, zzfcpVar.zzd, ObjectWrapper.wrap(this.zza), new zzeeo(this, zzediVar, null), (zzbpr) zzediVar.zzc, zzfcpVar.zze);
                return;
            }
            String str2 = zzfbuVar.zzU;
            String jSONObject2 = zzfbuVar.zzv.toString();
            zzfcp zzfcpVar2 = zzfcgVar.zza.zza;
            zzbrkVar.zzj(str2, jSONObject2, zzfcpVar2.zzd, ObjectWrapper.wrap(this.zza), new zzeeo(this, zzediVar, null), (zzbpr) zzediVar.zzc, zzfcpVar2.zze);
        } catch (RemoteException e) {
            throw new zzfcw(e);
        }
    }
}
