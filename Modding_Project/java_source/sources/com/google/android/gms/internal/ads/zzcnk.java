package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcnk implements zzayu, zzcwo, com.google.android.gms.ads.internal.overlay.zzr, zzcwn {
    private final zzcnf zza;
    private final zzcng zzb;
    private final zzboz zzd;
    private final Executor zze;
    private final Clock zzf;
    private final Set zzc = new HashSet();
    private final AtomicBoolean zzg = new AtomicBoolean(false);
    private final zzcnj zzh = new zzcnj();
    private boolean zzi = false;
    private WeakReference zzj = new WeakReference(this);

    public zzcnk(zzbow zzbowVar, zzcng zzcngVar, Executor executor, zzcnf zzcnfVar, Clock clock) {
        this.zza = zzcnfVar;
        zzboh zzbohVar = zzbok.zza;
        this.zzd = zzbowVar.zza("google.afma.activeView.handleUpdate", zzbohVar, zzbohVar);
        this.zzb = zzcngVar;
        this.zze = executor;
        this.zzf = clock;
    }

    private final void zzk() {
        for (zzcfb zzcfbVar : this.zzc) {
            this.zza.zzf(zzcfbVar);
        }
        this.zza.zze();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdH() {
        this.zzh.zzb = false;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final synchronized void zzdj(@Nullable Context context) {
        this.zzh.zze = "u";
        zzg();
        zzk();
        this.zzi = true;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdk() {
        this.zzh.zzb = true;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final synchronized void zzdl(@Nullable Context context) {
        this.zzh.zzb = true;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final synchronized void zzdm(@Nullable Context context) {
        this.zzh.zzb = false;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final synchronized void zzdr(zzayt zzaytVar) {
        zzcnj zzcnjVar = this.zzh;
        zzcnjVar.zza = zzaytVar.zzj;
        zzcnjVar.zzf = zzaytVar;
        zzg();
    }

    public final synchronized void zzg() {
        try {
            if (this.zzj.get() != null) {
                if (!this.zzi && this.zzg.get()) {
                    try {
                        zzcnj zzcnjVar = this.zzh;
                        zzcnjVar.zzd = this.zzf.elapsedRealtime();
                        final JSONObject zzb = this.zzb.zzb(zzcnjVar);
                        for (final zzcfb zzcfbVar : this.zzc) {
                            this.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcni
                                @Override // java.lang.Runnable
                                public final void run() {
                                    JSONObject jSONObject = zzb;
                                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                                    com.google.android.gms.ads.internal.util.client.zzo.zze("Calling AFMA_updateActiveView(" + jSONObject.toString() + ")");
                                    zzcfbVar.zzp("AFMA_updateActiveView", jSONObject);
                                }
                            });
                        }
                        zzcad.zzb(this.zzd.zzc(zzb), "ActiveViewListener.callActiveViewJs");
                        return;
                    } catch (Exception e) {
                        com.google.android.gms.ads.internal.util.zze.zzb("Failed to call ActiveViewJS", e);
                        return;
                    }
                }
                return;
            }
            zzj();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzh(zzcfb zzcfbVar) {
        this.zzc.add(zzcfbVar);
        this.zza.zzd(zzcfbVar);
    }

    public final void zzi(Object obj) {
        this.zzj = new WeakReference(obj);
    }

    public final synchronized void zzj() {
        zzk();
        this.zzi = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final synchronized void zzs() {
        if (this.zzg.compareAndSet(false, true)) {
            this.zza.zzc(this);
            zzg();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzds() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdt() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdv() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdw(int i) {
    }
}
