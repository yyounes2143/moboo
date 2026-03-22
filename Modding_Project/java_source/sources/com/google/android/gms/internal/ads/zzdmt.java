package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdmt extends zzbmi implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzbfs {
    private View zza;
    private com.google.android.gms.ads.internal.client.zzea zzb;
    private zzdij zzc;
    private boolean zzd = false;
    private boolean zze = false;

    public zzdmt(zzdij zzdijVar, zzdio zzdioVar) {
        this.zza = zzdioVar.zzf();
        this.zzb = zzdioVar.zzj();
        this.zzc = zzdijVar;
        if (zzdioVar.zzs() != null) {
            zzdioVar.zzs().zzap(this);
        }
    }

    private final void zzg() {
        View view;
        zzdij zzdijVar = this.zzc;
        if (zzdijVar != null && (view = this.zza) != null) {
            Map map = Collections.EMPTY_MAP;
            zzdijVar.zzB(view, map, map, zzdij.zzY(view));
        }
    }

    private final void zzh() {
        View view = this.zza;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.zza);
            }
        }
    }

    private static final void zzi(zzbmm zzbmmVar, int i) {
        try {
            zzbmmVar.zze(i);
        } catch (RemoteException e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzg();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzbmj
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzea zzb() throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzd) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbmj
    @Nullable
    public final zzbgd zzc() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzd) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        zzdij zzdijVar = this.zzc;
        if (zzdijVar == null || zzdijVar.zzc() == null) {
            return null;
        }
        return zzdijVar.zzc().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbmj
    public final void zzd() throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzh();
        zzdij zzdijVar = this.zzc;
        if (zzdijVar != null) {
            zzdijVar.zzb();
        }
        this.zzc = null;
        this.zza = null;
        this.zzb = null;
        this.zzd = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbmj
    public final void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzf(iObjectWrapper, new zzdms(this));
    }

    @Override // com.google.android.gms.internal.ads.zzbmj
    public final void zzf(IObjectWrapper iObjectWrapper, zzbmm zzbmmVar) throws RemoteException {
        String str;
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzd) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Instream ad can not be shown after destroy().");
            zzi(zzbmmVar, 2);
            return;
        }
        View view = this.zza;
        if (view != null && this.zzb != null) {
            if (this.zze) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Instream ad should not be used again.");
                zzi(zzbmmVar, 1);
                return;
            }
            this.zze = true;
            zzh();
            ((ViewGroup) ObjectWrapper.unwrap(iObjectWrapper)).addView(this.zza, new ViewGroup.LayoutParams(-1, -1));
            com.google.android.gms.ads.internal.zzv.zzz();
            zzcan.zza(this.zza, this);
            com.google.android.gms.ads.internal.zzv.zzz();
            zzcan.zzb(this.zza, this);
            zzg();
            try {
                zzbmmVar.zzf();
                return;
            } catch (RemoteException e) {
                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                return;
            }
        }
        if (view == null) {
            str = "can not get video view.";
        } else {
            str = "can not get video controller.";
        }
        int i4 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzg("Instream internal error: ".concat(str));
        zzi(zzbmmVar, 0);
    }
}
