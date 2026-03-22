package com.google.android.gms.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.client.zzfv;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class VideoController {
    @KeepForSdk
    public static final int PLAYBACK_STATE_ENDED = 3;
    @KeepForSdk
    public static final int PLAYBACK_STATE_PAUSED = 2;
    @KeepForSdk
    public static final int PLAYBACK_STATE_PLAYING = 1;
    @KeepForSdk
    public static final int PLAYBACK_STATE_READY = 5;
    @KeepForSdk
    public static final int PLAYBACK_STATE_UNKNOWN = 0;
    private final Object zza = new Object();
    @Nullable
    private zzea zzb;
    @Nullable
    private VideoLifecycleCallbacks zzc;

    @KeepForSdk
    public int getPlaybackState() {
        synchronized (this.zza) {
            zzea zzeaVar = this.zzb;
            if (zzeaVar == null) {
                return 0;
            }
            try {
                return zzeaVar.zzh();
            } catch (RemoteException e) {
                zzo.zzh("Unable to call getPlaybackState on video controller.", e);
                return 0;
            }
        }
    }

    @Nullable
    public VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this.zza) {
            videoLifecycleCallbacks = this.zzc;
        }
        return videoLifecycleCallbacks;
    }

    public boolean hasVideoContent() {
        boolean z;
        synchronized (this.zza) {
            if (this.zzb != null) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public boolean isClickToExpandEnabled() {
        synchronized (this.zza) {
            zzea zzeaVar = this.zzb;
            if (zzeaVar == null) {
                return false;
            }
            try {
                return zzeaVar.zzo();
            } catch (RemoteException e) {
                zzo.zzh("Unable to call isClickToExpandEnabled.", e);
                return false;
            }
        }
    }

    public boolean isCustomControlsEnabled() {
        synchronized (this.zza) {
            zzea zzeaVar = this.zzb;
            if (zzeaVar == null) {
                return false;
            }
            try {
                return zzeaVar.zzp();
            } catch (RemoteException e) {
                zzo.zzh("Unable to call isUsingCustomPlayerControls.", e);
                return false;
            }
        }
    }

    public boolean isMuted() {
        synchronized (this.zza) {
            zzea zzeaVar = this.zzb;
            if (zzeaVar == null) {
                return true;
            }
            try {
                return zzeaVar.zzq();
            } catch (RemoteException e) {
                zzo.zzh("Unable to call isMuted on video controller.", e);
                return true;
            }
        }
    }

    public void mute(boolean z) {
        synchronized (this.zza) {
            zzea zzeaVar = this.zzb;
            if (zzeaVar == null) {
                return;
            }
            try {
                zzeaVar.zzj(z);
            } catch (RemoteException e) {
                zzo.zzh("Unable to call mute on video controller.", e);
            }
        }
    }

    public void pause() {
        synchronized (this.zza) {
            zzea zzeaVar = this.zzb;
            if (zzeaVar == null) {
                return;
            }
            try {
                zzeaVar.zzk();
            } catch (RemoteException e) {
                zzo.zzh("Unable to call pause on video controller.", e);
            }
        }
    }

    public void play() {
        synchronized (this.zza) {
            zzea zzeaVar = this.zzb;
            if (zzeaVar == null) {
                return;
            }
            try {
                zzeaVar.zzl();
            } catch (RemoteException e) {
                zzo.zzh("Unable to call play on video controller.", e);
            }
        }
    }

    public void setVideoLifecycleCallbacks(@Nullable VideoLifecycleCallbacks videoLifecycleCallbacks) {
        zzfv zzfvVar;
        synchronized (this.zza) {
            this.zzc = videoLifecycleCallbacks;
            zzea zzeaVar = this.zzb;
            if (zzeaVar == null) {
                return;
            }
            if (videoLifecycleCallbacks == null) {
                zzfvVar = null;
            } else {
                try {
                    zzfvVar = new zzfv(videoLifecycleCallbacks);
                } catch (RemoteException e) {
                    zzo.zzh("Unable to call setVideoLifecycleCallbacks on video controller.", e);
                }
            }
            zzeaVar.zzm(zzfvVar);
        }
    }

    public void stop() {
        synchronized (this.zza) {
            zzea zzeaVar = this.zzb;
            if (zzeaVar == null) {
                return;
            }
            try {
                zzeaVar.zzn();
            } catch (RemoteException e) {
                zzo.zzh("Unable to call stop on video controller.", e);
            }
        }
    }

    @Nullable
    public final zzea zza() {
        zzea zzeaVar;
        synchronized (this.zza) {
            zzeaVar = this.zzb;
        }
        return zzeaVar;
    }

    public final void zzb(@Nullable zzea zzeaVar) {
        synchronized (this.zza) {
            try {
                this.zzb = zzeaVar;
                VideoLifecycleCallbacks videoLifecycleCallbacks = this.zzc;
                if (videoLifecycleCallbacks != null) {
                    setVideoLifecycleCallbacks(videoLifecycleCallbacks);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static abstract class VideoLifecycleCallbacks {
        public void onVideoEnd() {
        }

        public void onVideoPause() {
        }

        public void onVideoPlay() {
        }

        public void onVideoStart() {
        }

        public void onVideoMute(boolean z) {
        }
    }
}
