package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Predicate;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public interface zzcfb extends com.google.android.gms.ads.internal.client.zza, zzddy, zzces, zzbmr, zzcge, zzcgi, zzbnd, zzayu, zzcgl, com.google.android.gms.ads.internal.zzn, zzcgo, zzcgp, zzcbw, zzcgq {
    boolean canGoBack();

    void destroy();

    @Override // com.google.android.gms.internal.ads.zzcgi, com.google.android.gms.internal.ads.zzcbw
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    int getMeasuredHeight();

    int getMeasuredWidth();

    ViewParent getParent();

    int getWidth();

    void goBack();

    boolean isAttachedToWindow();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void measure(int i, int i2);

    void onPause();

    void onResume();

    @Override // com.google.android.gms.internal.ads.zzcbw
    void setBackgroundColor(int i);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    @Override // com.google.android.gms.internal.ads.zzcbw
    void zzC(zzcgd zzcgdVar);

    @Override // com.google.android.gms.internal.ads.zzces
    zzfbu zzD();

    Context zzE();

    @Override // com.google.android.gms.internal.ads.zzcgq
    View zzF();

    WebView zzG();

    WebViewClient zzH();

    @Override // com.google.android.gms.internal.ads.zzcgo
    zzavl zzI();

    zzbah zzJ();

    zzbfu zzK();

    com.google.android.gms.ads.internal.overlay.zzm zzL();

    com.google.android.gms.ads.internal.overlay.zzm zzM();

    zzcgt zzN();

    @Override // com.google.android.gms.internal.ads.zzcgn
    zzcgv zzO();

    zzecy zzP();

    zzeda zzQ();

    @Override // com.google.android.gms.internal.ads.zzcge
    zzfbx zzR();

    zzfct zzS();

    ListenableFuture zzT();

    String zzU();

    List zzV();

    void zzW(zzfbu zzfbuVar, zzfbx zzfbxVar);

    void zzX();

    void zzY();

    void zzZ(int i);

    void zzaA(String str, Predicate predicate);

    boolean zzaB();

    boolean zzaC();

    boolean zzaD(boolean z, int i);

    boolean zzaE();

    boolean zzaF();

    boolean zzaG();

    boolean zzaH();

    void zzaa();

    void zzab();

    void zzac(boolean z);

    void zzad();

    void zzae(String str, String str2, String str3);

    void zzaf();

    void zzag(String str, zzbjw zzbjwVar);

    void zzah();

    void zzai(com.google.android.gms.ads.internal.overlay.zzm zzmVar);

    void zzaj(zzcgv zzcgvVar);

    void zzak(zzbah zzbahVar);

    void zzal(boolean z);

    void zzam();

    void zzan(Context context);

    void zzao(boolean z);

    void zzap(zzbfs zzbfsVar);

    void zzaq(boolean z);

    void zzar(zzbfu zzbfuVar);

    void zzas(zzecy zzecyVar);

    void zzat(zzeda zzedaVar);

    void zzau(int i);

    void zzav(boolean z);

    void zzaw(com.google.android.gms.ads.internal.overlay.zzm zzmVar);

    void zzax(boolean z);

    void zzay(boolean z);

    void zzaz(String str, zzbjw zzbjwVar);

    @Override // com.google.android.gms.internal.ads.zzcgi, com.google.android.gms.internal.ads.zzcbw
    Activity zzi();

    @Override // com.google.android.gms.internal.ads.zzcbw
    com.google.android.gms.ads.internal.zza zzj();

    @Override // com.google.android.gms.internal.ads.zzcbw
    zzbdi zzl();

    @Override // com.google.android.gms.internal.ads.zzcgp, com.google.android.gms.internal.ads.zzcbw
    VersionInfoParcel zzm();

    @Override // com.google.android.gms.internal.ads.zzcbw
    zzcgd zzq();

    @Override // com.google.android.gms.internal.ads.zzcbw
    void zzt(String str, zzcdi zzcdiVar);
}
