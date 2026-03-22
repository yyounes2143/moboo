package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzcaa;
import com.google.android.gms.internal.ads.zzdrx;
import com.google.android.gms.internal.ads.zzdsi;
import com.google.android.gms.internal.ads.zzfcg;
import com.google.android.gms.internal.ads.zzfcp;
import com.google.android.gms.internal.ads.zzfhs;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaa {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static zzfhs zza(Bundle bundle) {
        char c;
        Bundle bundle2 = bundle.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle2 != null) {
            bundle = bundle2;
        }
        String string = bundle.getString("query_info_type");
        if (TextUtils.isEmpty(string)) {
            return zzfhs.SCAR_REQUEST_TYPE_UNSPECIFIED;
        }
        switch (string.hashCode()) {
            case 1743582862:
                if (string.equals("requester_type_0")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1743582863:
                if (string.equals("requester_type_1")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1743582864:
                if (string.equals("requester_type_2")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1743582865:
                if (string.equals("requester_type_3")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1743582866:
                if (string.equals("requester_type_4")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1743582867:
                if (string.equals("requester_type_5")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1743582868:
                if (string.equals("requester_type_6")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1743582869:
                if (string.equals("requester_type_7")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 1743582870:
                if (string.equals("requester_type_8")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return zzfhs.SCAR_REQUEST_TYPE_ADMOB;
            case 1:
                return zzfhs.SCAR_REQUEST_TYPE_INBOUND_MEDIATION;
            case 2:
                return zzfhs.SCAR_REQUEST_TYPE_GBID;
            case 3:
                return zzfhs.SCAR_REQUEST_TYPE_GOLDENEYE;
            case 4:
                return zzfhs.SCAR_REQUEST_TYPE_YAVIN;
            case 5:
                return zzfhs.SCAR_REQUEST_TYPE_UNITY;
            case 6:
                return zzfhs.SCAR_REQUEST_TYPE_PAW;
            case 7:
                return zzfhs.SCAR_REQUEST_TYPE_GUILDER;
            case '\b':
                return zzfhs.SCAR_REQUEST_TYPE_GAM_S2S;
            default:
                return zzfhs.SCAR_REQUEST_TYPE_UNSPECIFIED;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String zzb(@Nullable String str) {
        char c;
        if (TextUtils.isEmpty(str)) {
            return "unspecified";
        }
        switch (str.hashCode()) {
            case 1743582862:
                if (str.equals("requester_type_0")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1743582863:
                if (str.equals("requester_type_1")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1743582864:
                if (str.equals("requester_type_2")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1743582865:
                if (str.equals("requester_type_3")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1743582866:
                if (str.equals("requester_type_4")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1743582867:
                if (str.equals("requester_type_5")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1743582868:
                if (str.equals("requester_type_6")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1743582869:
                if (str.equals("requester_type_7")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 1743582870:
                if (str.equals("requester_type_8")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return "0";
            case 1:
                return "1";
            case 2:
                return "2";
            case 3:
                return "3";
            case 4:
                return "4";
            case 5:
                return CampaignEx.CLICKMODE_ON;
            case 6:
                return "6";
            case 7:
                return "7";
            case '\b':
                return "8";
            default:
                return str;
        }
    }

    @Nullable
    public static String zzc(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        Bundle bundle;
        if (zzmVar != null && (bundle = zzmVar.zzc) != null) {
            return bundle.getString("query_info_type");
        }
        return "unspecified";
    }

    public static void zzd(final zzdsi zzdsiVar, @Nullable zzdrx zzdrxVar, final String str, final Pair... pairArr) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhd)).booleanValue()) {
            return;
        }
        zzcaa.zza.execute(new Runnable(null, str, pairArr) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzz
            public final /* synthetic */ String zzb;
            public final /* synthetic */ Pair[] zzc;

            {
                this.zzb = str;
                this.zzc = pairArr;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzaa.zze(zzdsi.this, null, this.zzb, this.zzc);
            }
        });
    }

    @VisibleForTesting
    public static void zze(zzdsi zzdsiVar, @Nullable zzdrx zzdrxVar, String str, Pair... pairArr) {
        ConcurrentHashMap zzc = zzdsiVar.zzc();
        zzh(zzc, "action", str);
        for (Pair pair : pairArr) {
            zzh(zzc, (String) pair.first, (String) pair.second);
        }
        zzdsiVar.zzg(zzc);
    }

    public static boolean zzf(zzfcg zzfcgVar) {
        if (zzg(zzfcgVar.zza.zza) != 1) {
            return true;
        }
        return false;
    }

    public static int zzg(zzfcp zzfcpVar) {
        if (zzfcpVar.zzr) {
            return 2;
        }
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzfcpVar.zzd;
        com.google.android.gms.ads.internal.client.zzc zzcVar = zzmVar.zzs;
        if (zzcVar == null && zzmVar.zzx == null) {
            return 1;
        }
        if (zzcVar != null && zzmVar.zzx != null) {
            return 5;
        }
        if (zzcVar != null) {
            return 3;
        }
        return 4;
    }

    private static void zzh(Map map, String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            map.put(str, str2);
        }
    }
}
