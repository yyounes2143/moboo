package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzpj {
    private final Context zza;
    private final Handler zzb;
    @Nullable
    private final zzpf zzc;
    private final BroadcastReceiver zzd;
    @Nullable
    private final zzpg zze;
    @Nullable
    private zzpe zzf;
    @Nullable
    private zzpk zzg;
    private zze zzh;
    private boolean zzi;
    private final zzqs zzj;

    public zzpj(Context context, zzqs zzqsVar, zze zzeVar, @Nullable zzpk zzpkVar) {
        Context applicationContext = context.getApplicationContext();
        this.zza = applicationContext;
        this.zzj = zzqsVar;
        this.zzh = zzeVar;
        this.zzg = zzpkVar;
        Handler handler = new Handler(zzeu.zzz(), null);
        this.zzb = handler;
        this.zzc = new zzpf(this, null);
        this.zzd = new zzph(this, null);
        Uri zza = zzpe.zza();
        this.zze = zza != null ? new zzpg(this, handler, applicationContext.getContentResolver(), zza) : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzj(zzpe zzpeVar) {
        if (this.zzi && !zzpeVar.equals(this.zzf)) {
            this.zzf = zzpeVar;
            this.zzj.zza.zzJ(zzpeVar);
        }
    }

    public final zzpe zzc() {
        if (this.zzi) {
            zzpe zzpeVar = this.zzf;
            zzpeVar.getClass();
            return zzpeVar;
        }
        this.zzi = true;
        zzpg zzpgVar = this.zze;
        if (zzpgVar != null) {
            zzpgVar.zza();
        }
        zzpf zzpfVar = this.zzc;
        if (zzpfVar != null) {
            Context context = this.zza;
            zzcj.zzc(context).registerAudioDeviceCallback(zzpfVar, this.zzb);
        }
        Context context2 = this.zza;
        zzpe zzd = zzpe.zzd(context2, context2.registerReceiver(this.zzd, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, this.zzb), this.zzh, this.zzg);
        this.zzf = zzd;
        return zzd;
    }

    public final void zzg(zze zzeVar) {
        this.zzh = zzeVar;
        zzj(zzpe.zzc(this.zza, zzeVar, this.zzg));
    }

    @RequiresApi(23)
    public final void zzh(@Nullable AudioDeviceInfo audioDeviceInfo) {
        AudioDeviceInfo audioDeviceInfo2;
        zzpk zzpkVar = this.zzg;
        zzpk zzpkVar2 = null;
        if (zzpkVar == null) {
            audioDeviceInfo2 = null;
        } else {
            audioDeviceInfo2 = zzpkVar.zza;
        }
        if (Objects.equals(audioDeviceInfo, audioDeviceInfo2)) {
            return;
        }
        if (audioDeviceInfo != null) {
            zzpkVar2 = new zzpk(audioDeviceInfo);
        }
        this.zzg = zzpkVar2;
        zzj(zzpe.zzc(this.zza, this.zzh, zzpkVar2));
    }

    public final void zzi() {
        if (!this.zzi) {
            return;
        }
        this.zzf = null;
        zzpf zzpfVar = this.zzc;
        if (zzpfVar != null) {
            zzcj.zzc(this.zza).unregisterAudioDeviceCallback(zzpfVar);
        }
        this.zza.unregisterReceiver(this.zzd);
        zzpg zzpgVar = this.zze;
        if (zzpgVar != null) {
            zzpgVar.zzb();
        }
        this.zzi = false;
    }
}
