package com.google.android.gms.internal.ads;

import android.media.AudioManager;
import android.os.Handler;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzce {
    @Nullable
    private AudioManager.OnAudioFocusChangeListener zza;
    @Nullable
    private Handler zzb;
    private zze zzc = zze.zza;

    public zzce(int i) {
    }

    public final zzce zza(zze zzeVar) {
        this.zzc = zzeVar;
        return this;
    }

    public final zzce zzb(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
        this.zza = onAudioFocusChangeListener;
        this.zzb = handler;
        return this;
    }

    public final zzch zzc() {
        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = this.zza;
        if (onAudioFocusChangeListener != null) {
            Handler handler = this.zzb;
            handler.getClass();
            return new zzch(1, onAudioFocusChangeListener, handler, this.zzc, false);
        }
        throw new IllegalStateException("Can't build an AudioFocusRequestCompat instance without a listener");
    }
}
