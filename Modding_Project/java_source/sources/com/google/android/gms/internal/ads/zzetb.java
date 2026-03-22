package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzetb implements zzetv {
    public static final /* synthetic */ int zzb = 0;
    private static final zzetc zzc = new zzetc(new JSONArray().toString(), new Bundle());
    final String zza;
    private final zzgdj zzd;
    private final ScheduledExecutorService zze;
    private final zzejn zzf;
    private final Context zzg;
    private final zzfcp zzh;
    private final zzejj zzi;
    private final zzdpt zzj;
    private final zzduj zzk;
    private final int zzl;

    public zzetb(zzgdj zzgdjVar, ScheduledExecutorService scheduledExecutorService, String str, zzejn zzejnVar, Context context, zzfcp zzfcpVar, zzejj zzejjVar, zzdpt zzdptVar, zzduj zzdujVar, int i) {
        this.zzd = zzgdjVar;
        this.zze = scheduledExecutorService;
        this.zza = str;
        this.zzf = zzejnVar;
        this.zzg = context;
        this.zzh = zzfcpVar;
        this.zzi = zzejjVar;
        this.zzj = zzdptVar;
        this.zzk = zzdujVar;
        this.zzl = i;
    }

    public static /* synthetic */ ListenableFuture zzc(zzetb zzetbVar) {
        String str;
        final Bundle bundle;
        zzetb zzetbVar2;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzli)).booleanValue()) {
            str = zzetbVar.zzh.zzf.toLowerCase(Locale.ROOT);
        } else {
            str = zzetbVar.zzh.zzf;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbP)).booleanValue()) {
            bundle = zzetbVar.zzk.zzg();
        } else {
            bundle = new Bundle();
        }
        final ArrayList arrayList = new ArrayList();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbY)).booleanValue()) {
            zzejn zzejnVar = zzetbVar.zzf;
            for (Map.Entry entry : ((zzfyf) zzejnVar.zzb(zzetbVar.zza, str)).entrySet()) {
                String str2 = (String) entry.getKey();
                zzetb zzetbVar3 = zzetbVar;
                arrayList.add(zzetbVar3.zzg(str2, (List) entry.getValue(), zzetbVar.zzf(str2), true, true));
                zzetbVar = zzetbVar3;
            }
            zzetbVar2 = zzetbVar;
            zzetbVar2.zzi(arrayList, zzejnVar.zzc());
        } else {
            zzetbVar2 = zzetbVar;
            zzetbVar2.zzi(arrayList, zzetbVar2.zzf.zza(zzetbVar2.zza, str));
        }
        return zzgcy.zzb(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzesw
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i = zzetb.zzb;
                JSONArray jSONArray = new JSONArray();
                for (ListenableFuture listenableFuture : arrayList) {
                    if (((JSONObject) listenableFuture.get()) != null) {
                        jSONArray.put(listenableFuture.get());
                    }
                }
                if (jSONArray.length() == 0) {
                    return null;
                }
                return new zzetc(jSONArray.toString(), bundle);
            }
        }, zzetbVar2.zzd);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:1|(2:3|(3:5|6|(2:8|(2:10|11)(1:13))(3:14|(1:16)|(2:18|(2:20|21)(2:22|23))(2:24|25))))|26|27|6|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x002c, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        com.google.android.gms.ads.internal.util.zze.zzb("Couldn't create RTB adapter : ", r0);
        r2 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ com.google.common.util.concurrent.ListenableFuture zzd(final com.google.android.gms.internal.ads.zzetb r7, java.lang.String r8, final java.util.List r9, final android.os.Bundle r10, boolean r11, boolean r12) {
        /*
            com.google.android.gms.internal.ads.zzcaf r3 = new com.google.android.gms.internal.ads.zzcaf
            r3.<init>()
            r1 = 0
            if (r12 == 0) goto L25
            com.google.android.gms.internal.ads.zzbcm r12 = com.google.android.gms.internal.ads.zzbcv.zzbQ
            com.google.android.gms.internal.ads.zzbct r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r12 = r0.zzb(r12)
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 != 0) goto L25
            com.google.android.gms.internal.ads.zzejj r12 = r7.zzi
            r12.zzb(r8)
            com.google.android.gms.internal.ads.zzbrk r12 = r12.zza(r8)
        L23:
            r2 = r12
            goto L34
        L25:
            com.google.android.gms.internal.ads.zzdpt r12 = r7.zzj     // Catch: android.os.RemoteException -> L2c
            com.google.android.gms.internal.ads.zzbrk r12 = r12.zzb(r8)     // Catch: android.os.RemoteException -> L2c
            goto L23
        L2c:
            r0 = move-exception
            r12 = r0
            java.lang.String r0 = "Couldn't create RTB adapter : "
            com.google.android.gms.ads.internal.util.zze.zzb(r0, r12)
            r2 = r1
        L34:
            if (r2 != 0) goto L4e
            com.google.android.gms.internal.ads.zzbcm r7 = com.google.android.gms.internal.ads.zzbcv.zzbG
            com.google.android.gms.internal.ads.zzbct r9 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r7 = r9.zzb(r7)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L4d
            com.google.android.gms.internal.ads.zzejq.zzb(r8, r3)
            goto Lb9
        L4d:
            throw r1
        L4e:
            com.google.android.gms.internal.ads.zzejq r0 = new com.google.android.gms.internal.ads.zzejq
            com.google.android.gms.common.util.Clock r12 = com.google.android.gms.ads.internal.zzv.zzD()
            long r4 = r12.elapsedRealtime()
            r1 = r8
            r0.<init>(r1, r2, r3, r4)
            com.google.android.gms.internal.ads.zzbcm r8 = com.google.android.gms.internal.ads.zzbcv.zzbL
            com.google.android.gms.internal.ads.zzbct r12 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r8 = r12.zzb(r8)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L8a
            java.util.concurrent.ScheduledExecutorService r8 = r7.zze
            com.google.android.gms.internal.ads.zzeta r12 = new com.google.android.gms.internal.ads.zzeta
            r12.<init>()
            com.google.android.gms.internal.ads.zzbcm r1 = com.google.android.gms.internal.ads.zzbcv.zzbE
            com.google.android.gms.internal.ads.zzbct r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r4.zzb(r1)
            java.lang.Long r1 = (java.lang.Long) r1
            long r4 = r1.longValue()
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.MILLISECONDS
            r8.schedule(r12, r4, r1)
        L8a:
            if (r11 == 0) goto Lb6
            com.google.android.gms.internal.ads.zzbcm r8 = com.google.android.gms.internal.ads.zzbcv.zzbS
            com.google.android.gms.internal.ads.zzbct r11 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r8 = r11.zzb(r8)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto Laf
            com.google.android.gms.internal.ads.zzgdj r8 = r7.zzd
            r5 = r0
            com.google.android.gms.internal.ads.zzesx r0 = new com.google.android.gms.internal.ads.zzesx
            r1 = r7
            r4 = r9
            r6 = r3
            r3 = r10
            r0.<init>()
            r3 = r6
            r8.zza(r0)
            goto Lb9
        Laf:
            r1 = r7
            r4 = r9
            r7 = r10
            r1.zzh(r2, r7, r4, r0)
            goto Lb9
        Lb6:
            r0.zzd()
        Lb9:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzetb.zzd(com.google.android.gms.internal.ads.zzetb, java.lang.String, java.util.List, android.os.Bundle, boolean, boolean):com.google.common.util.concurrent.ListenableFuture");
    }

    public static /* synthetic */ void zze(zzetb zzetbVar, zzbrk zzbrkVar, Bundle bundle, List list, zzejq zzejqVar, zzcaf zzcafVar) {
        try {
            zzetbVar.zzh(zzbrkVar, bundle, list, zzejqVar);
        } catch (RemoteException e) {
            zzcafVar.zzd(e);
        }
    }

    @Nullable
    private final Bundle zzf(String str) {
        Bundle bundle = this.zzh.zzd.zzm;
        if (bundle != null) {
            return bundle.getBundle(str);
        }
        return null;
    }

    private final zzgcp zzg(final String str, final List list, final Bundle bundle, final boolean z, final boolean z2) {
        zzgce zzgceVar = new zzgce() { // from class: com.google.android.gms.internal.ads.zzesy
            @Override // com.google.android.gms.internal.ads.zzgce
            public final ListenableFuture zza() {
                return zzetb.zzd(zzetb.this, str, list, bundle, z, z2);
            }
        };
        zzgdj zzgdjVar = this.zzd;
        zzgcp zzw = zzgcp.zzw(zzgcy.zzk(zzgceVar, zzgdjVar));
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbL)).booleanValue()) {
            zzw = (zzgcp) zzgcy.zzo(zzw, ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbE)).longValue(), TimeUnit.MILLISECONDS, this.zze);
        }
        return (zzgcp) zzgcy.zze(zzw, Throwable.class, new zzfur() { // from class: com.google.android.gms.internal.ads.zzesz
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                Throwable th = (Throwable) obj;
                int i = zzetb.zzb;
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                String str2 = str;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Error calling adapter: ".concat(String.valueOf(str2)));
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznl)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzv.zzp().zzv(th, "rtbSignal.fetchRtbJsonInfo-".concat(String.valueOf(str2)));
                    return null;
                }
                com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "rtbSignal.fetchRtbJsonInfo-".concat(String.valueOf(str2)));
                return null;
            }
        }, zzgdjVar);
    }

    private final void zzh(zzbrk zzbrkVar, Bundle bundle, @NonNull List list, zzejq zzejqVar) throws RemoteException {
        zzbrkVar.zzh(ObjectWrapper.wrap(this.zzg), this.zza, bundle, (Bundle) list.get(0), this.zzh.zze, zzejqVar);
    }

    private final void zzi(List list, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            zzejr zzejrVar = (zzejr) entry.getValue();
            String str = zzejrVar.zza;
            list.add(zzg(str, Collections.singletonList(zzejrVar.zze), zzf(str), zzejrVar.zzb, zzejrVar.zzc));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 32;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        if (this.zzl == 2) {
            return zzgcy.zzh(zzc);
        }
        zzfcp zzfcpVar = this.zzh;
        if (zzfcpVar.zzr) {
            if (!Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbR)).split(",")).contains(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzb(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzfcpVar.zzd)))) {
                return zzgcy.zzh(zzc);
            }
        }
        return zzgcy.zzk(new zzgce() { // from class: com.google.android.gms.internal.ads.zzesv
            @Override // com.google.android.gms.internal.ads.zzgce
            public final ListenableFuture zza() {
                return zzetb.zzc(zzetb.this);
            }
        }, this.zzd);
    }
}
