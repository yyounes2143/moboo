package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzbxq implements zzbxv {
    public static final /* synthetic */ int zzb = 0;
    private static final List zzc = Collections.synchronizedList(new ArrayList());
    @VisibleForTesting
    boolean zza;
    private final zzhcr zzd;
    private final LinkedHashMap zze;
    private final Context zzh;
    private final zzbxs zzi;
    private final List zzf = new ArrayList();
    private final List zzg = new ArrayList();
    private final Object zzj = new Object();
    private HashSet zzk = new HashSet();
    private boolean zzl = false;
    private boolean zzm = false;

    public zzbxq(Context context, VersionInfoParcel versionInfoParcel, zzbxs zzbxsVar, @Nullable String str, zzbxr zzbxrVar) {
        Preconditions.checkNotNull(zzbxsVar, "SafeBrowsing config is not present.");
        this.zzh = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zze = new LinkedHashMap();
        this.zzi = zzbxsVar;
        for (String str2 : zzbxsVar.zze) {
            this.zzk.add(str2.toLowerCase(Locale.ENGLISH));
        }
        this.zzk.remove("cookie".toLowerCase(Locale.ENGLISH));
        zzhcr zzc2 = zzheq.zzc();
        zzc2.zzn(9);
        if (str != null) {
            zzc2.zzj(str);
            zzc2.zzh(str);
        }
        zzhcs zzc3 = zzhct.zzc();
        String str3 = this.zzi.zza;
        if (str3 != null) {
            zzc3.zza(str3);
        }
        zzc2.zzg((zzhct) zzc3.zzbr());
        zzheh zzc4 = zzhei.zzc();
        zzc4.zzc(Wrappers.packageManager(this.zzh).isCallerInstantApp());
        String str4 = versionInfoParcel.afmaVersion;
        if (str4 != null) {
            zzc4.zza(str4);
        }
        long apkVersion = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zzh);
        if (apkVersion > 0) {
            zzc4.zzb(apkVersion);
        }
        zzc2.zzf((zzhei) zzc4.zzbr());
        this.zzd = zzc2;
    }

    public static /* synthetic */ ListenableFuture zzb(zzbxq zzbxqVar, Map map) {
        int length;
        zzhef zzhefVar;
        ListenableFuture zzm;
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (optJSONArray != null) {
                        Object obj = zzbxqVar.zzj;
                        synchronized (obj) {
                            length = optJSONArray.length();
                            synchronized (obj) {
                                zzhefVar = (zzhef) zzbxqVar.zze.get(str);
                            }
                        }
                        if (zzhefVar == null) {
                            zzbxu.zza("Cannot find the corresponding resource object for " + str);
                        } else {
                            boolean z = false;
                            for (int i = 0; i < length; i++) {
                                zzhefVar.zza(optJSONArray.getJSONObject(i).getString("threat_type"));
                            }
                            boolean z2 = zzbxqVar.zza;
                            if (length > 0) {
                                z = true;
                            }
                            zzbxqVar.zza = z | z2;
                        }
                    }
                }
            } catch (JSONException e) {
                if (((Boolean) zzbfd.zza.zze()).booleanValue()) {
                    int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to get SafeBrowsing metadata", e);
                }
                return zzgcy.zzg(new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (zzbxqVar.zza) {
            synchronized (zzbxqVar.zzj) {
                zzbxqVar.zzd.zzn(10);
            }
        }
        boolean z3 = zzbxqVar.zza;
        if ((z3 && zzbxqVar.zzi.zzg) || ((zzbxqVar.zzm && zzbxqVar.zzi.zzf) || (!z3 && zzbxqVar.zzi.zzd))) {
            synchronized (zzbxqVar.zzj) {
                for (zzhef zzhefVar2 : zzbxqVar.zze.values()) {
                    zzbxqVar.zzd.zzc((zzheg) zzhefVar2.zzbr());
                }
                zzhcr zzhcrVar = zzbxqVar.zzd;
                zzhcrVar.zza(zzbxqVar.zzf);
                zzhcrVar.zzb(zzbxqVar.zzg);
                if (zzbxu.zzb()) {
                    StringBuilder sb = new StringBuilder("Sending SB report\n  url: " + zzhcrVar.zzl() + "\n  clickUrl: " + zzhcrVar.zzk() + "\n  resources: \n");
                    for (zzheg zzhegVar : zzhcrVar.zzm()) {
                        sb.append("    [");
                        sb.append(zzhegVar.zzc());
                        sb.append("] ");
                        sb.append(zzhegVar.zzg());
                    }
                    zzbxu.zza(sb.toString());
                }
                ListenableFuture zzb2 = new com.google.android.gms.ads.internal.util.zzbo(zzbxqVar.zzh).zzb(1, zzbxqVar.zzi.zzb, null, ((zzheq) zzhcrVar.zzbr()).zzaV());
                if (zzbxu.zzb()) {
                    zzb2.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbxn
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i3 = zzbxq.zzb;
                            zzbxu.zza("Pinged SB successfully.");
                        }
                    }, zzcaa.zza);
                }
                zzm = zzgcy.zzm(zzb2, new zzfur() { // from class: com.google.android.gms.internal.ads.zzbxo
                    @Override // com.google.android.gms.internal.ads.zzfur
                    public final Object apply(Object obj2) {
                        String str2 = (String) obj2;
                        int i3 = zzbxq.zzb;
                        return null;
                    }
                }, zzcaa.zzg);
            }
            return zzm;
        }
        return zzgcy.zzh(null);
    }

    public static /* synthetic */ void zzd(zzbxq zzbxqVar, Bitmap bitmap) {
        zzgxi zzt = zzgxk.zzt();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, zzt);
        synchronized (zzbxqVar.zzj) {
            zzhcr zzhcrVar = zzbxqVar.zzd;
            zzhdz zzc2 = zzheb.zzc();
            zzc2.zza(zzt.zzb());
            zzc2.zzb(MimeTypes.IMAGE_PNG);
            zzc2.zzc(2);
            zzhcrVar.zzi((zzheb) zzc2.zzbr());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxv
    public final zzbxs zza() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzbxv
    public final void zze(String str, Map map, int i) {
        String str2;
        String str3;
        synchronized (this.zzj) {
            if (i == 3) {
                try {
                    this.zzm = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
            LinkedHashMap linkedHashMap = this.zze;
            if (linkedHashMap.containsKey(str)) {
                if (i == 3) {
                    ((zzhef) linkedHashMap.get(str)).zze(4);
                }
                return;
            }
            zzhef zzd = zzheg.zzd();
            int zza = zzhee.zza(i);
            if (zza != 0) {
                zzd.zze(zza);
            }
            zzd.zzb(linkedHashMap.size());
            zzd.zzd(str);
            zzhde zzc2 = zzhdh.zzc();
            if (!this.zzk.isEmpty() && map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    if (entry.getKey() != null) {
                        str2 = (String) entry.getKey();
                    } else {
                        str2 = "";
                    }
                    if (entry.getValue() != null) {
                        str3 = (String) entry.getValue();
                    } else {
                        str3 = "";
                    }
                    if (this.zzk.contains(str2.toLowerCase(Locale.ENGLISH))) {
                        zzhdc zzc3 = zzhdd.zzc();
                        zzc3.zza(zzgxk.zzw(str2));
                        zzc3.zzb(zzgxk.zzw(str3));
                        zzc2.zza((zzhdd) zzc3.zzbr());
                    }
                }
            }
            zzd.zzc((zzhdh) zzc2.zzbr());
            linkedHashMap.put(str, zzd);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxv
    public final void zzf() {
        synchronized (this.zzj) {
            this.zze.keySet();
            ListenableFuture zzh = zzgcy.zzh(Collections.EMPTY_MAP);
            zzgcf zzgcfVar = new zzgcf() { // from class: com.google.android.gms.internal.ads.zzbxl
                @Override // com.google.android.gms.internal.ads.zzgcf
                public final ListenableFuture zza(Object obj) {
                    return zzbxq.zzb(zzbxq.this, (Map) obj);
                }
            };
            zzgdj zzgdjVar = zzcaa.zzg;
            ListenableFuture zzn = zzgcy.zzn(zzh, zzgcfVar, zzgdjVar);
            ListenableFuture zzo = zzgcy.zzo(zzn, 10L, TimeUnit.SECONDS, zzcaa.zzd);
            zzgcy.zzr(zzn, new zzbxp(this, zzo), zzgdjVar);
            zzc.add(zzo);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x003a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzbxv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzg(android.view.View r8) {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zzbxs r0 = r7.zzi
            boolean r0 = r0.zzc
            if (r0 != 0) goto L8
            goto L88
        L8:
            boolean r0 = r7.zzl
            if (r0 != 0) goto L88
            com.google.android.gms.ads.internal.zzv.zzr()
            r0 = 1
            r1 = 0
            if (r8 != 0) goto L15
            goto L76
        L15:
            boolean r2 = r8.isDrawingCacheEnabled()     // Catch: java.lang.RuntimeException -> L27
            r8.setDrawingCacheEnabled(r0)     // Catch: java.lang.RuntimeException -> L27
            android.graphics.Bitmap r3 = r8.getDrawingCache()     // Catch: java.lang.RuntimeException -> L27
            if (r3 == 0) goto L29
            android.graphics.Bitmap r3 = android.graphics.Bitmap.createBitmap(r3)     // Catch: java.lang.RuntimeException -> L27
            goto L2a
        L27:
            r2 = move-exception
            goto L30
        L29:
            r3 = r1
        L2a:
            r8.setDrawingCacheEnabled(r2)     // Catch: java.lang.RuntimeException -> L2e
            goto L38
        L2e:
            r2 = move-exception
            goto L31
        L30:
            r3 = r1
        L31:
            int r4 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r4 = "Fail to capture the web view"
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r4, r2)
        L38:
            if (r3 != 0) goto L75
            int r2 = r8.getWidth()     // Catch: java.lang.RuntimeException -> L63
            int r3 = r8.getHeight()     // Catch: java.lang.RuntimeException -> L63
            if (r2 == 0) goto L65
            if (r3 != 0) goto L47
            goto L65
        L47:
            int r4 = r8.getWidth()     // Catch: java.lang.RuntimeException -> L63
            int r5 = r8.getHeight()     // Catch: java.lang.RuntimeException -> L63
            android.graphics.Bitmap$Config r6 = android.graphics.Bitmap.Config.RGB_565     // Catch: java.lang.RuntimeException -> L63
            android.graphics.Bitmap r4 = android.graphics.Bitmap.createBitmap(r4, r5, r6)     // Catch: java.lang.RuntimeException -> L63
            android.graphics.Canvas r5 = new android.graphics.Canvas     // Catch: java.lang.RuntimeException -> L63
            r5.<init>(r4)     // Catch: java.lang.RuntimeException -> L63
            r6 = 0
            r8.layout(r6, r6, r2, r3)     // Catch: java.lang.RuntimeException -> L63
            r8.draw(r5)     // Catch: java.lang.RuntimeException -> L63
            r1 = r4
            goto L76
        L63:
            r8 = move-exception
            goto L6d
        L65:
            java.lang.String r8 = "Width or height of view is zero"
            int r2 = com.google.android.gms.ads.internal.util.zze.zza     // Catch: java.lang.RuntimeException -> L63
            com.google.android.gms.ads.internal.util.client.zzo.zzj(r8)     // Catch: java.lang.RuntimeException -> L63
            goto L76
        L6d:
            int r2 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r2 = "Fail to capture the webview"
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r2, r8)
            goto L76
        L75:
            r1 = r3
        L76:
            if (r1 != 0) goto L7e
            java.lang.String r8 = "Failed to capture the webview bitmap."
            com.google.android.gms.internal.ads.zzbxu.zza(r8)
            return
        L7e:
            r7.zzl = r0
            com.google.android.gms.internal.ads.zzbxm r8 = new com.google.android.gms.internal.ads.zzbxm
            r8.<init>()
            com.google.android.gms.ads.internal.util.zzs.zzh(r8)
        L88:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbxq.zzg(android.view.View):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbxv
    public final void zzh(String str) {
        synchronized (this.zzj) {
            try {
                if (str == null) {
                    this.zzd.zzd();
                } else {
                    this.zzd.zze(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxv
    public final boolean zzi() {
        if (PlatformVersion.isAtLeastKitKat() && this.zzi.zzc && !this.zzl) {
            return true;
        }
        return false;
    }
}
