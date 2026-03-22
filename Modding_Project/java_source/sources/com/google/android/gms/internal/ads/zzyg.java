package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.MimeTypes;
import j$.util.Objects;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@RequiresApi(32)
/* loaded from: classes4.dex */
public final class zzyg {
    @Nullable
    private final Spatializer zza;
    private final boolean zzb;
    @Nullable
    private final Handler zzc;
    @Nullable
    private final Spatializer$OnSpatializerStateChangedListener zzd;

    public zzyg(@Nullable Context context, zzyo zzyoVar) {
        AudioManager zzc;
        Spatializer spatializer;
        int immersiveAudioLevel;
        if (context == null) {
            zzc = null;
        } else {
            zzc = zzcj.zzc(context);
        }
        if (zzc != null && !zzeu.zzN(context)) {
            spatializer = zzc.getSpatializer();
            this.zza = spatializer;
            immersiveAudioLevel = spatializer.getImmersiveAudioLevel();
            this.zzb = immersiveAudioLevel != 0;
            zzyf zzyfVar = new zzyf(this, zzyoVar);
            this.zzd = zzyfVar;
            Looper myLooper = Looper.myLooper();
            zzdc.zzb(myLooper);
            final Handler handler = new Handler(myLooper);
            this.zzc = handler;
            Objects.requireNonNull(handler);
            spatializer.addOnSpatializerStateChangedListener(new Executor() { // from class: com.google.android.gms.internal.ads.zzye
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    handler.post(runnable);
                }
            }, zzyfVar);
            return;
        }
        this.zza = null;
        this.zzb = false;
        this.zzc = null;
        this.zzd = null;
    }

    public final void zza() {
        Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener;
        Handler handler;
        Spatializer spatializer = this.zza;
        if (spatializer != null && (spatializer$OnSpatializerStateChangedListener = this.zzd) != null && (handler = this.zzc) != null) {
            spatializer.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
            handler.removeCallbacksAndMessages(null);
        }
    }

    public final boolean zzb(zze zzeVar, zzz zzzVar) {
        int i;
        boolean canBeSpatialized;
        String str = zzzVar.zzo;
        if (Objects.equals(str, "audio/eac3-joc")) {
            i = zzzVar.zzE;
            if (i == 16) {
                i = 12;
            }
        } else if (Objects.equals(str, "audio/iamf")) {
            i = zzzVar.zzE;
            if (i == -1) {
                i = 6;
            }
        } else if (Objects.equals(str, MimeTypes.AUDIO_AC4)) {
            i = zzzVar.zzE;
            if (i == 18 || i == 21) {
                i = 24;
            }
        } else {
            i = zzzVar.zzE;
        }
        int zzi = zzeu.zzi(i);
        if (zzi == 0) {
            return false;
        }
        AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(zzi);
        int i2 = zzzVar.zzF;
        if (i2 != -1) {
            channelMask.setSampleRate(i2);
        }
        Spatializer spatializer = this.zza;
        spatializer.getClass();
        canBeSpatialized = Wwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(spatializer).canBeSpatialized(zzeVar.zza().zza, channelMask.build());
        return canBeSpatialized;
    }

    public final boolean zzc() {
        boolean isAvailable;
        Spatializer spatializer = this.zza;
        spatializer.getClass();
        isAvailable = Wwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(spatializer).isAvailable();
        return isAvailable;
    }

    public final boolean zzd() {
        boolean isEnabled;
        Spatializer spatializer = this.zza;
        spatializer.getClass();
        isEnabled = Wwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(spatializer).isEnabled();
        return isEnabled;
    }

    public final boolean zze() {
        return this.zzb;
    }
}
