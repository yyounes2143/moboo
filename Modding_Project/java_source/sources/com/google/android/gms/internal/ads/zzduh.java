package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import com.unity3d.ads.core.domain.AndroidInitializeBoldSDK;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzduh {
    private final Context zzf;
    private final WeakReference zzg;
    private final zzdpt zzh;
    private final Executor zzi;
    private final Executor zzj;
    private final ScheduledExecutorService zzk;
    private final zzdso zzl;
    private final VersionInfoParcel zzm;
    private final zzdcx zzo;
    private final zzfhq zzp;
    private boolean zza = false;
    private boolean zzb = false;
    @GuardedBy("this")
    private boolean zzc = false;
    private final zzcaf zze = new zzcaf();
    private final Map zzn = new ConcurrentHashMap();
    private boolean zzq = true;
    private final long zzd = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();

    public zzduh(Executor executor, Context context, WeakReference weakReference, Executor executor2, zzdpt zzdptVar, ScheduledExecutorService scheduledExecutorService, zzdso zzdsoVar, VersionInfoParcel versionInfoParcel, zzdcx zzdcxVar, zzfhq zzfhqVar) {
        this.zzh = zzdptVar;
        this.zzf = context;
        this.zzg = weakReference;
        this.zzi = executor2;
        this.zzk = scheduledExecutorService;
        this.zzj = executor;
        this.zzl = zzdsoVar;
        this.zzm = versionInfoParcel;
        this.zzo = zzdcxVar;
        this.zzp = zzfhqVar;
        zzv("com.google.android.gms.ads.MobileAds", false, "", 0);
    }

    public static /* synthetic */ Object zzf(zzduh zzduhVar, zzfhc zzfhcVar) {
        zzduhVar.zze.zzc(Boolean.TRUE);
        zzfhcVar.zzg(true);
        zzduhVar.zzp.zzc(zzfhcVar.zzm());
        return null;
    }

    public static /* synthetic */ void zzi(zzduh zzduhVar, Object obj, zzcaf zzcafVar, String str, long j, zzfhc zzfhcVar) {
        synchronized (obj) {
            try {
                if (!zzcafVar.isDone()) {
                    zzduhVar.zzv(str, false, "Timeout.", (int) (com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime() - j));
                    zzduhVar.zzl.zzb(str, "timeout");
                    zzduhVar.zzo.zzb(str, "timeout");
                    zzfhq zzfhqVar = zzduhVar.zzp;
                    zzfhcVar.zzc(AndroidInitializeBoldSDK.MSG_TIMEOUT);
                    zzfhcVar.zzg(false);
                    zzfhqVar.zzc(zzfhcVar.zzm());
                    zzcafVar.zzc(Boolean.FALSE);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ void zzj(zzduh zzduhVar) {
        zzduhVar.zzl.zze();
        zzduhVar.zzo.zze();
        zzduhVar.zzb = true;
    }

    public static /* synthetic */ void zzl(zzduh zzduhVar) {
        synchronized (zzduhVar) {
            try {
                if (zzduhVar.zzc) {
                    return;
                }
                zzduhVar.zzv("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime() - zzduhVar.zzd));
                zzduhVar.zzl.zzb("com.google.android.gms.ads.MobileAds", "timeout");
                zzduhVar.zzo.zzb("com.google.android.gms.ads.MobileAds", "timeout");
                zzduhVar.zze.zzd(new Exception());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ void zzm(zzduh zzduhVar, String str, zzbly zzblyVar, zzfdn zzfdnVar, List list) {
        try {
            try {
                if (Objects.equals(str, "com.google.ads.mediation.admob.AdMobAdapter")) {
                    zzblyVar.zzf();
                    return;
                }
                Context context = (Context) zzduhVar.zzg.get();
                if (context == null) {
                    context = zzduhVar.zzf;
                }
                zzfdnVar.zzi(context, zzblyVar, list);
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
            }
        } catch (RemoteException e2) {
            throw new zzfwa(e2);
        } catch (zzfcw unused) {
            zzblyVar.zze("Failed to initialize adapter. " + str + " does not implement the initialize() method.");
        }
    }

    public static /* bridge */ /* synthetic */ void zzo(zzduh zzduhVar, String str) {
        final zzduh zzduhVar2 = zzduhVar;
        Context context = zzduhVar2.zzf;
        int i = 5;
        final zzfhc zza = zzfhb.zza(context, 5);
        zza.zzi();
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject("config");
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                final String next = keys.next();
                final zzfhc zza2 = zzfhb.zza(context, i);
                zza2.zzi();
                zza2.zzd(next);
                final Object obj = new Object();
                final zzcaf zzcafVar = new zzcaf();
                ListenableFuture zzo = zzgcy.zzo(zzcafVar, ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzca)).longValue(), TimeUnit.SECONDS, zzduhVar2.zzk);
                zzduhVar2.zzl.zzc(next);
                zzduhVar2.zzo.zzc(next);
                final long elapsedRealtime = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();
                zzo.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdtx
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzduh.zzi(zzduh.this, obj, zzcafVar, next, elapsedRealtime, zza2);
                    }
                }, zzduhVar2.zzi);
                arrayList.add(zzo);
                try {
                    try {
                        final zzdug zzdugVar = new zzdug(zzduhVar, obj, next, elapsedRealtime, zza2, zzcafVar);
                        zzduhVar2 = zzduhVar;
                        JSONObject optJSONObject = jSONObject.optJSONObject(next);
                        final ArrayList arrayList2 = new ArrayList();
                        if (optJSONObject != null) {
                            try {
                                JSONArray jSONArray = optJSONObject.getJSONArray("data");
                                int i2 = 0;
                                while (i2 < jSONArray.length()) {
                                    JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                                    String optString = jSONObject2.optString("format", "");
                                    JSONObject optJSONObject2 = jSONObject2.optJSONObject("data");
                                    Bundle bundle = new Bundle();
                                    if (optJSONObject2 != null) {
                                        Iterator<String> keys2 = optJSONObject2.keys();
                                        while (keys2.hasNext()) {
                                            String next2 = keys2.next();
                                            bundle.putString(next2, optJSONObject2.optString(next2, ""));
                                            jSONArray = jSONArray;
                                        }
                                    }
                                    JSONArray jSONArray2 = jSONArray;
                                    arrayList2.add(new zzbme(optString, bundle));
                                    i2++;
                                    jSONArray = jSONArray2;
                                }
                            } catch (JSONException unused) {
                            }
                        }
                        zzduhVar2.zzv(next, false, "", 0);
                        try {
                            final zzfdn zzc = zzduhVar2.zzh.zzc(next, new JSONObject());
                            zzduhVar2.zzj.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzduc
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzduh.zzm(zzduh.this, next, zzdugVar, zzc, arrayList2);
                                }
                            });
                        } catch (zzfcw e) {
                            try {
                                String str2 = "Failed to create Adapter.";
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznj)).booleanValue()) {
                                    str2 = "Failed to create Adapter. " + e.getMessage();
                                }
                                zzdugVar.zze(str2);
                            } catch (RemoteException e2) {
                                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e2);
                            }
                        }
                        i = 5;
                    } catch (JSONException e3) {
                        e = e3;
                        zzduhVar2 = zzduhVar;
                        com.google.android.gms.ads.internal.util.zze.zzb("Malformed CLD response", e);
                        zzduhVar2.zzo.zza("MalformedJson");
                        zzduhVar2.zzl.zza("MalformedJson");
                        zzduhVar2.zze.zzd(e);
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdapterInitializer.updateAdapterStatus");
                        zzfhq zzfhqVar = zzduhVar2.zzp;
                        zza.zzh(e);
                        zza.zzg(false);
                        zzfhqVar.zzc(zza.zzm());
                    }
                } catch (JSONException e4) {
                    e = e4;
                    zzduhVar2 = zzduhVar;
                }
            }
            zzgcy.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdty
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzduh.zzf(zzduh.this, zza);
                    return null;
                }
            }, zzduhVar2.zzi);
        } catch (JSONException e5) {
            e = e5;
            com.google.android.gms.ads.internal.util.zze.zzb("Malformed CLD response", e);
            zzduhVar2.zzo.zza("MalformedJson");
            zzduhVar2.zzl.zza("MalformedJson");
            zzduhVar2.zze.zzd(e);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdapterInitializer.updateAdapterStatus");
            zzfhq zzfhqVar2 = zzduhVar2.zzp;
            zza.zzh(e);
            zza.zzg(false);
            zzfhqVar2.zzc(zza.zzm());
        }
    }

    private final synchronized ListenableFuture zzu() {
        String zzc = com.google.android.gms.ads.internal.zzv.zzp().zzi().zzg().zzc();
        if (!TextUtils.isEmpty(zzc)) {
            return zzgcy.zzh(zzc);
        }
        final zzcaf zzcafVar = new zzcaf();
        com.google.android.gms.ads.internal.zzv.zzp().zzi().zzo(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdtz
            @Override // java.lang.Runnable
            public final void run() {
                r0.zzi.execute(new Runnable(zzduh.this, zzcafVar) { // from class: com.google.android.gms.internal.ads.zzdub
                    public final /* synthetic */ zzcaf zza;

                    {
                        this.zza = r2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        String zzc2 = com.google.android.gms.ads.internal.zzv.zzp().zzi().zzg().zzc();
                        boolean isEmpty = TextUtils.isEmpty(zzc2);
                        zzcaf zzcafVar2 = this.zza;
                        if (!isEmpty) {
                            zzcafVar2.zzc(zzc2);
                        } else {
                            zzcafVar2.zzd(new Exception());
                        }
                    }
                });
            }
        });
        return zzcafVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzv(String str, boolean z, String str2, int i) {
        this.zzn.put(str, new zzblu(str, z, i, str2));
    }

    public final List zzg() {
        ArrayList arrayList = new ArrayList();
        Map map = this.zzn;
        for (String str : map.keySet()) {
            zzblu zzbluVar = (zzblu) map.get(str);
            arrayList.add(new zzblu(str, zzbluVar.zzb, zzbluVar.zzc, zzbluVar.zzd));
        }
        return arrayList;
    }

    public final void zzq() {
        this.zzq = false;
    }

    public final void zzr() {
        if (!((Boolean) zzbfb.zza.zze()).booleanValue()) {
            if (this.zzm.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbZ)).intValue() && this.zzq) {
                if (!this.zza) {
                    synchronized (this) {
                        try {
                            if (this.zza) {
                                return;
                            }
                            this.zzl.zzf();
                            this.zzo.zzf();
                            zzcaf zzcafVar = this.zze;
                            Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzdud
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzduh.zzj(zzduh.this);
                                }
                            };
                            Executor executor = this.zzi;
                            zzcafVar.addListener(runnable, executor);
                            this.zza = true;
                            ListenableFuture zzu = zzu();
                            this.zzk.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdtw
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzduh.zzl(zzduh.this);
                                }
                            }, ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcb)).longValue(), TimeUnit.SECONDS);
                            zzgcy.zzr(zzu, new zzduf(this), executor);
                            return;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return;
            }
        }
        if (!this.zza) {
            zzv("com.google.android.gms.ads.MobileAds", true, "", 0);
            this.zze.zzc(Boolean.FALSE);
            this.zza = true;
            this.zzb = true;
        }
    }

    public final void zzs(final zzbmb zzbmbVar) {
        this.zze.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdua
            @Override // java.lang.Runnable
            public final void run() {
                zzduh zzduhVar = zzduh.this;
                try {
                    zzbmbVar.zzb(zzduhVar.zzg());
                } catch (RemoteException e) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
                }
            }
        }, this.zzj);
    }

    public final boolean zzt() {
        return this.zzb;
    }
}
