package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import com.mbridge.msdk.MBridgeConstans;
import j$.util.Objects;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbki implements zzbjw {
    @Nullable
    private final com.google.android.gms.ads.internal.zzb zza;
    @Nullable
    private final zzdsd zzb;
    @Nullable
    private final zzbsj zzd;
    @Nullable
    private final zzebt zze;
    @Nullable
    private final zzcmn zzf;
    private com.google.android.gms.ads.internal.overlay.zzaa zzg = null;
    private final zzgdj zzh = zzcaa.zzg;
    private final com.google.android.gms.ads.internal.util.client.zzu zzc = new com.google.android.gms.ads.internal.util.client.zzu(null);

    public zzbki(com.google.android.gms.ads.internal.zzb zzbVar, zzbsj zzbsjVar, zzebt zzebtVar, zzdsd zzdsdVar, zzcmn zzcmnVar) {
        this.zza = zzbVar;
        this.zzd = zzbsjVar;
        this.zze = zzebtVar;
        this.zzb = zzdsdVar;
        this.zzf = zzcmnVar;
    }

    public static int zzb(Map map) {
        String str = (String) map.get("o");
        if (str != null) {
            if ("p".equalsIgnoreCase(str)) {
                return 7;
            }
            if (CmcdData.Factory.STREAM_TYPE_LIVE.equalsIgnoreCase(str)) {
                return 6;
            }
            if ("c".equalsIgnoreCase(str)) {
                return 14;
            }
            return -1;
        }
        return -1;
    }

    @VisibleForTesting
    public static Uri zzc(Context context, zzavl zzavlVar, Uri uri, View view, @Nullable Activity activity, @Nullable zzfct zzfctVar) {
        if (zzavlVar != null) {
            try {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmm)).booleanValue() && zzfctVar != null) {
                    if (zzavlVar.zze(uri)) {
                        return zzfctVar.zza(uri, context, view, activity);
                    }
                } else if (zzavlVar.zze(uri)) {
                    return zzavlVar.zza(uri, context, view, activity);
                }
            } catch (zzavm unused) {
            } catch (Exception e) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "OpenGmsgHandler.maybeAddClickSignalsToUri");
            }
        }
        return uri;
    }

    @VisibleForTesting
    public static Uri zzd(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e) {
            String valueOf = String.valueOf(uri.toString());
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error adding click uptime parameter to url: ".concat(valueOf), e);
        }
        return uri;
    }

    public static boolean zzf(Map map) {
        return "1".equals(map.get("custom_close"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzh(String str, com.google.android.gms.ads.internal.client.zza zzaVar, Map map, String str2) {
        String str3;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        String str4;
        boolean z5;
        Map map2 = map;
        zzcfb zzcfbVar = (zzcfb) zzaVar;
        zzfbu zzD = zzcfbVar.zzD();
        zzfbx zzR = zzcfbVar.zzR();
        boolean z6 = false;
        if (zzD == null || zzR == null) {
            str3 = "";
            z = false;
        } else {
            str3 = zzR.zzb;
            z = zzD.zzb();
        }
        boolean z7 = true;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkY)).booleanValue() && map2.containsKey("sc") && ((String) map2.get("sc")).equals("0")) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmX)).booleanValue() && map2.containsKey("ig_cl") && ((String) map2.get("ig_cl")).equals("true")) {
            z3 = true;
        } else {
            z3 = false;
        }
        if ("expand".equalsIgnoreCase(str2)) {
            if (zzcfbVar.zzaF()) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Cannot expand WebView that is already expanded.");
                return;
            }
            zzk(false);
            ((zzcgl) zzaVar).zzaL(zzf(map2), zzb(map2), z2);
        } else if ("webapp".equalsIgnoreCase(str2)) {
            zzk(false);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmi)).booleanValue() && Objects.equals(map2.get("is_allowed_for_lock_screen"), "1")) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (str != null) {
                ((zzcgl) zzaVar).zzaN(zzf(map2), zzb(map2), str, z2, z5);
            } else {
                ((zzcgl) zzaVar).zzaM(zzf(map2), zzb(map2), (String) map2.get("html"), (String) map2.get("baseurl"), z2);
            }
        } else {
            Intent intent = null;
            if ("chrome_custom_tab".equalsIgnoreCase(str2)) {
                Context context = zzcfbVar.getContext();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeV)).booleanValue()) {
                    com.google.android.gms.ads.internal.util.zze.zza("User opt out chrome custom tab.");
                    zzm(10);
                } else {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeQ)).booleanValue()) {
                        if (CustomTabsClient.getPackageName(context, null) != null) {
                            z6 = true;
                        }
                    } else {
                        z6 = zzbdw.zzg(context);
                    }
                    if (!z6) {
                        zzm(4);
                    } else {
                        zzk(true);
                        if (TextUtils.isEmpty(str)) {
                            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzj("Cannot open browser with null or empty url");
                            zzm(7);
                            return;
                        }
                        Uri zzd = zzd(zzc(zzcfbVar.getContext(), zzcfbVar.zzI(), Uri.parse(str), zzcfbVar.zzF(), zzcfbVar.zzi(), zzcfbVar.zzS()));
                        if (!z || this.zze == null || !zzl(zzaVar, zzcfbVar.getContext(), zzd.toString(), str3)) {
                            this.zzg = new zzbkf(this);
                            ((zzcgl) zzaVar).zzaJ(new com.google.android.gms.ads.internal.overlay.zzc(null, zzd.toString(), null, null, null, null, null, null, ObjectWrapper.wrap(this.zzg).asBinder(), true), z2, z3, str3);
                            return;
                        }
                        return;
                    }
                }
                map2.put("use_first_package", "true");
                map2.put("use_running_process", "true");
                zzj(zzaVar, map2, z, str3, z2, z3);
            } else if (!MBridgeConstans.DYNAMIC_VIEW_WX_APP.equalsIgnoreCase(str2) || !"true".equalsIgnoreCase((String) map2.get("system_browser"))) {
                boolean z8 = z2;
                boolean z9 = z;
                com.google.android.gms.ads.internal.client.zza zzaVar2 = zzaVar;
                boolean z10 = z3;
                String str5 = str3;
                if ("open_app".equalsIgnoreCase(str2)) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziy)).booleanValue()) {
                        zzk(true);
                        String str6 = (String) map2.get("p");
                        if (str6 == null) {
                            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzj("Package name missing from open app action.");
                            return;
                        } else if (!z9 || this.zze == null || !zzl(zzaVar2, zzcfbVar.getContext(), str6, str5)) {
                            PackageManager packageManager = zzcfbVar.getContext().getPackageManager();
                            if (packageManager == null) {
                                int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzj("Cannot get package manager from open app action.");
                                return;
                            }
                            Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str6);
                            if (launchIntentForPackage != null) {
                                ((zzcgl) zzaVar2).zzaJ(new com.google.android.gms.ads.internal.overlay.zzc(launchIntentForPackage, this.zzg), z8, z10, str5);
                                return;
                            }
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                zzk(true);
                String str7 = (String) map2.get("intent_url");
                if (!TextUtils.isEmpty(str7)) {
                    try {
                        intent = Intent.parseUri(str7, 0);
                    } catch (URISyntaxException e) {
                        String valueOf = String.valueOf(str7);
                        int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzh("Error parsing the url: ".concat(valueOf), e);
                    }
                }
                if (intent != null && intent.getData() != null) {
                    Uri data = intent.getData();
                    if (!Uri.EMPTY.equals(data)) {
                        Uri zzd2 = zzd(zzc(zzcfbVar.getContext(), zzcfbVar.zzI(), data, zzcfbVar.zzF(), zzcfbVar.zzi(), zzcfbVar.zzS()));
                        if (!TextUtils.isEmpty(intent.getType())) {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziz)).booleanValue()) {
                                intent.setDataAndType(zzd2, intent.getType());
                            }
                        }
                        intent.setData(zzd2);
                    }
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziU)).booleanValue() && "intent_async".equalsIgnoreCase(str2) && map2.containsKey("event_id")) {
                    z4 = z8;
                } else {
                    z4 = z8;
                    z7 = false;
                }
                HashMap hashMap = new HashMap();
                if (z7) {
                    zzbkg zzbkgVar = new zzbkg(this, z4, zzaVar2, hashMap, map2);
                    zzaVar2 = zzaVar2;
                    map2 = map2;
                    this.zzg = zzbkgVar;
                } else {
                    z6 = z4;
                }
                if (intent != null) {
                    if (z9 && this.zze != null && zzl(zzaVar2, zzcfbVar.getContext(), intent.getData().toString(), str5)) {
                        if (z7) {
                            hashMap.put((String) map2.get("event_id"), Boolean.TRUE);
                            ((zzbmr) zzaVar2).zzd("openIntentAsync", hashMap);
                            return;
                        }
                        return;
                    }
                    ((zzcgl) zzaVar2).zzaJ(new com.google.android.gms.ads.internal.overlay.zzc(intent, this.zzg), z6, z10, str5);
                    return;
                }
                if (!TextUtils.isEmpty(str)) {
                    str4 = zzd(zzc(zzcfbVar.getContext(), zzcfbVar.zzI(), Uri.parse(str), zzcfbVar.zzF(), zzcfbVar.zzi(), zzcfbVar.zzS())).toString();
                } else {
                    str4 = str;
                }
                if (z9 && this.zze != null && zzl(zzaVar2, zzcfbVar.getContext(), str4, str5)) {
                    if (z7) {
                        hashMap.put((String) map2.get("event_id"), Boolean.TRUE);
                        ((zzbmr) zzaVar2).zzd("openIntentAsync", hashMap);
                        return;
                    }
                    return;
                }
                ((zzcgl) zzaVar2).zzaJ(new com.google.android.gms.ads.internal.overlay.zzc((String) map2.get(CmcdData.Factory.OBJECT_TYPE_INIT_SEGMENT), str4, (String) map2.get("m"), (String) map2.get("p"), (String) map2.get("c"), (String) map2.get("f"), (String) map2.get("e"), this.zzg), z6, z10, str5);
            } else {
                zzj(zzaVar, map2, z, str3, z2, z3);
            }
        }
    }

    private final void zzi(Context context, String str, String str2) {
        zzebt zzebtVar = this.zze;
        zzebtVar.zzc(str);
        zzdsd zzdsdVar = this.zzb;
        if (zzdsdVar != null) {
            zzece.zzp(context, zzdsdVar, zzebtVar, str, "dialog_not_shown", zzfyf.zze("dialog_not_shown_reason", str2));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0105, code lost:
        if (com.google.android.gms.internal.ads.zzbkh.zzc(r13, r8, r9, r10, r11) == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0152, code lost:
        r15 = r19;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzj(com.google.android.gms.ads.internal.client.zza r22, java.util.Map r23, boolean r24, java.lang.String r25, boolean r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbki.zzj(com.google.android.gms.ads.internal.client.zza, java.util.Map, boolean, java.lang.String, boolean, boolean):void");
    }

    private final void zzk(boolean z) {
        zzbsj zzbsjVar = this.zzd;
        if (zzbsjVar != null) {
            zzbsjVar.zzb(z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x005e, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbcv.zziO)).booleanValue() != false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c8, code lost:
        if (r4 != false) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzl(com.google.android.gms.ads.internal.client.zza r9, android.content.Context r10, java.lang.String r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbki.zzl(com.google.android.gms.ads.internal.client.zza, android.content.Context, java.lang.String, java.lang.String):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzm(int i) {
        zzdsd zzdsdVar;
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeP)).booleanValue() && (zzdsdVar = this.zzb) != null) {
            zzdsc zza = zzdsdVar.zza();
            zza.zzb("action", "cct_action");
            switch (i) {
                case 2:
                    str = "CONTEXT_NOT_AN_ACTIVITY";
                    break;
                case 3:
                    str = "CONTEXT_NULL";
                    break;
                case 4:
                    str = "CCT_NOT_SUPPORTED";
                    break;
                case 5:
                    str = "CCT_READY_TO_OPEN";
                    break;
                case 6:
                    str = "ACTIVITY_NOT_FOUND";
                    break;
                case 7:
                    str = "EMPTY_URL";
                    break;
                case 8:
                    str = "UNKNOWN";
                    break;
                case 9:
                    str = "WRONG_EXP_SETUP";
                    break;
                default:
                    str = "OPT_OUT";
                    break;
            }
            zza.zzb("cct_open_status", str);
            zza.zzj();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        ListenableFuture zzh;
        zzcmn zzcmnVar;
        com.google.android.gms.ads.internal.client.zza zzaVar = (com.google.android.gms.ads.internal.client.zza) obj;
        String str = (String) map.get("u");
        Map hashMap = new HashMap();
        zzcfb zzcfbVar = (zzcfb) zzaVar;
        if (zzcfbVar.zzD() != null) {
            hashMap = zzcfbVar.zzD().zzaw;
        }
        String zzc = zzbyl.zzc(str, zzcfbVar.getContext(), true, hashMap);
        String str2 = (String) map.get("a");
        if (str2 == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Action missing from an open GMSG.");
            return;
        }
        com.google.android.gms.ads.internal.zzb zzbVar = this.zza;
        if (zzbVar != null && !zzbVar.zzc()) {
            zzbVar.zzb(zzc);
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkp)).booleanValue() && (zzcmnVar = this.zzf) != null && zzcmn.zzj(zzc)) {
            zzh = zzcmnVar.zze(zzc, com.google.android.gms.ads.internal.client.zzbb.zze());
        } else {
            zzh = zzgcy.zzh(zzc);
        }
        zzgcy.zzr(zzh, new zzbke(this, map, zzaVar, str2), this.zzh);
    }
}
