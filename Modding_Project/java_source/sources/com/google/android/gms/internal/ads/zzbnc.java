package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Predicate;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzbnc implements zzbmu, zzbmt {
    private final zzcfb zza;

    public zzbnc(Context context, VersionInfoParcel versionInfoParcel, @Nullable zzavl zzavlVar, com.google.android.gms.ads.internal.zza zzaVar) throws zzcfn {
        com.google.android.gms.ads.internal.zzv.zzB();
        zzcfb zza = zzcfo.zza(context, zzcgv.zza(), "", false, false, null, null, versionInfoParcel, null, null, null, zzbbt.zza(), null, null, null, null, null);
        this.zza = zza;
        zza.zzF().setWillNotDraw(true);
    }

    private static final void zzs(Runnable runnable) {
        com.google.android.gms.ads.internal.client.zzbb.zzb();
        if (com.google.android.gms.ads.internal.util.client.zzf.zzv()) {
            com.google.android.gms.ads.internal.util.zze.zza("runOnUiThread > the UI thread is the main thread, the runnable will be run now");
            runnable.run();
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza("runOnUiThread > the UI thread is not the main thread, the runnable will be added to the message queue");
        if (!com.google.android.gms.ads.internal.util.zzs.zza.post(runnable)) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("runOnUiThread > the runnable could not be placed to the message queue");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnd
    public final void zza(final String str) {
        com.google.android.gms.ads.internal.util.zze.zza("invokeJavascript on adWebView from js");
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbmy
            @Override // java.lang.Runnable
            public final void run() {
                zzbnc.this.zza.zza(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbnd
    public final /* synthetic */ void zzb(String str, String str2) {
        zzbms.zzc(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbmu
    public final void zzc() {
        this.zza.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzbmr
    public final /* synthetic */ void zzd(String str, Map map) {
        zzbms.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbmr
    public final /* synthetic */ void zze(String str, JSONObject jSONObject) {
        zzbms.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbmu
    public final void zzf(final String str) {
        com.google.android.gms.ads.internal.util.zze.zza("loadHtml on adWebView from html");
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbmz
            @Override // java.lang.Runnable
            public final void run() {
                zzbnc.this.zza.loadData(str, "text/html", "UTF-8");
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbmu
    public final void zzg(final String str) {
        com.google.android.gms.ads.internal.util.zze.zza("loadHtmlWrapper on adWebView from path: ".concat(String.valueOf(str)));
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbmw
            @Override // java.lang.Runnable
            public final void run() {
                zzbnc.this.zza.loadUrl(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbmu
    public final void zzh(String str) {
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascript on adWebView from path: ".concat(String.valueOf(str)));
        final String format = String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str);
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbna
            @Override // java.lang.Runnable
            public final void run() {
                zzbnc.this.zza.loadData(format, "text/html", "UTF-8");
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbmu
    public final boolean zzi() {
        return this.zza.zzaE();
    }

    @Override // com.google.android.gms.internal.ads.zzbmu
    public final zzbob zzj() {
        return new zzbob(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbmu
    public final void zzk(final zzbnf zzbnfVar) {
        zzcgt zzN = this.zza.zzN();
        Objects.requireNonNull(zzbnfVar);
        zzN.zzK(new zzcgs() { // from class: com.google.android.gms.internal.ads.zzbmx
            @Override // com.google.android.gms.internal.ads.zzcgs
            public final void zza() {
                long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
                zzbnf zzbnfVar2 = zzbnf.this;
                final long j = zzbnfVar2.zzc;
                final ArrayList arrayList = zzbnfVar2.zzb;
                arrayList.add(Long.valueOf(currentTimeMillis - j));
                String valueOf = String.valueOf(arrayList.get(0));
                com.google.android.gms.ads.internal.util.zze.zza("LoadNewJavascriptEngine(onEngLoaded) latency is " + valueOf + " ms.");
                zzfrl zzfrlVar = com.google.android.gms.ads.internal.util.zzs.zza;
                final zzbnz zzbnzVar = zzbnfVar2.zza;
                final zzbny zzbnyVar = zzbnfVar2.zzd;
                final zzbmu zzbmuVar = zzbnfVar2.zze;
                zzfrlVar.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbng
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbnz.zzi(zzbnz.this, zzbnyVar, zzbmuVar, arrayList, j);
                    }
                }, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzc)).intValue());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbnd
    public final /* synthetic */ void zzp(String str, JSONObject jSONObject) {
        zzbms.zzd(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzboa
    public final void zzq(String str, zzbjw zzbjwVar) {
        this.zza.zzag(str, new zzbnb(this, zzbjwVar));
    }

    @Override // com.google.android.gms.internal.ads.zzboa
    public final void zzr(String str, final zzbjw zzbjwVar) {
        this.zza.zzaA(str, new Predicate() { // from class: com.google.android.gms.internal.ads.zzbmv
            @Override // com.google.android.gms.common.util.Predicate
            public final boolean apply(Object obj) {
                zzbjw zzbjwVar2;
                zzbjw zzbjwVar3 = (zzbjw) obj;
                if (zzbjwVar3 instanceof zzbnb) {
                    zzbjw zzbjwVar4 = zzbjw.this;
                    zzbjwVar2 = ((zzbnb) zzbjwVar3).zzb;
                    if (zzbjwVar2.equals(zzbjwVar4)) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
        });
    }
}
