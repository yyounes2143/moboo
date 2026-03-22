package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.telephony.TelephonyManager;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbbt;
import com.google.android.gms.internal.ads.zzbca;
import com.google.android.gms.internal.ads.zzcfb;
import com.google.android.gms.internal.ads.zzcfj;
import com.google.android.gms.internal.ads.zzece;
import java.io.InputStream;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzaa {
    public /* synthetic */ zzaa(zzz zzzVar) {
    }

    @Nullable
    public CookieManager zza(Context context) {
        throw null;
    }

    public WebResourceResponse zzb(String str, String str2, int i, String str3, Map map, InputStream inputStream) {
        throw null;
    }

    public zzcfj zzc(zzcfb zzcfbVar, zzbbt zzbbtVar, boolean z, @Nullable zzece zzeceVar) {
        throw null;
    }

    public boolean zzd(Activity activity, Configuration configuration) {
        return false;
    }

    @Nullable
    public Intent zzf(Activity activity) {
        Intent intent = new Intent();
        intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
        intent.putExtra("app_package", activity.getPackageName());
        intent.putExtra("app_uid", activity.getApplicationInfo().uid);
        return intent;
    }

    public zzbca.zzq zzg(Context context, TelephonyManager telephonyManager) {
        return zzbca.zzq.ENUM_UNKNOWN;
    }

    public boolean zzi(Context context, String str) {
        return false;
    }

    public int zzj(AudioManager audioManager) {
        return 0;
    }

    public int zzm(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getNetworkType();
    }

    public void zzl(Activity activity) {
    }

    public void zzh(Context context, String str, String str2) {
    }
}
