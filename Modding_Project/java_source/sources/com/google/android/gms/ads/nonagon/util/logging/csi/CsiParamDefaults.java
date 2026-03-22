package com.google.android.gms.ads.nonagon.util.logging.csi;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzbcm;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzfvt;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mbridge.msdk.MBridgeConstans;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class CsiParamDefaults {
    private final Context zza;
    private final String zzb;
    private final String zzc;

    public CsiParamDefaults(@NonNull Context context, @NonNull VersionInfoParcel versionInfoParcel) {
        this.zza = context;
        this.zzb = context.getPackageName();
        this.zzc = versionInfoParcel.afmaVersion;
    }

    public void set(@NonNull Map<String, String> map) {
        String str;
        map.put(CmcdData.Factory.STREAMING_FORMAT_SS, "gmob_sdk");
        map.put("v", "3");
        map.put("os", Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        zzv.zzr();
        map.put("device", zzs.zzs());
        map.put(MBridgeConstans.DYNAMIC_VIEW_WX_APP, this.zzb);
        zzv.zzr();
        Context context = this.zza;
        String str2 = "1";
        if (true == zzs.zzF(context)) {
            str = "1";
        } else {
            str = "0";
        }
        map.put("is_lite_sdk", str);
        zzbcm zzbcmVar = zzbcv.zza;
        List zzb = zzbd.zza().zzb();
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzgZ)).booleanValue()) {
            zzb.addAll(zzv.zzp().zzi().zzg().zzd());
        }
        map.put("e", TextUtils.join(",", zzb));
        map.put(RemoteConfigConstants.RequestFieldKey.SDK_VERSION, this.zzc);
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzlE)).booleanValue()) {
            zzv.zzr();
            if (true != zzs.zzC(context)) {
                str2 = "0";
            }
            map.put("is_bstar", str2);
        }
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzjI)).booleanValue()) {
            if (((Boolean) zzbd.zzc().zzb(zzbcv.zzcC)).booleanValue()) {
                map.put("plugin", zzfvt.zzc(zzv.zzp().zzn()));
            }
        }
    }
}
