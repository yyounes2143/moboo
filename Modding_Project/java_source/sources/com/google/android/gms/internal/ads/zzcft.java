package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Predicate;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcft extends FrameLayout implements zzcfb {
    private final zzcfb zza;
    private final zzcbl zzb;
    private final AtomicBoolean zzc;

    public zzcft(zzcfb zzcfbVar, @Nullable zzdsd zzdsdVar) {
        super(zzcfbVar.getContext());
        this.zzc = new AtomicBoolean();
        this.zza = zzcfbVar;
        this.zzb = new zzcbl(zzcfbVar.zzE(), this, this, zzdsdVar);
        addView((View) zzcfbVar);
    }

    public static /* synthetic */ void zzaI(zzcft zzcftVar, boolean z) {
        zzcfb zzcfbVar = zzcftVar.zza;
        zzfrl zzfrlVar = com.google.android.gms.ads.internal.util.zzs.zza;
        Objects.requireNonNull(zzcfbVar);
        zzfrlVar.post(new zzcfp(zzcfbVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final boolean canGoBack() {
        return this.zza.canGoBack();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void destroy() {
        final zzecy zzP;
        final zzeda zzQ = zzQ();
        if (zzQ != null) {
            zzfrl zzfrlVar = com.google.android.gms.ads.internal.util.zzs.zza;
            zzfrlVar.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfq
                @Override // java.lang.Runnable
                public final void run() {
                    com.google.android.gms.ads.internal.zzv.zzC().zzi(zzeda.this.zza());
                }
            });
            zzcfb zzcfbVar = this.zza;
            Objects.requireNonNull(zzcfbVar);
            zzfrlVar.postDelayed(new zzcfp(zzcfbVar), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfx)).intValue());
        } else if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfz)).booleanValue() && (zzP = zzP()) != null) {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfr
                @Override // java.lang.Runnable
                public final void run() {
                    zzP.zzf(new zzcfs(zzcft.this));
                }
            });
        } else {
            this.zza.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void goBack() {
        this.zza.goBack();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void loadData(String str, String str2, String str3) {
        this.zza.loadData(str, "text/html", str3);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.zza.loadDataWithBaseURL(str, str2, "text/html", "UTF-8", null);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void loadUrl(String str) {
        this.zza.loadUrl(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        zzcfb zzcfbVar = this.zza;
        if (zzcfbVar != null) {
            zzcfbVar.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void onPause() {
        this.zzb.zzf();
        this.zza.onPause();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void onResume() {
        this.zza.onResume();
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcfb
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.zza.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcfb
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.zza.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.zza.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.zza.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzA(int i) {
        this.zza.zzA(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzB(int i) {
        this.zzb.zzg(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb, com.google.android.gms.internal.ads.zzcbw
    public final void zzC(zzcgd zzcgdVar) {
        this.zza.zzC(zzcgdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb, com.google.android.gms.internal.ads.zzces
    public final zzfbu zzD() {
        return this.zza.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final Context zzE() {
        return this.zza.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final WebView zzG() {
        return (WebView) this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final WebViewClient zzH() {
        return this.zza.zzH();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb, com.google.android.gms.internal.ads.zzcgo
    public final zzavl zzI() {
        return this.zza.zzI();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final zzbah zzJ() {
        return this.zza.zzJ();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    @Nullable
    public final zzbfu zzK() {
        return this.zza.zzK();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final com.google.android.gms.ads.internal.overlay.zzm zzL() {
        return this.zza.zzL();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final com.google.android.gms.ads.internal.overlay.zzm zzM() {
        return this.zza.zzM();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final zzcgt zzN() {
        return ((zzcga) this.zza).zzaO();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb, com.google.android.gms.internal.ads.zzcgn
    public final zzcgv zzO() {
        return this.zza.zzO();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final zzecy zzP() {
        return this.zza.zzP();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final zzeda zzQ() {
        return this.zza.zzQ();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb, com.google.android.gms.internal.ads.zzcge
    public final zzfbx zzR() {
        return this.zza.zzR();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final zzfct zzS() {
        return this.zza.zzS();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final ListenableFuture zzT() {
        return this.zza.zzT();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final String zzU() {
        return this.zza.zzU();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final List zzV() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt != this.zza) {
                arrayList.add(childAt);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzW(zzfbu zzfbuVar, zzfbx zzfbxVar) {
        this.zza.zzW(zzfbuVar, zzfbxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzX() {
        this.zzb.zze();
        this.zza.zzX();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzY() {
        this.zza.zzY();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzZ(int i) {
        this.zza.zzZ(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbnd
    public final void zza(String str) {
        ((zzcga) this.zza).zzaW(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzaA(String str, Predicate predicate) {
        this.zza.zzaA(str, predicate);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final boolean zzaB() {
        return this.zza.zzaB();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final boolean zzaC() {
        return this.zza.zzaC();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final boolean zzaD(boolean z, int i) {
        if (!this.zzc.compareAndSet(false, true)) {
            return true;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzba)).booleanValue()) {
            return false;
        }
        zzcfb zzcfbVar = this.zza;
        if (zzcfbVar.getParent() instanceof ViewGroup) {
            ((ViewGroup) zzcfbVar.getParent()).removeView((View) zzcfbVar);
        }
        zzcfbVar.zzaD(z, i);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final boolean zzaE() {
        return this.zza.zzaE();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final boolean zzaF() {
        return this.zza.zzaF();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final boolean zzaG() {
        return this.zzc.get();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final boolean zzaH() {
        return this.zza.zzaH();
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final void zzaJ(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z, boolean z2, String str) {
        this.zza.zzaJ(zzcVar, z, z2, str);
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final void zzaK(String str, String str2, int i) {
        this.zza.zzaK(str, str2, 14);
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final void zzaL(boolean z, int i, boolean z2) {
        this.zza.zzaL(z, i, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final void zzaM(boolean z, int i, String str, String str2, boolean z2) {
        this.zza.zzaM(z, i, str, str2, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final void zzaN(boolean z, int i, String str, boolean z2, boolean z3) {
        this.zza.zzaN(z, i, str, z2, z3);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzaa() {
        this.zza.zzaa();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzab() {
        this.zza.zzab();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzac(boolean z) {
        this.zza.zzac(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzad() {
        this.zza.zzad();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzae(String str, String str2, @Nullable String str3) {
        this.zza.zzae(str, str2, null);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzaf() {
        this.zza.zzaf();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzag(String str, zzbjw zzbjwVar) {
        this.zza.zzag(str, zzbjwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzah() {
        zzeda zzQ;
        zzecy zzP;
        TextView textView = new TextView(getContext());
        com.google.android.gms.ads.internal.zzv.zzr();
        textView.setText(com.google.android.gms.ads.internal.util.zzs.zzz());
        textView.setTextSize(15.0f);
        textView.setTextColor(-1);
        textView.setPadding(5, 0, 5, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-12303292);
        gradientDrawable.setCornerRadius(8.0f);
        textView.setBackground(gradientDrawable);
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 49));
        bringChildToFront(textView);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfz)).booleanValue() && (zzP = zzP()) != null) {
            zzP.zza(textView);
        } else if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfy)).booleanValue() && (zzQ = zzQ()) != null && zzQ.zzb()) {
            com.google.android.gms.ads.internal.zzv.zzC().zzg(zzQ.zza(), textView);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzai(com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        this.zza.zzai(zzmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzaj(zzcgv zzcgvVar) {
        this.zza.zzaj(zzcgvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzak(zzbah zzbahVar) {
        this.zza.zzak(zzbahVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzal(boolean z) {
        this.zza.zzal(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzam() {
        setBackgroundColor(0);
        this.zza.setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzan(Context context) {
        this.zza.zzan(context);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzao(boolean z) {
        this.zza.zzao(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzap(zzbfs zzbfsVar) {
        this.zza.zzap(zzbfsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzaq(boolean z) {
        this.zza.zzaq(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzar(@Nullable zzbfu zzbfuVar) {
        this.zza.zzar(zzbfuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzas(@Nullable zzecy zzecyVar) {
        this.zza.zzas(zzecyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzat(zzeda zzedaVar) {
        this.zza.zzat(zzedaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzau(int i) {
        this.zza.zzau(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzav(boolean z) {
        this.zza.zzav(true);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzaw(com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        this.zza.zzaw(zzmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzax(boolean z) {
        this.zza.zzax(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzay(boolean z) {
        this.zza.zzay(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final void zzaz(String str, zzbjw zzbjwVar) {
        this.zza.zzaz(str, zzbjwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbnd
    public final void zzb(String str, String str2) {
        this.zza.zzb("window.inspectorInfo", str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbmr
    public final void zzd(String str, Map map) {
        this.zza.zzd(str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzddy
    public final void zzdf() {
        zzcfb zzcfbVar = this.zza;
        if (zzcfbVar != null) {
            zzcfbVar.zzdf();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzn
    public final void zzdg() {
        this.zza.zzdg();
    }

    @Override // com.google.android.gms.ads.internal.zzn
    public final void zzdh() {
        this.zza.zzdh();
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzdi() {
        this.zza.zzdi();
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void zzdr(zzayt zzaytVar) {
        this.zza.zzdr(zzaytVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbmr
    public final void zze(String str, JSONObject jSONObject) {
        this.zza.zze(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final int zzf() {
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final int zzg() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeg)).booleanValue()) {
            return this.zza.getMeasuredHeight();
        }
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final int zzh() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeg)).booleanValue()) {
            return this.zza.getMeasuredWidth();
        }
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb, com.google.android.gms.internal.ads.zzcgi, com.google.android.gms.internal.ads.zzcbw
    @Nullable
    public final Activity zzi() {
        return this.zza.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb, com.google.android.gms.internal.ads.zzcbw
    public final com.google.android.gms.ads.internal.zza zzj() {
        return this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final zzbdh zzk() {
        return this.zza.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb, com.google.android.gms.internal.ads.zzcbw
    public final zzbdi zzl() {
        return this.zza.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb, com.google.android.gms.internal.ads.zzcgp, com.google.android.gms.internal.ads.zzcbw
    public final VersionInfoParcel zzm() {
        return this.zza.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final zzcbl zzn() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final zzcdi zzo(String str) {
        return this.zza.zzo(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbnd
    public final void zzp(String str, JSONObject jSONObject) {
        ((zzcga) this.zza).zzb(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcfb, com.google.android.gms.internal.ads.zzcbw
    public final zzcgd zzq() {
        return this.zza.zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final String zzr() {
        return this.zza.zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final String zzs() {
        return this.zza.zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb, com.google.android.gms.internal.ads.zzcbw
    public final void zzt(String str, zzcdi zzcdiVar) {
        this.zza.zzt(str, zzcdiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzddy
    public final void zzu() {
        zzcfb zzcfbVar = this.zza;
        if (zzcfbVar != null) {
            zzcfbVar.zzu();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzv(boolean z, long j) {
        this.zza.zzv(z, j);
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzw() {
        this.zza.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzz(boolean z) {
        this.zza.zzz(false);
    }

    @Override // com.google.android.gms.internal.ads.zzcfb, com.google.android.gms.internal.ads.zzcgq
    public final View zzF() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzx(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzy(int i) {
    }
}
