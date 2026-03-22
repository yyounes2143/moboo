package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdhw extends zzbgc {
    private final zzdio zza;
    private IObjectWrapper zzb;

    public zzdhw(zzdio zzdioVar) {
        this.zza = zzdioVar;
    }

    private static float zzb(IObjectWrapper iObjectWrapper) {
        Drawable drawable;
        if (iObjectWrapper != null && (drawable = (Drawable) ObjectWrapper.unwrap(iObjectWrapper)) != null && drawable.getIntrinsicWidth() != -1 && drawable.getIntrinsicHeight() != -1) {
            return drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final float zze() throws RemoteException {
        float f;
        zzdio zzdioVar = this.zza;
        if (zzdioVar.zzb() != 0.0f) {
            return zzdioVar.zzb();
        }
        if (zzdioVar.zzj() != null) {
            try {
                return zzdioVar.zzj().zze();
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Remote exception getting video controller aspect ratio.", e);
                return 0.0f;
            }
        }
        IObjectWrapper iObjectWrapper = this.zzb;
        if (iObjectWrapper != null) {
            return zzb(iObjectWrapper);
        }
        zzbgg zzm = zzdioVar.zzm();
        if (zzm == null) {
            return 0.0f;
        }
        if (zzm.zzd() != -1 && zzm.zzc() != -1) {
            f = zzm.zzd() / zzm.zzc();
        } else {
            f = 0.0f;
        }
        if (f == 0.0f) {
            return zzb(zzm.zzf());
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final float zzf() throws RemoteException {
        zzdio zzdioVar = this.zza;
        if (zzdioVar.zzj() != null) {
            return zzdioVar.zzj().zzf();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final float zzg() throws RemoteException {
        zzdio zzdioVar = this.zza;
        if (zzdioVar.zzj() != null) {
            return zzdioVar.zzj().zzg();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzea zzh() throws RemoteException {
        return this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    @Nullable
    public final IObjectWrapper zzi() throws RemoteException {
        IObjectWrapper iObjectWrapper = this.zzb;
        if (iObjectWrapper != null) {
            return iObjectWrapper;
        }
        zzbgg zzm = this.zza.zzm();
        if (zzm == null) {
            return null;
        }
        return zzm.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final void zzj(IObjectWrapper iObjectWrapper) {
        this.zzb = iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final boolean zzk() throws RemoteException {
        return this.zza.zzaf();
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final boolean zzl() throws RemoteException {
        if (this.zza.zzj() != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final void zzm(zzbho zzbhoVar) {
        zzdio zzdioVar = this.zza;
        if (zzdioVar.zzj() instanceof zzcgd) {
            ((zzcgd) zzdioVar.zzj()).zzv(zzbhoVar);
        }
    }
}
