package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzegj implements zzedf {
    private static Bundle zzd(Bundle bundle) {
        if (bundle == null) {
            return new Bundle();
        }
        return new Bundle(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final ListenableFuture zza(zzfcg zzfcgVar, zzfbu zzfbuVar) {
        JSONObject jSONObject = zzfbuVar.zzv;
        String optString = jSONObject.optString("pubid", "");
        zzfcp zzfcpVar = zzfcgVar.zza.zza;
        zzfcn zzfcnVar = new zzfcn();
        zzfcnVar.zzq(zzfcpVar);
        zzfcnVar.zzt(optString);
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzfcpVar.zzd;
        Bundle zzd = zzd(zzmVar.zzm);
        Bundle zzd2 = zzd(zzd.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        zzd2.putInt("gw", 1);
        String optString2 = jSONObject.optString("mad_hac", null);
        if (optString2 != null) {
            zzd2.putString("mad_hac", optString2);
        }
        String optString3 = jSONObject.optString("adJson", null);
        if (optString3 != null) {
            zzd2.putString("_ad", optString3);
        }
        zzd2.putBoolean("_noRefresh", true);
        JSONObject jSONObject2 = zzfbuVar.zzD;
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = jSONObject2.optString(next, null);
            if (next != null) {
                zzd2.putString(next, optString4);
            }
        }
        zzd.putBundle("com.google.ads.mediation.admob.AdMobAdapter", zzd2);
        zzfcnVar.zzH(new com.google.android.gms.ads.internal.client.zzm(zzmVar.zza, zzmVar.zzb, zzd2, zzmVar.zzd, zzmVar.zze, zzmVar.zzf, zzmVar.zzg, zzmVar.zzh, zzmVar.zzi, zzmVar.zzj, zzmVar.zzk, zzmVar.zzl, zzd, zzmVar.zzn, zzmVar.zzo, zzmVar.zzp, zzmVar.zzq, zzmVar.zzr, zzmVar.zzs, zzmVar.zzt, zzmVar.zzu, zzmVar.zzv, zzmVar.zzw, zzmVar.zzx, zzmVar.zzy, zzmVar.zzz));
        zzfcp zzJ = zzfcnVar.zzJ();
        Bundle bundle = new Bundle();
        zzfbx zzfbxVar = zzfcgVar.zzb.zzb;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(zzfbxVar.zza));
        bundle2.putInt("refresh_interval", zzfbxVar.zzc);
        bundle2.putString("gws_query_id", zzfbxVar.zzb);
        bundle.putBundle("parent_common_config", bundle2);
        String str = zzfcpVar.zzf;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        bundle3.putString("allocation_id", zzfbuVar.zzw);
        bundle3.putString("ad_source_name", zzfbuVar.zzF);
        bundle3.putStringArrayList("click_urls", new ArrayList<>(zzfbuVar.zzc));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(zzfbuVar.zzd));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(zzfbuVar.zzp));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(zzfbuVar.zzm));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(zzfbuVar.zzg));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(zzfbuVar.zzh));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(zzfbuVar.zzi));
        bundle3.putString("transaction_id", zzfbuVar.zzj);
        bundle3.putString("valid_from_timestamp", zzfbuVar.zzk);
        bundle3.putBoolean("is_closable_area_disabled", zzfbuVar.zzP);
        bundle3.putString("recursive_server_response_data", zzfbuVar.zzao);
        bundle3.putBoolean("is_analytics_logging_enabled", zzfbuVar.zzW);
        zzbwj zzbwjVar = zzfbuVar.zzl;
        if (zzbwjVar != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", zzbwjVar.zzb);
            bundle4.putString("rb_type", zzbwjVar.zza);
            bundle3.putParcelableArray("rewards", new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return zzc(zzJ, bundle, zzfbuVar, zzfcgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final boolean zzb(zzfcg zzfcgVar, zzfbu zzfbuVar) {
        if (!TextUtils.isEmpty(zzfbuVar.zzv.optString("pubid", ""))) {
            return true;
        }
        return false;
    }

    public abstract ListenableFuture zzc(zzfcp zzfcpVar, Bundle bundle, zzfbu zzfbuVar, zzfcg zzfcgVar);
}
