package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.concurrent.TimeoutException;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzbnz {
    private final Context zzb;
    private final String zzc;
    private final VersionInfoParcel zzd;
    @Nullable
    private final zzfhq zze;
    private final com.google.android.gms.ads.internal.util.zzbd zzf;
    private final com.google.android.gms.ads.internal.util.zzbd zzg;
    @Nullable
    private zzbny zzh;
    private final Object zza = new Object();
    private int zzi = 1;

    public zzbnz(Context context, VersionInfoParcel versionInfoParcel, String str, com.google.android.gms.ads.internal.util.zzbd zzbdVar, com.google.android.gms.ads.internal.util.zzbd zzbdVar2, @Nullable zzfhq zzfhqVar) {
        this.zzc = str;
        this.zzb = context.getApplicationContext();
        this.zzd = versionInfoParcel;
        this.zze = zzfhqVar;
        this.zzf = zzbdVar;
        this.zzg = zzbdVar2;
    }

    public static /* synthetic */ void zzg(zzbnz zzbnzVar, zzbmu zzbmuVar) {
        if (zzbmuVar.zzi()) {
            zzbnzVar.zzi = 1;
        }
    }

    public static /* synthetic */ void zzh(zzbnz zzbnzVar, zzavl zzavlVar, zzbny zzbnyVar) {
        long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        try {
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before createJavascriptEngine");
            zzbnc zzbncVar = new zzbnc(zzbnzVar.zzb, zzbnzVar.zzd, null, null);
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > After createJavascriptEngine");
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before setting new engine loaded listener");
            zzbncVar.zzk(new zzbnf(zzbnzVar, arrayList, currentTimeMillis, zzbnyVar, zzbncVar));
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before registering GmsgHandler for /jsLoaded");
            zzbncVar.zzq("/jsLoaded", new zzbnk(zzbnzVar, currentTimeMillis, zzbnyVar, zzbncVar));
            com.google.android.gms.ads.internal.util.zzby zzbyVar = new com.google.android.gms.ads.internal.util.zzby();
            zzbnl zzbnlVar = new zzbnl(zzbnzVar, null, zzbncVar, zzbyVar);
            zzbyVar.zzb(zzbnlVar);
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before registering GmsgHandler for /requestReload");
            zzbncVar.zzq("/requestReload", zzbnlVar);
            String str = zzbnzVar.zzc;
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > javascriptPath: ".concat(String.valueOf(str)));
            if (str.endsWith(".js")) {
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before newEngine.loadJavascript");
                zzbncVar.zzh(str);
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > After newEngine.loadJavascript");
            } else if (str.startsWith("<html>")) {
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before newEngine.loadHtml");
                zzbncVar.zzf(str);
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > After newEngine.loadHtml");
            } else {
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before newEngine.loadHtmlWrapper");
                zzbncVar.zzg(str);
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > After newEngine.loadHtmlWrapper");
            }
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before calling ADMOB_UI_HANDLER.postDelayed");
            com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new zzbnn(zzbnzVar, zzbnyVar, zzbncVar, arrayList, currentTimeMillis), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzd)).intValue());
        } catch (Throwable th) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error creating webview.", th);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhV)).booleanValue()) {
                zzbnyVar.zzh(th, "SdkJavascriptFactory.loadJavascriptEngine.createJavascriptEngine");
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhX)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzp().zzv(th, "SdkJavascriptFactory.loadJavascriptEngine");
                zzbnyVar.zzg();
                return;
            }
            com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "SdkJavascriptFactory.loadJavascriptEngine");
            zzbnyVar.zzg();
        }
    }

    public static /* synthetic */ void zzi(zzbnz zzbnzVar, zzbny zzbnyVar, final zzbmu zzbmuVar, ArrayList arrayList, long j) {
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Trying to acquire lock");
        synchronized (zzbnzVar.zza) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock acquired");
                if (zzbnyVar.zze() != -1 && zzbnyVar.zze() != 1) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhV)).booleanValue()) {
                        zzbnyVar.zzh(new TimeoutException("Unable to receive /jsLoaded GMSG."), "SdkJavascriptFactory.loadJavascriptEngine.setLoadedListener");
                    } else {
                        zzbnyVar.zzg();
                    }
                    zzgdj zzgdjVar = zzcaa.zzf;
                    Objects.requireNonNull(zzbmuVar);
                    zzgdjVar.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbne
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzbmu.this.zzc();
                        }
                    });
                    String valueOf = String.valueOf(com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzc));
                    int zze = zzbnyVar.zze();
                    int i = zzbnzVar.zzi;
                    String valueOf2 = String.valueOf(arrayList.get(0));
                    long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - j;
                    com.google.android.gms.ads.internal.util.zze.zza("Could not receive /jsLoaded in " + valueOf + " ms. JS engine session reference status(onEngLoadedTimeout) is " + zze + ". Update status(onEngLoadedTimeout) is " + i + ". LoadNewJavascriptEngine(onEngLoadedTimeout) latency is " + valueOf2 + " ms. Total latency(onEngLoadedTimeout) is " + currentTimeMillis + " ms. Rejecting.");
                    com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock released");
                    return;
                }
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock released, the promise is already settled");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzbnt zzb(@Nullable zzavl zzavlVar) {
        com.google.android.gms.ads.internal.util.zze.zza("getEngine: Trying to acquire lock");
        Object obj = this.zza;
        synchronized (obj) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza("getEngine: Lock acquired");
                com.google.android.gms.ads.internal.util.zze.zza("refreshIfDestroyed: Trying to acquire lock");
                synchronized (obj) {
                    com.google.android.gms.ads.internal.util.zze.zza("refreshIfDestroyed: Lock acquired");
                    zzbny zzbnyVar = this.zzh;
                    if (zzbnyVar != null && this.zzi == 0) {
                        zzbnyVar.zzj(new zzcaj() { // from class: com.google.android.gms.internal.ads.zzbnh
                            @Override // com.google.android.gms.internal.ads.zzcaj
                            public final void zza(Object obj2) {
                                zzbnz.zzg(zzbnz.this, (zzbmu) obj2);
                            }
                        }, new zzcah() { // from class: com.google.android.gms.internal.ads.zzbni
                            @Override // com.google.android.gms.internal.ads.zzcah
                            public final void zza() {
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        com.google.android.gms.ads.internal.util.zze.zza("refreshIfDestroyed: Lock released");
        zzbny zzbnyVar2 = this.zzh;
        if (zzbnyVar2 != null && zzbnyVar2.zze() != -1) {
            int i = this.zzi;
            if (i == 0) {
                com.google.android.gms.ads.internal.util.zze.zza("getEngine (NO_UPDATE): Lock released");
                return this.zzh.zza();
            } else if (i == 1) {
                this.zzi = 2;
                zzd(null);
                com.google.android.gms.ads.internal.util.zze.zza("getEngine (PENDING_UPDATE): Lock released");
                return this.zzh.zza();
            } else {
                com.google.android.gms.ads.internal.util.zze.zza("getEngine (UPDATING): Lock released");
                return this.zzh.zza();
            }
        }
        this.zzi = 2;
        this.zzh = zzd(null);
        com.google.android.gms.ads.internal.util.zze.zza("getEngine (NULL or REJECTED): Lock released");
        return this.zzh.zza();
    }

    public final zzbny zzd(@Nullable zzavl zzavlVar) {
        zzfhc zza = zzfhb.zza(this.zzb, 6);
        zza.zzi();
        final zzbny zzbnyVar = new zzbny(this.zzg);
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before UI_THREAD_EXECUTOR");
        zzcaa.zzf.execute(new Runnable(null, zzbnyVar) { // from class: com.google.android.gms.internal.ads.zzbnj
            public final /* synthetic */ zzbny zzb;

            {
                this.zzb = zzbnyVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbnz.zzh(zzbnz.this, null, this.zzb);
            }
        });
        com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine: Promise created");
        zzbnyVar.zzj(new zzbno(this, zzbnyVar, zza), new zzbnp(this, zzbnyVar, zza));
        return zzbnyVar;
    }
}
