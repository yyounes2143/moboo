package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcnu implements zzayu {
    private zzcfb zza;
    private final Executor zzb;
    private final zzcng zzc;
    private final Clock zzd;
    private boolean zze = false;
    private boolean zzf = false;
    private final zzcnj zzg = new zzcnj();

    public zzcnu(Executor executor, zzcng zzcngVar, Clock clock) {
        this.zzb = executor;
        this.zzc = zzcngVar;
        this.zzd = clock;
    }

    public static /* synthetic */ void zza(zzcnu zzcnuVar, JSONObject jSONObject) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zze("Calling AFMA_updateActiveView(" + jSONObject.toString() + ")");
        zzcnuVar.zza.zzp("AFMA_updateActiveView", jSONObject);
    }

    private final void zzg() {
        try {
            final JSONObject zzb = this.zzc.zzb(this.zzg);
            if (this.zza != null) {
                this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcnt
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcnu.zza(zzcnu.this, zzb);
                    }
                });
            }
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Failed to call video active view js", e);
        }
    }

    public final void zzb() {
        this.zze = false;
    }

    public final void zzd() {
        this.zze = true;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void zzdr(zzayt zzaytVar) {
        boolean z;
        if (this.zzf) {
            z = false;
        } else {
            z = zzaytVar.zzj;
        }
        zzcnj zzcnjVar = this.zzg;
        zzcnjVar.zza = z;
        zzcnjVar.zzd = this.zzd.elapsedRealtime();
        zzcnjVar.zzf = zzaytVar;
        if (this.zze) {
            zzg();
        }
    }

    public final void zze(boolean z) {
        this.zzf = z;
    }

    public final void zzf(zzcfb zzcfbVar) {
        this.zza = zzcfbVar;
    }
}
