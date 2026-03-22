package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdna extends zzbgz {
    private final Context zza;
    private final zzdio zzb;
    private zzdjo zzc;
    private zzdij zzd;

    public zzdna(Context context, zzdio zzdioVar, zzdjo zzdjoVar, zzdij zzdijVar) {
        this.zza = context;
        this.zzb = zzdioVar;
        this.zzc = zzdjoVar;
        this.zzd = zzdijVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final com.google.android.gms.ads.internal.client.zzea zze() {
        return this.zzb.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final zzbgd zzf() throws RemoteException {
        try {
            return this.zzd.zzc().zza();
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "InternalNativeCustomTemplateAdShim.getMediaContent");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final zzbgg zzg(String str) {
        return (zzbgg) this.zzb.zzh().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final IObjectWrapper zzh() {
        return ObjectWrapper.wrap(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final String zzi() {
        return this.zzb.zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final String zzj(String str) {
        return (String) this.zzb.zzi().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final List zzk() {
        try {
            zzdio zzdioVar = this.zzb;
            SimpleArrayMap zzh = zzdioVar.zzh();
            SimpleArrayMap zzi = zzdioVar.zzi();
            String[] strArr = new String[zzh.size() + zzi.size()];
            int i = 0;
            for (int i2 = 0; i2 < zzh.size(); i2++) {
                strArr[i] = (String) zzh.keyAt(i2);
                i++;
            }
            for (int i3 = 0; i3 < zzi.size(); i3++) {
                strArr[i] = (String) zzi.keyAt(i3);
                i++;
            }
            return Arrays.asList(strArr);
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "InternalNativeCustomTemplateAdShim.getAvailableAssetNames");
            return new ArrayList();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final void zzl() {
        zzdij zzdijVar = this.zzd;
        if (zzdijVar != null) {
            zzdijVar.zzb();
        }
        this.zzd = null;
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final void zzm() {
        try {
            String zzC = this.zzb.zzC();
            if (Objects.equals(zzC, "Google")) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Illegal argument specified for omid partner name.");
            } else if (TextUtils.isEmpty(zzC)) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Not starting OMID session. OM partner name has not been configured.");
            } else {
                zzdij zzdijVar = this.zzd;
                if (zzdijVar != null) {
                    zzdijVar.zzf(zzC, false);
                }
            }
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "InternalNativeCustomTemplateAdShim.initializeDisplayOpenMeasurement");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final void zzn(String str) {
        zzdij zzdijVar = this.zzd;
        if (zzdijVar != null) {
            zzdijVar.zzF(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final void zzo() {
        zzdij zzdijVar = this.zzd;
        if (zzdijVar != null) {
            zzdijVar.zzJ();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final void zzp(IObjectWrapper iObjectWrapper) {
        zzdij zzdijVar;
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if ((unwrap instanceof View) && this.zzb.zzu() != null && (zzdijVar = this.zzd) != null) {
            zzdijVar.zzK((View) unwrap);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final boolean zzq() {
        zzdij zzdijVar = this.zzd;
        if (zzdijVar != null && !zzdijVar.zzX()) {
            return false;
        }
        zzdio zzdioVar = this.zzb;
        if (zzdioVar.zzr() == null || zzdioVar.zzs() != null) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final boolean zzr(IObjectWrapper iObjectWrapper) {
        zzdjo zzdjoVar;
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if ((unwrap instanceof ViewGroup) && (zzdjoVar = this.zzc) != null && zzdjoVar.zzf((ViewGroup) unwrap)) {
            this.zzb.zzq().zzar(new zzdmz(this, NativeCustomFormatAd.ASSET_NAME_VIDEO));
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final boolean zzs(IObjectWrapper iObjectWrapper) {
        zzdjo zzdjoVar;
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if ((unwrap instanceof ViewGroup) && (zzdjoVar = this.zzc) != null && zzdjoVar.zzg((ViewGroup) unwrap)) {
            this.zzb.zzs().zzar(new zzdmz(this, NativeCustomFormatAd.ASSET_NAME_VIDEO));
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final boolean zzt() {
        zzdio zzdioVar = this.zzb;
        zzeda zzu = zzdioVar.zzu();
        if (zzu != null) {
            com.google.android.gms.ads.internal.zzv.zzC().zzk(zzu.zza());
            if (zzdioVar.zzr() != null) {
                zzdioVar.zzr().zzd("onSdkLoaded", new ArrayMap());
                return true;
            }
            return true;
        }
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Trying to start OMID session before creation.");
        return false;
    }
}
