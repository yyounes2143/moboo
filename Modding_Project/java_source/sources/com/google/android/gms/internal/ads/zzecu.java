package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzecu implements zzecv {
    public static /* synthetic */ zzeda zzc(String str, String str2, String str3, zzecw zzecwVar, String str4, WebView webView, String str5, String str6, zzecx zzecxVar) {
        zzflo zza = zzflo.zza("Google", str2);
        zzfln zzp = zzp("javascript");
        zzflg zzn = zzn(zzecwVar.toString());
        zzfln zzflnVar = zzfln.NONE;
        if (zzp == zzflnVar) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid html session error; Unable to parse impression owner: javascript");
            return null;
        } else if (zzn == null) {
            String valueOf = String.valueOf(zzecwVar);
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid html session error; Unable to parse creative type: ".concat(valueOf));
            return null;
        } else {
            zzfln zzp2 = zzp(str4);
            if (zzn == zzflg.VIDEO && zzp2 == zzflnVar) {
                String valueOf2 = String.valueOf(str4);
                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid html session error; Video events owner unknown for video creative: ".concat(valueOf2));
                return null;
            }
            zzfld zzb = zzfld.zzb(zza, webView, str5, "");
            return new zzeda(zzflb.zza(zzflc.zza(zzn, zzo(zzecxVar.toString()), zzp, zzp2, true), zzb), zzb);
        }
    }

    public static /* synthetic */ zzeda zzd(String str, String str2, String str3, String str4, zzecw zzecwVar, WebView webView, String str5, String str6, zzecx zzecxVar) {
        zzflo zza = zzflo.zza(str, str2);
        zzfln zzp = zzp("javascript");
        zzfln zzp2 = zzp(str4);
        zzflg zzn = zzn(zzecwVar.toString());
        zzfln zzflnVar = zzfln.NONE;
        if (zzp == zzflnVar) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid js session error; Unable to parse impression owner: javascript");
            return null;
        } else if (zzn == null) {
            String valueOf = String.valueOf(zzecwVar);
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid js session error; Unable to parse creative type: ".concat(valueOf));
            return null;
        } else if (zzn == zzflg.VIDEO && zzp2 == zzflnVar) {
            String valueOf2 = String.valueOf(str4);
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid js session error; Video events owner unknown for video creative: ".concat(valueOf2));
            return null;
        } else {
            zzfld zzc = zzfld.zzc(zza, webView, str5, "");
            return new zzeda(zzflb.zza(zzflc.zza(zzn, zzo(zzecxVar.toString()), zzp, zzp2, true), zzc), zzc);
        }
    }

    @Nullable
    private static zzflg zzn(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode != -382745961) {
            if (hashCode != 112202875) {
                if (hashCode == 714893483 && str.equals("nativeDisplay")) {
                    c = 1;
                }
                c = 65535;
            } else {
                if (str.equals("video")) {
                    c = 2;
                }
                c = 65535;
            }
        } else {
            if (str.equals("htmlDisplay")) {
                c = 0;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    return null;
                }
                return zzflg.VIDEO;
            }
            return zzflg.NATIVE_DISPLAY;
        }
        return zzflg.HTML_DISPLAY;
    }

    private static zzflj zzo(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode != -1104128070) {
            if (hashCode != 1318088141) {
                if (hashCode == 1988248512 && str.equals("onePixel")) {
                    c = 2;
                }
                c = 65535;
            } else {
                if (str.equals("definedByJavascript")) {
                    c = 1;
                }
                c = 65535;
            }
        } else {
            if (str.equals("beginToRender")) {
                c = 0;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    return zzflj.UNSPECIFIED;
                }
                return zzflj.ONE_PIXEL;
            }
            return zzflj.DEFINED_BY_JAVASCRIPT;
        }
        return zzflj.BEGIN_TO_RENDER;
    }

    private static zzfln zzp(@Nullable String str) {
        if ("native".equals(str)) {
            return zzfln.NATIVE;
        }
        if ("javascript".equals(str)) {
            return zzfln.JAVASCRIPT;
        }
        return zzfln.NONE;
    }

    @Nullable
    private static final Object zzq(zzect zzectVar) {
        try {
            return zzectVar.zza();
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzv(e, "omid exception");
            return null;
        }
    }

    private static final void zzr(Runnable runnable) {
        try {
            runnable.run();
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzv(e, "omid exception");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzecv
    @Nullable
    public final zzeda zza(final String str, final WebView webView, String str2, String str3, @Nullable final String str4, final zzecx zzecxVar, final zzecw zzecwVar, @Nullable final String str5) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfw)).booleanValue() && zzfkz.zzb()) {
            return (zzeda) zzq(new zzect("Google", str, "javascript", zzecwVar, str4, webView, str5, "", zzecxVar) { // from class: com.google.android.gms.internal.ads.zzecj
                public final /* synthetic */ String zzb;
                public final /* synthetic */ zzecw zzd;
                public final /* synthetic */ String zze;
                public final /* synthetic */ WebView zzf;
                public final /* synthetic */ String zzg;
                public final /* synthetic */ zzecx zzi;
                public final /* synthetic */ String zza = "Google";
                public final /* synthetic */ String zzc = "javascript";
                public final /* synthetic */ String zzh = "";

                {
                    this.zzb = str;
                    this.zzd = zzecwVar;
                    this.zze = str4;
                    this.zzf = webView;
                    this.zzg = str5;
                    this.zzi = zzecxVar;
                }

                @Override // com.google.android.gms.internal.ads.zzect
                public final Object zza() {
                    return zzecu.zzc(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi);
                }
            });
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzecv
    @Nullable
    public final zzeda zzb(final String str, final WebView webView, String str2, String str3, @Nullable final String str4, final String str5, final zzecx zzecxVar, final zzecw zzecwVar, @Nullable final String str6) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfw)).booleanValue() && zzfkz.zzb()) {
            return (zzeda) zzq(new zzect(str5, str, "javascript", str4, zzecwVar, webView, str6, "", zzecxVar) { // from class: com.google.android.gms.internal.ads.zzecm
                public final /* synthetic */ String zza;
                public final /* synthetic */ String zzb;
                public final /* synthetic */ String zzd;
                public final /* synthetic */ zzecw zze;
                public final /* synthetic */ WebView zzf;
                public final /* synthetic */ String zzg;
                public final /* synthetic */ zzecx zzi;
                public final /* synthetic */ String zzc = "javascript";
                public final /* synthetic */ String zzh = "";

                {
                    this.zzd = str4;
                    this.zze = zzecwVar;
                    this.zzf = webView;
                    this.zzg = str6;
                    this.zzi = zzecxVar;
                }

                @Override // com.google.android.gms.internal.ads.zzect
                public final Object zza() {
                    return zzecu.zzd(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi);
                }
            });
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzecv
    @Nullable
    public final zzflm zze(final VersionInfoParcel versionInfoParcel, final WebView webView, boolean z) {
        return (zzflm) zzq(new zzect(webView, true) { // from class: com.google.android.gms.internal.ads.zzecr
            public final /* synthetic */ WebView zzb;

            @Override // com.google.android.gms.internal.ads.zzect
            public final Object zza() {
                VersionInfoParcel versionInfoParcel2 = VersionInfoParcel.this;
                int i = versionInfoParcel2.buddyApkVersion;
                int i2 = versionInfoParcel2.clientJarVersion;
                return zzflm.zzb(zzflo.zza("Google", i + "." + i2), this.zzb, true);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzecv
    @Nullable
    public final String zzf(Context context) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfw)).booleanValue()) {
            return null;
        }
        return (String) zzq(new zzect() { // from class: com.google.android.gms.internal.ads.zzecp
            @Override // com.google.android.gms.internal.ads.zzect
            public final Object zza() {
                return "a.1.5.2-google_20241009";
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzecv
    public final void zzg(final zzflb zzflbVar, final View view) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeci
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfw)).booleanValue() && zzfkz.zzb()) {
                    zzflb.this.zzb(view, zzfli.NOT_VISIBLE, "Ad overlay");
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzecv
    public final void zzh(final zzflm zzflmVar, final View view) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeco
            @Override // java.lang.Runnable
            public final void run() {
                zzflm.this.zzf(view, zzfli.NOT_VISIBLE, "Ad overlay");
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzecv
    public final void zzi(final zzflb zzflbVar) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzecs
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfw)).booleanValue() && zzfkz.zzb()) {
                    zzflb.this.zzc();
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzecv
    public final void zzj(final zzflb zzflbVar, final View view) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeck
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfw)).booleanValue() && zzfkz.zzb()) {
                    zzflb.this.zzd(view);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzecv
    public final void zzk(final zzflb zzflbVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfw)).booleanValue() && zzfkz.zzb()) {
            Objects.requireNonNull(zzflbVar);
            zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzecl
                @Override // java.lang.Runnable
                public final void run() {
                    zzflb.this.zze();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzecv
    public final boolean zzl(final Context context) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfw)).booleanValue()) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid flag is disabled");
            return false;
        }
        Boolean bool = (Boolean) zzq(new zzect() { // from class: com.google.android.gms.internal.ads.zzecn
            @Override // com.google.android.gms.internal.ads.zzect
            public final Object zza() {
                if (zzfkz.zzb()) {
                    return Boolean.TRUE;
                }
                zzfkz.zza(context);
                return Boolean.valueOf(zzfkz.zzb());
            }
        });
        if (bool == null || !bool.booleanValue()) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzecv
    public final void zzm(final zzflm zzflmVar, final zzcfs zzcfsVar) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzecq
            @Override // java.lang.Runnable
            public final void run() {
                zzflm.this.zzg(zzcfsVar);
            }
        });
    }
}
