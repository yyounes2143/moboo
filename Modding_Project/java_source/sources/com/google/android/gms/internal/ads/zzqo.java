package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.os.Build;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzqo {
    @Nullable
    private final Context zza;
    private Boolean zzb;

    public zzqo() {
        this(null);
    }

    public final zzpn zza(zzz zzzVar, zze zzeVar) {
        int i;
        boolean booleanValue;
        boolean z;
        boolean isOffloadedPlaybackSupported;
        int playbackOffloadSupport;
        zzzVar.getClass();
        zzeVar.getClass();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29 && (i = zzzVar.zzF) != -1) {
            Context context = this.zza;
            Boolean bool = this.zzb;
            boolean z2 = false;
            if (bool != null) {
                booleanValue = bool.booleanValue();
            } else {
                if (context != null) {
                    String parameters = zzcj.zzc(context).getParameters("offloadVariableRateSupported");
                    if (parameters != null && parameters.equals("offloadVariableRateSupported=1")) {
                        z = true;
                    } else {
                        z = false;
                    }
                    this.zzb = Boolean.valueOf(z);
                } else {
                    this.zzb = Boolean.FALSE;
                }
                booleanValue = this.zzb.booleanValue();
            }
            String str = zzzVar.zzo;
            str.getClass();
            int zza = zzay.zza(str, zzzVar.zzk);
            if (zza != 0 && i2 >= zzeu.zzh(zza)) {
                int zzi = zzeu.zzi(zzzVar.zzE);
                if (zzi != 0) {
                    try {
                        AudioFormat zzx = zzeu.zzx(i, zzi, zza);
                        if (i2 >= 31) {
                            playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(zzx, zzeVar.zza().zza);
                            if (playbackOffloadSupport == 0) {
                                return zzpn.zza;
                            }
                            zzpl zzplVar = new zzpl();
                            if (i2 > 32 && playbackOffloadSupport == 2) {
                                z2 = true;
                            }
                            zzplVar.zza(true);
                            zzplVar.zzb(z2);
                            zzplVar.zzc(booleanValue);
                            return zzplVar.zzd();
                        }
                        isOffloadedPlaybackSupported = AudioManager.isOffloadedPlaybackSupported(zzx, zzeVar.zza().zza);
                        if (!isOffloadedPlaybackSupported) {
                            return zzpn.zza;
                        }
                        zzpl zzplVar2 = new zzpl();
                        zzplVar2.zza(true);
                        zzplVar2.zzc(booleanValue);
                        return zzplVar2.zzd();
                    } catch (IllegalArgumentException unused) {
                        return zzpn.zza;
                    }
                }
                return zzpn.zza;
            }
            return zzpn.zza;
        }
        return zzpn.zza;
    }

    public zzqo(@Nullable Context context) {
        this.zza = context == null ? null : context.getApplicationContext();
    }
}
