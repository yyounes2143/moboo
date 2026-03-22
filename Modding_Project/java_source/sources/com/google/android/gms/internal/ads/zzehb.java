package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzehb implements zzgcf {
    private final zzfgt zza;
    private final zzcvv zzb;
    private final zzfjn zzc;
    private final zzfjr zzd;
    private final Executor zze;
    private final ScheduledExecutorService zzf;
    private final zzcra zzg;
    private final zzegu zzh;
    private final zzedk zzi;
    private final Context zzj;
    private final zzfhn zzk;
    private final zzege zzl;
    private final zzdrx zzm;

    public zzehb(Context context, zzfgt zzfgtVar, zzegu zzeguVar, zzcvv zzcvvVar, zzfjn zzfjnVar, zzfjr zzfjrVar, zzcra zzcraVar, Executor executor, ScheduledExecutorService scheduledExecutorService, zzedk zzedkVar, zzfhn zzfhnVar, zzege zzegeVar, zzdrx zzdrxVar) {
        this.zzj = context;
        this.zza = zzfgtVar;
        this.zzh = zzeguVar;
        this.zzb = zzcvvVar;
        this.zzc = zzfjnVar;
        this.zzd = zzfjrVar;
        this.zzg = zzcraVar;
        this.zze = executor;
        this.zzf = scheduledExecutorService;
        this.zzi = zzedkVar;
        this.zzk = zzfhnVar;
        this.zzl = zzegeVar;
        this.zzm = zzdrxVar;
    }

    public static /* synthetic */ ListenableFuture zzb(zzehb zzehbVar, zzfbu zzfbuVar, zzfcg zzfcgVar, zzedf zzedfVar, Throwable th) {
        zzfhc zza = zzfhb.zza(zzehbVar.zzj, 12);
        zza.zzd(zzfbuVar.zzE);
        zza.zzi();
        ListenableFuture zzo = zzgcy.zzo(zzedfVar.zza(zzfcgVar, zzfbuVar), zzfbuVar.zzR, TimeUnit.MILLISECONDS, zzehbVar.zzf);
        zzehbVar.zzh.zzf(zzfcgVar, zzfbuVar, zzo, zzehbVar.zzc);
        zzfhm.zza(zzo, zzehbVar.zzk, zza);
        return zzo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbcv.zzfM)).booleanValue() == false) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0061 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String zzc(com.google.android.gms.internal.ads.zzfcg r5) {
        /*
            com.google.android.gms.internal.ads.zzbcm r0 = com.google.android.gms.internal.ads.zzbcv.zzfN
            com.google.android.gms.internal.ads.zzbct r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r1.zzb(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            java.lang.String r1 = "No fill."
            r2 = 1
            if (r2 == r0) goto L18
            java.lang.String r0 = "No ad config."
            goto L19
        L18:
            r0 = r1
        L19:
            com.google.android.gms.internal.ads.zzfcf r5 = r5.zzb
            com.google.android.gms.internal.ads.zzfbx r5 = r5.zzb
            int r2 = r5.zzf
            if (r2 == 0) goto L57
            r3 = 200(0xc8, float:2.8E-43)
            r4 = 300(0x12c, float:4.2E-43)
            if (r2 < r3) goto L3c
            if (r2 >= r4) goto L3c
            com.google.android.gms.internal.ads.zzbcm r2 = com.google.android.gms.internal.ads.zzbcv.zzfM
            com.google.android.gms.internal.ads.zzbct r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r2 = r3.zzb(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 != 0) goto L57
            goto L58
        L3c:
            if (r2 < r4) goto L45
            r0 = 400(0x190, float:5.6E-43)
            if (r2 >= r0) goto L45
            java.lang.String r1 = "No location header to follow redirect or too many redirects."
            goto L58
        L45:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Received error HTTP response code: "
            r0.append(r1)
            r0.append(r2)
            java.lang.String r1 = r0.toString()
            goto L58
        L57:
            r1 = r0
        L58:
            com.google.android.gms.internal.ads.zzfbw r5 = r5.zzj
            if (r5 == 0) goto L61
            java.lang.String r5 = r5.zza()
            return r5
        L61:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehb.zzc(com.google.android.gms.internal.ads.zzfcg):java.lang.String");
    }

    @Override // com.google.android.gms.internal.ads.zzgcf
    public final /* synthetic */ ListenableFuture zza(Object obj) throws Exception {
        int i;
        Bundle bundle;
        final zzfcg zzfcgVar = (zzfcg) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcq)).booleanValue() && (bundle = zzfcgVar.zzb.zzd) != null) {
            this.zzm.zza().putAll(bundle);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcr)).booleanValue()) {
            this.zzm.zza().putLong(zzdrl.RENDERING_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        String zzc = zzc(zzfcgVar);
        zzedk zzedkVar = this.zzi;
        zzfcf zzfcfVar = zzfcgVar.zzb;
        zzfbx zzfbxVar = zzfcfVar.zzb;
        zzedkVar.zzi(zzfbxVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziC)).booleanValue() && (i = zzfbxVar.zzf) != 0 && (i < 200 || i >= 300)) {
            return zzgcy.zzg(new zzegy(3, zzc));
        }
        String str = zzfbxVar.zzq;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdR)).booleanValue() && !TextUtils.isEmpty(str)) {
            zzedkVar.zzh(str, zzfcfVar.zza);
        } else {
            for (zzfbu zzfbuVar : zzfcfVar.zza) {
                zzedkVar.zzd(zzfbuVar);
                Iterator it = zzfbuVar.zza.iterator();
                while (true) {
                    if (it.hasNext()) {
                        zzedf zza = this.zzg.zza(zzfbuVar.zzb, (String) it.next());
                        if (zza == null || !zza.zzb(zzfcgVar, zzfbuVar)) {
                        }
                    } else {
                        zzedkVar.zzf(zzfbuVar, 0L, zzfdq.zzd(1, null, null));
                        break;
                    }
                }
            }
        }
        zzcvv zzcvvVar = this.zzb;
        zzcmr zzcmrVar = new zzcmr(zzfcgVar, this.zzd, this.zzc);
        Executor executor = this.zze;
        zzcvvVar.zzo(zzcmrVar, executor);
        if (zzfbxVar.zzr > 1) {
            return this.zzl.zzb(zzfcgVar);
        }
        String zzc2 = zzc(zzfcgVar);
        zzfgt zzfgtVar = this.zza;
        zzffz zza2 = zzfgd.zzc(zzgcy.zzg(new zzegy(3, zzc2)), zzfgn.RENDER_CONFIG_INIT, zzfgtVar).zza();
        final zzegu zzeguVar = this.zzh;
        zzeguVar.zzl();
        int i2 = 0;
        for (final zzfbu zzfbuVar2 : zzfcfVar.zza) {
            Iterator it2 = zzfbuVar2.zza.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                String str2 = (String) it2.next();
                final zzedf zza3 = this.zzg.zza(zzfbuVar2.zzb, str2);
                if (zza3 != null && zza3.zzb(zzfcgVar, zzfbuVar2)) {
                    zzfgj zzb = zzfgtVar.zzb(zzfgn.RENDER_CONFIG_WATERFALL, zza2);
                    zza2 = zzb.zzh("render-config-" + i2 + "-" + str2).zzc(Throwable.class, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzegz
                        @Override // com.google.android.gms.internal.ads.zzgcf
                        public final ListenableFuture zza(Object obj2) {
                            return zzehb.zzb(zzehb.this, zzfbuVar2, zzfcgVar, zza3, (Throwable) obj2);
                        }
                    }).zza();
                    break;
                }
            }
            i2++;
        }
        zza2.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeha
            @Override // java.lang.Runnable
            public final void run() {
                zzegu.this.zzj();
            }
        }, executor);
        return zza2;
    }
}
