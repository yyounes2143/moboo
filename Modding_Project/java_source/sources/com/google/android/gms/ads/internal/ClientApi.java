package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.zzbt;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.client.zzch;
import com.google.android.gms.ads.internal.client.zzcn;
import com.google.android.gms.ads.internal.client.zzcy;
import com.google.android.gms.ads.internal.client.zzdt;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzac;
import com.google.android.gms.ads.internal.overlay.zzag;
import com.google.android.gms.ads.internal.overlay.zzai;
import com.google.android.gms.ads.internal.overlay.zzaj;
import com.google.android.gms.ads.internal.overlay.zzw;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzbkv;
import com.google.android.gms.internal.ads.zzbky;
import com.google.android.gms.internal.ads.zzbpl;
import com.google.android.gms.internal.ads.zzbte;
import com.google.android.gms.internal.ads.zzbtl;
import com.google.android.gms.internal.ads.zzbwa;
import com.google.android.gms.internal.ads.zzbwq;
import com.google.android.gms.internal.ads.zzbyv;
import com.google.android.gms.internal.ads.zzchb;
import com.google.android.gms.internal.ads.zzdji;
import com.google.android.gms.internal.ads.zzdjk;
import com.google.android.gms.internal.ads.zzdtn;
import com.google.android.gms.internal.ads.zzeju;
import com.google.android.gms.internal.ads.zzewu;
import com.google.android.gms.internal.ads.zzeyi;
import com.google.android.gms.internal.ads.zzezz;
import com.google.android.gms.internal.ads.zzfbn;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class ClientApi extends zzcn {
    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbt zzb(IObjectWrapper iObjectWrapper, String str, zzbpl zzbplVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return new zzeju(zzchb.zza(context, zzbplVar, i), context, str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbx zzc(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, zzbpl zzbplVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzewu zzs = zzchb.zza(context, zzbplVar, i).zzs();
        zzs.zza(str);
        zzs.zzb(context);
        return zzs.zzc().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbx zzd(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, zzbpl zzbplVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzeyi zzt = zzchb.zza(context, zzbplVar, i).zzt();
        zzt.zzc(context);
        zzt.zza(zzrVar);
        zzt.zzb(str);
        return zzt.zzd().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbx zze(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, zzbpl zzbplVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzezz zzu = zzchb.zza(context, zzbplVar, i).zzu();
        zzu.zzc(context);
        zzu.zza(zzrVar);
        zzu.zzb(str);
        return zzu.zzd().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbx zzf(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, int i) {
        return new zzu((Context) ObjectWrapper.unwrap(iObjectWrapper), zzrVar, str, new VersionInfoParcel(ModuleDescriptor.MODULE_VERSION, i, true, false));
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzch zzg(IObjectWrapper iObjectWrapper, zzbpl zzbplVar, int i) {
        return zzchb.zza((Context) ObjectWrapper.unwrap(iObjectWrapper), zzbplVar, i).zzz();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzcy zzh(IObjectWrapper iObjectWrapper, int i) {
        return zzchb.zza((Context) ObjectWrapper.unwrap(iObjectWrapper), null, i).zzb();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzdt zzi(IObjectWrapper iObjectWrapper, zzbpl zzbplVar, int i) {
        return zzchb.zza((Context) ObjectWrapper.unwrap(iObjectWrapper), zzbplVar, i).zzl();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbgk zzj(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return new zzdjk((FrameLayout) ObjectWrapper.unwrap(iObjectWrapper), (FrameLayout) ObjectWrapper.unwrap(iObjectWrapper2), ModuleDescriptor.MODULE_VERSION);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbgq zzk(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        return new zzdji((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbky zzl(IObjectWrapper iObjectWrapper, zzbpl zzbplVar, int i, zzbkv zzbkvVar) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzdtn zzj = zzchb.zza(context, zzbplVar, i).zzj();
        zzj.zzb(context);
        zzj.zza(zzbkvVar);
        return zzj.zzc().zzd();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbte zzm(IObjectWrapper iObjectWrapper, zzbpl zzbplVar, int i) {
        return zzchb.zza((Context) ObjectWrapper.unwrap(iObjectWrapper), zzbplVar, i).zzm();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbtl zzn(IObjectWrapper iObjectWrapper) {
        Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
        AdOverlayInfoParcel zza = AdOverlayInfoParcel.zza(activity.getIntent());
        if (zza == null) {
            return new zzw(activity);
        }
        int i = zza.zzk;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return new zzw(activity);
                        }
                        return new zzag(activity);
                    }
                    return new zzac(activity, zza);
                }
                return new zzaj(activity);
            }
            return new zzai(activity);
        }
        return new com.google.android.gms.ads.internal.overlay.zzv(activity);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbwa zzo(IObjectWrapper iObjectWrapper, zzbpl zzbplVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzfbn zzv = zzchb.zza(context, zzbplVar, i).zzv();
        zzv.zzb(context);
        return zzv.zzc().zzb();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbwq zzp(IObjectWrapper iObjectWrapper, String str, zzbpl zzbplVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzfbn zzv = zzchb.zza(context, zzbplVar, i).zzv();
        zzv.zzb(context);
        zzv.zza(str);
        return zzv.zzc().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbyv zzq(IObjectWrapper iObjectWrapper, zzbpl zzbplVar, int i) {
        return zzchb.zza((Context) ObjectWrapper.unwrap(iObjectWrapper), zzbplVar, i).zzp();
    }
}
