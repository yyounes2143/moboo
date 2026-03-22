package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeex extends zzbwh implements zzcxd {
    private zzbwi zza;
    private zzcxc zzb;
    private zzdej zzc;

    @Override // com.google.android.gms.internal.ads.zzcxd
    public final synchronized void zza(zzcxc zzcxcVar) {
        this.zzb = zzcxcVar;
    }

    public final synchronized void zzc(zzbwi zzbwiVar) {
        this.zza = zzbwiVar;
    }

    public final synchronized void zzd(zzdej zzdejVar) {
        this.zzc = zzdejVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final synchronized void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbwi zzbwiVar = this.zza;
        if (zzbwiVar != null) {
            ((zzeic) zzbwiVar).zzb.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final synchronized void zzf(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbwi zzbwiVar = this.zza;
        if (zzbwiVar != null) {
            zzbwiVar.zzf(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final synchronized void zzg(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        zzcxc zzcxcVar = this.zzb;
        if (zzcxcVar != null) {
            zzcxcVar.zza(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final synchronized void zzh(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbwi zzbwiVar = this.zza;
        if (zzbwiVar != null) {
            ((zzeic) zzbwiVar).zzc.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final synchronized void zzi(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzcxc zzcxcVar = this.zzb;
        if (zzcxcVar != null) {
            zzcxcVar.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final synchronized void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbwi zzbwiVar = this.zza;
        if (zzbwiVar != null) {
            ((zzeic) zzbwiVar).zza.zzdt();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final synchronized void zzk(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        zzdej zzdejVar = this.zzc;
        if (zzdejVar != null) {
            zzedi zzediVar = ((zzeia) zzdejVar).zzc;
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Fail to initialize adapter ".concat(String.valueOf(zzediVar.zza)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final synchronized void zzl(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzdej zzdejVar = this.zzc;
        if (zzdejVar != null) {
            Executor zzc = zzeid.zzc(((zzeia) zzdejVar).zzd);
            final zzedi zzediVar = ((zzeia) zzdejVar).zzc;
            final zzfbu zzfbuVar = ((zzeia) zzdejVar).zzb;
            final zzfcg zzfcgVar = ((zzeia) zzdejVar).zza;
            final zzeia zzeiaVar = (zzeia) zzdejVar;
            zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzehz
                @Override // java.lang.Runnable
                public final void run() {
                    zzeid zzeidVar = zzeia.this.zzd;
                    zzeid.zze(zzfcgVar, zzfbuVar, zzediVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final synchronized void zzm(IObjectWrapper iObjectWrapper, zzbwj zzbwjVar) throws RemoteException {
        zzbwi zzbwiVar = this.zza;
        if (zzbwiVar != null) {
            ((zzeic) zzbwiVar).zzd.zza(zzbwjVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final synchronized void zzn(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbwi zzbwiVar = this.zza;
        if (zzbwiVar != null) {
            ((zzeic) zzbwiVar).zzd.zza(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final synchronized void zzo(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbwi zzbwiVar = this.zza;
        if (zzbwiVar != null) {
            ((zzeic) zzbwiVar).zzc.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwi
    public final synchronized void zzp(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbwi zzbwiVar = this.zza;
        if (zzbwiVar != null) {
            ((zzeic) zzbwiVar).zzd.zzc();
        }
    }
}
