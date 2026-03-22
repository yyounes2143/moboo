package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzckb extends com.google.android.gms.ads.internal.client.zzcx {
    private final Context zza;
    private final VersionInfoParcel zzb;
    private final zzdpt zzc;
    private final zzedh zzd;
    private final zzejn zze;
    private final zzduh zzf;
    private final zzbyj zzg;
    private final zzdpy zzh;
    private final zzdvc zzi;
    private final zzbfo zzj;
    private final zzfhq zzk;
    private final zzfdl zzl;
    private final zzcti zzm;
    private final zzdsd zzn;
    private boolean zzo = false;
    private final Long zzp = Long.valueOf(com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime());

    @VisibleForTesting
    public zzckb(Context context, VersionInfoParcel versionInfoParcel, zzdpt zzdptVar, zzedh zzedhVar, zzejn zzejnVar, zzduh zzduhVar, zzbyj zzbyjVar, zzdpy zzdpyVar, zzdvc zzdvcVar, zzbfo zzbfoVar, zzfhq zzfhqVar, zzfdl zzfdlVar, zzcti zzctiVar, zzdsd zzdsdVar) {
        this.zza = context;
        this.zzb = versionInfoParcel;
        this.zzc = zzdptVar;
        this.zzd = zzedhVar;
        this.zze = zzejnVar;
        this.zzf = zzduhVar;
        this.zzg = zzbyjVar;
        this.zzh = zzdpyVar;
        this.zzi = zzdvcVar;
        this.zzj = zzbfoVar;
        this.zzk = zzfhqVar;
        this.zzl = zzfdlVar;
        this.zzm = zzctiVar;
        this.zzn = zzdsdVar;
    }

    public static /* synthetic */ void zzc(zzckb zzckbVar, Runnable runnable) {
        Preconditions.checkMainThread("Adapters must be initialized on the main thread.");
        Map zze = com.google.android.gms.ads.internal.zzv.zzp().zzi().zzg().zze();
        if (!zze.isEmpty()) {
            if (runnable != null) {
                try {
                    runnable.run();
                } catch (Throwable th) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not initialize rewarded ads.", th);
                    return;
                }
            }
            if (zzckbVar.zzc.zzd()) {
                HashMap hashMap = new HashMap();
                for (zzbpf zzbpfVar : zze.values()) {
                    for (zzbpe zzbpeVar : zzbpfVar.zza) {
                        String str = zzbpeVar.zzb;
                        for (String str2 : zzbpeVar.zza) {
                            if (!hashMap.containsKey(str2)) {
                                hashMap.put(str2, new ArrayList());
                            }
                            if (str != null) {
                                ((List) hashMap.get(str2)).add(str);
                            }
                        }
                    }
                }
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry entry : hashMap.entrySet()) {
                    String str3 = (String) entry.getKey();
                    try {
                        zzedi zza = zzckbVar.zzd.zza(str3, jSONObject);
                        if (zza != null) {
                            zzfdn zzfdnVar = (zzfdn) zza.zzb;
                            if (!zzfdnVar.zzC() && zzfdnVar.zzB()) {
                                zzfdnVar.zzj(zzckbVar.zza, (zzeex) zza.zzc, (List) entry.getValue());
                                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zze("Initialized rewarded video mediation adapter " + str3);
                            }
                        }
                    } catch (zzfcw e) {
                        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to initialize rewarded video mediation adapter \"" + str3 + "\"", e);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final synchronized float zze() {
        return com.google.android.gms.ads.internal.zzv.zzt().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final String zzf() {
        return this.zzb.afmaVersion;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final List zzg() throws RemoteException {
        return this.zzf.zzg();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzh(String str) {
        this.zze.zzg(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzi() {
        this.zzf.zzq();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzj(boolean z) throws RemoteException {
        try {
            Context context = this.zza;
            zzfrq.zza(context).zzc(z);
            if (!z) {
                try {
                    if (!context.getSharedPreferences("query_info_shared_prefs", 0).edit().clear().commit()) {
                        throw new IOException("Failed to remove query_info_shared_prefs");
                    }
                } catch (IOException e) {
                    com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "clearStorageOnGpidPubDisable_scar");
                }
            }
        } catch (IOException e2) {
            throw new RemoteException(e2.getMessage());
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final synchronized void zzk() {
        if (this.zzo) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Mobile ads is initialized already.");
            return;
        }
        Context context = this.zza;
        zzbcv.zza(context);
        com.google.android.gms.ads.internal.zzv.zzp().zzu(context, this.zzb);
        this.zzm.zzd();
        com.google.android.gms.ads.internal.zzv.zzc().zzi(context);
        this.zzo = true;
        this.zzf.zzr();
        this.zze.zzf();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzen)).booleanValue()) {
            this.zzh.zzf();
        }
        this.zzi.zzg();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjx)).booleanValue()) {
            zzcaa.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjw
                @Override // java.lang.Runnable
                public final void run() {
                    zzckb.this.zzx();
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlk)).booleanValue()) {
            zzcaa.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjz
                @Override // java.lang.Runnable
                public final void run() {
                    zzckb.this.zzj.zza(new zzbun());
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdl)).booleanValue()) {
            zzcaa.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjx
                @Override // java.lang.Runnable
                public final void run() {
                    zzfdt.zzb(zzckb.this.zza, true);
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeQ)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeR)).booleanValue()) {
                zzcaa.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjy
                    @Override // java.lang.Runnable
                    public final void run() {
                        com.google.android.gms.ads.internal.zzv.zzf().zzd(r0.zza, zzckb.this.zzn);
                    }
                });
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.gms.ads.internal.client.zzcy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzl(@androidx.annotation.Nullable java.lang.String r13, com.google.android.gms.dynamic.IObjectWrapper r14) {
        /*
            r12 = this;
            android.content.Context r0 = r12.zza
            com.google.android.gms.internal.ads.zzbcv.zza(r0)
            com.google.android.gms.internal.ads.zzbcm r1 = com.google.android.gms.internal.ads.zzbcv.zzes
            com.google.android.gms.internal.ads.zzbct r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.zzb(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L2b
            com.google.android.gms.ads.internal.zzv.zzr()     // Catch: android.os.RemoteException -> L1f java.lang.RuntimeException -> L21
            java.lang.String r0 = com.google.android.gms.ads.internal.util.zzs.zzq(r0)     // Catch: android.os.RemoteException -> L1f java.lang.RuntimeException -> L21
            goto L2d
        L1f:
            r0 = move-exception
            goto L22
        L21:
            r0 = move-exception
        L22:
            java.lang.String r1 = "NonagonMobileAdsSettingManager_AppId"
            com.google.android.gms.internal.ads.zzbzn r2 = com.google.android.gms.ads.internal.zzv.zzp()
            r2.zzw(r0, r1)
        L2b:
            java.lang.String r0 = ""
        L2d:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            r2 = 1
            if (r2 != r1) goto L36
            r6 = r13
            goto L37
        L36:
            r6 = r0
        L37:
            boolean r13 = android.text.TextUtils.isEmpty(r6)
            if (r13 == 0) goto L3e
            goto L98
        L3e:
            com.google.android.gms.internal.ads.zzbcm r13 = com.google.android.gms.internal.ads.zzbcv.zzel
            com.google.android.gms.internal.ads.zzbct r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r13 = r0.zzb(r13)
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            com.google.android.gms.internal.ads.zzbcm r0 = com.google.android.gms.internal.ads.zzbcv.zzbe
            com.google.android.gms.internal.ads.zzbct r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r1.zzb(r0)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            r13 = r13 | r1
            com.google.android.gms.internal.ads.zzbct r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r1.zzb(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L7c
            java.lang.Object r13 = com.google.android.gms.dynamic.ObjectWrapper.unwrap(r14)
            java.lang.Runnable r13 = (java.lang.Runnable) r13
            com.google.android.gms.internal.ads.zzcka r14 = new com.google.android.gms.internal.ads.zzcka
            r14.<init>()
        L7a:
            r7 = r14
            goto L7f
        L7c:
            r14 = 0
            r2 = r13
            goto L7a
        L7f:
            if (r2 == 0) goto L98
            android.content.Context r4 = r12.zza
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r5 = r12.zzb
            com.google.android.gms.internal.ads.zzfhq r8 = r12.zzk
            com.google.android.gms.internal.ads.zzdsd r9 = r12.zzn
            java.lang.Long r10 = r12.zzp
            com.google.android.gms.internal.ads.zzdvc r13 = r12.zzi
            com.google.android.gms.ads.internal.zzf r3 = com.google.android.gms.ads.internal.zzv.zza()
            boolean r11 = r13.zzq()
            r3.zzc(r4, r5, r6, r7, r8, r9, r10, r11)
        L98:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzckb.zzl(java.lang.String, com.google.android.gms.dynamic.IObjectWrapper):void");
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzm(com.google.android.gms.ads.internal.client.zzdk zzdkVar) throws RemoteException {
        this.zzi.zzh(zzdkVar, zzdvb.API);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzn(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        if (context == null) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Context is null. Failed to open debug menu.");
            return;
        }
        com.google.android.gms.ads.internal.util.zzau zzauVar = new com.google.android.gms.ads.internal.util.zzau(context);
        zzauVar.zzn(str);
        zzauVar.zzo(this.zzb.afmaVersion);
        zzauVar.zzr();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzo(zzbpl zzbplVar) throws RemoteException {
        this.zzl.zzf(zzbplVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final synchronized void zzp(boolean z) {
        com.google.android.gms.ads.internal.zzv.zzt().zzc(z);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final synchronized void zzq(float f) {
        com.google.android.gms.ads.internal.zzv.zzt().zzd(f);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final synchronized void zzr(String str) {
        Context context = this.zza;
        zzbcv.zza(context);
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzel)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zza().zzc(context, this.zzb, str, null, this.zzk, null, null, this.zzi.zzq());
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzs(zzbmb zzbmbVar) throws RemoteException {
        this.zzf.zzs(zzbmbVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzt(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjI)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzp().zzz(str);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzu(com.google.android.gms.ads.internal.client.zzfr zzfrVar) throws RemoteException {
        this.zzg.zzn(this.zza, zzfrVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final synchronized boolean zzv() {
        return com.google.android.gms.ads.internal.zzv.zzt().zze();
    }

    @VisibleForTesting
    public final void zzx() {
        if (com.google.android.gms.ads.internal.zzv.zzp().zzi().zzM()) {
            String zzi = com.google.android.gms.ads.internal.zzv.zzp().zzi().zzi();
            if (!com.google.android.gms.ads.internal.zzv.zzu().zzj(this.zza, zzi, this.zzb.afmaVersion)) {
                com.google.android.gms.ads.internal.zzv.zzp().zzi().zzx(false);
                com.google.android.gms.ads.internal.zzv.zzp().zzi().zzw("");
            }
        }
    }
}
