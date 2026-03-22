package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public interface zzecv {
    @Nullable
    zzeda zza(String str, WebView webView, String str2, String str3, @Nullable String str4, zzecx zzecxVar, zzecw zzecwVar, @Nullable String str5);

    @Nullable
    zzeda zzb(String str, WebView webView, String str2, String str3, @Nullable String str4, String str5, zzecx zzecxVar, zzecw zzecwVar, @Nullable String str6);

    @Nullable
    zzflm zze(VersionInfoParcel versionInfoParcel, WebView webView, boolean z);

    @Nullable
    String zzf(Context context);

    void zzg(zzflb zzflbVar, View view);

    void zzh(zzflm zzflmVar, View view);

    void zzi(zzflb zzflbVar);

    void zzj(zzflb zzflbVar, View view);

    void zzk(zzflb zzflbVar);

    boolean zzl(Context context);

    void zzm(zzflm zzflmVar, zzcfs zzcfsVar);
}
