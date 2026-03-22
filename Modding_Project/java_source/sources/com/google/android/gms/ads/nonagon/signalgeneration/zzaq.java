package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzbeo;
import com.google.android.gms.internal.ads.zzbys;
import com.google.android.gms.internal.ads.zzbyz;
import com.google.android.gms.internal.ads.zzfhc;
import com.google.android.gms.internal.ads.zzfhn;
import com.google.android.gms.internal.ads.zzgcu;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaq implements zzgcu {
    final /* synthetic */ ListenableFuture zza;
    final /* synthetic */ zzbyz zzb;
    final /* synthetic */ zzbys zzc;
    final /* synthetic */ zzfhc zzd;
    final /* synthetic */ zzau zze;

    public zzaq(zzau zzauVar, ListenableFuture listenableFuture, zzbyz zzbyzVar, zzbys zzbysVar, zzfhc zzfhcVar) {
        this.zza = listenableFuture;
        this.zzb = zzbyzVar;
        this.zzc = zzbysVar;
        this.zzd = zzfhcVar;
        this.zze = zzauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        String message = th.getMessage();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhW)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzp().zzv(th, "SignalGeneratorImpl.generateSignals");
        } else {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "SignalGeneratorImpl.generateSignals");
        }
        zzfhn zzs = zzau.zzs(this.zza, this.zzb);
        if (((Boolean) zzbeo.zze.zze()).booleanValue() && zzs != null) {
            zzfhc zzfhcVar = this.zzd;
            zzfhcVar.zzh(th);
            zzfhcVar.zzg(false);
            zzs.zza(zzfhcVar);
            zzs.zzh();
        }
        zzbys zzbysVar = this.zzc;
        if (zzbysVar == null) {
            return;
        }
        try {
            if (!"Unknown format is no longer supported.".equals(message)) {
                message = "Internal error. " + message;
            }
            zzbysVar.zzb(message);
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(@Nullable Object obj) {
        AtomicBoolean atomicBoolean;
        JSONObject jSONObject;
        boolean z;
        boolean z2;
        String str;
        String str2;
        String str3;
        String str4;
        Context context;
        VersionInfoParcel versionInfoParcel;
        String str5;
        String str6;
        AtomicInteger atomicInteger;
        zzbk zzbkVar = (zzbk) obj;
        zzfhn zzs = zzau.zzs(this.zza, this.zzb);
        atomicBoolean = this.zze.zzG;
        atomicBoolean.set(true);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhQ)).booleanValue()) {
            try {
                zzbys zzbysVar = this.zzc;
                if (zzbysVar != null) {
                    zzbysVar.zzb("QueryInfo generation has been disabled.");
                }
            } catch (RemoteException e) {
                String concat = "QueryInfo generation has been disabled.".concat(e.toString());
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg(concat);
            }
            if (((Boolean) zzbeo.zze.zze()).booleanValue() && zzs != null) {
                zzfhc zzfhcVar = this.zzd;
                zzfhcVar.zzc("QueryInfo generation has been disabled.");
                zzfhcVar.zzg(false);
                zzs.zza(zzfhcVar);
                zzs.zzh();
                return;
            }
            return;
        }
        try {
            try {
                if (zzbkVar == null) {
                    zzbys zzbysVar2 = this.zzc;
                    if (zzbysVar2 != null) {
                        zzbysVar2.zzc(null, null, null);
                    }
                    zzfhc zzfhcVar2 = this.zzd;
                    zzfhcVar2.zzg(true);
                    if (((Boolean) zzbeo.zze.zze()).booleanValue() && zzs != null) {
                        zzs.zza(zzfhcVar2);
                        zzs.zzh();
                        return;
                    }
                    return;
                }
                try {
                    if (!TextUtils.isEmpty(zzbkVar.zzc)) {
                        jSONObject = new JSONObject(zzbkVar.zzc);
                    } else {
                        jSONObject = new JSONObject(zzbkVar.zzb);
                    }
                    if (TextUtils.isEmpty(jSONObject.optString("request_id", ""))) {
                        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("The request ID is empty in request JSON.");
                        zzbys zzbysVar3 = this.zzc;
                        if (zzbysVar3 != null) {
                            zzbysVar3.zzb("Internal error: request ID is empty in request JSON.");
                        }
                        zzfhc zzfhcVar3 = this.zzd;
                        zzfhcVar3.zzc("Request ID empty");
                        zzfhcVar3.zzg(false);
                        if (((Boolean) zzbeo.zze.zze()).booleanValue() && zzs != null) {
                            zzs.zza(zzfhcVar3);
                            zzs.zzh();
                            return;
                        }
                        return;
                    }
                    Bundle bundle = zzbkVar.zzf;
                    zzau zzauVar = this.zze;
                    z = zzauVar.zzu;
                    if (z && bundle != null) {
                        str5 = zzauVar.zzw;
                        if (bundle.getInt(str5, -1) == -1) {
                            str6 = zzauVar.zzw;
                            atomicInteger = zzauVar.zzx;
                            bundle.putInt(str6, atomicInteger.get());
                        }
                    }
                    z2 = zzauVar.zzt;
                    if (z2 && bundle != null) {
                        str = zzauVar.zzv;
                        if (TextUtils.isEmpty(bundle.getString(str))) {
                            str2 = zzauVar.zzz;
                            if (TextUtils.isEmpty(str2)) {
                                com.google.android.gms.ads.internal.util.zzs zzr = com.google.android.gms.ads.internal.zzv.zzr();
                                context = zzauVar.zzg;
                                versionInfoParcel = zzauVar.zzy;
                                zzauVar.zzz = zzr.zzc(context, versionInfoParcel.afmaVersion);
                            }
                            str3 = zzauVar.zzv;
                            str4 = zzauVar.zzz;
                            bundle.putString(str3, str4);
                        }
                    }
                    zzbys zzbysVar4 = this.zzc;
                    if (zzbysVar4 != null) {
                        if (!TextUtils.isEmpty(zzbkVar.zzc)) {
                            zzbysVar4.zzc(zzbkVar.zza, zzbkVar.zzc, bundle);
                        } else {
                            zzbysVar4.zzc(zzbkVar.zza, zzbkVar.zzb, bundle);
                        }
                    }
                    this.zzd.zzg(true);
                    if (((Boolean) zzbeo.zze.zze()).booleanValue() && zzs != null) {
                        zzs.zza(this.zzd);
                        zzs.zzh();
                    }
                } catch (JSONException e2) {
                    int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to create JSON object from the request string.");
                    zzbys zzbysVar5 = this.zzc;
                    if (zzbysVar5 != null) {
                        String obj2 = e2.toString();
                        zzbysVar5.zzb("Internal error for request JSON: " + obj2);
                    }
                    zzfhc zzfhcVar4 = this.zzd;
                    zzfhcVar4.zzh(e2);
                    zzfhcVar4.zzg(false);
                    com.google.android.gms.ads.internal.zzv.zzp().zzw(e2, "SignalGeneratorImpl.generateSignals.onSuccess");
                    if (((Boolean) zzbeo.zze.zze()).booleanValue() && zzs != null) {
                        zzs.zza(zzfhcVar4);
                        zzs.zzh();
                    }
                }
            } catch (RemoteException e3) {
                zzfhc zzfhcVar5 = this.zzd;
                zzfhcVar5.zzh(e3);
                zzfhcVar5.zzg(false);
                int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e3);
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e3, "SignalGeneratorImpl.generateSignals.onSuccess");
                if (((Boolean) zzbeo.zze.zze()).booleanValue() && zzs != null) {
                    zzs.zza(this.zzd);
                    zzs.zzh();
                }
            }
        } catch (Throwable th) {
            if (((Boolean) zzbeo.zze.zze()).booleanValue() && zzs != null) {
                zzs.zza(this.zzd);
                zzs.zzh();
            }
            throw th;
        }
    }
}
