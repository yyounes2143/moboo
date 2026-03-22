package com.tencent.vod.flutter;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.exoplayer.Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.tencent.liteav.base.util.LiteavLog;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXAudioManager {
    private static final String TAG = "FTXAudioManager";
    private AudioAttributes mAudioAttributes;
    private AudioManager mAudioManager;
    private AudioFocusRequest mFocusRequest;
    private int volumeUIFlag = 0;
    private List<AudioFocusChangeListener> mAudioFocusListeners = new ArrayList();
    AudioManager.OnAudioFocusChangeListener afChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.tencent.vod.flutter.FTXAudioManager.1
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            if (i == -1) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.vod.flutter.FTXAudioManager.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        FTXAudioManager.this.onAudioFocusPause();
                    }
                });
            } else if (i == -2) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.vod.flutter.FTXAudioManager.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        FTXAudioManager.this.onAudioFocusPause();
                    }
                });
            } else if (i == -3) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.vod.flutter.FTXAudioManager.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        FTXAudioManager.this.onAudioFocusPause();
                    }
                });
            } else if (i == 1) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.vod.flutter.FTXAudioManager.1.4
                    @Override // java.lang.Runnable
                    public void run() {
                        FTXAudioManager.this.onAudioFocusPlay();
                    }
                });
            }
        }
    };

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface AudioFocusChangeListener {
        void onAudioFocusPause();

        void onAudioFocusPlay();
    }

    public FTXAudioManager(Context context) {
        this.mAudioManager = (AudioManager) context.getSystemService("audio");
    }

    public void abandonAudioFocus() {
        if (Build.VERSION.SDK_INT >= 26) {
            AudioFocusRequest audioFocusRequest = this.mFocusRequest;
            if (audioFocusRequest != null) {
                this.mAudioManager.abandonAudioFocusRequest(audioFocusRequest);
                return;
            }
            return;
        }
        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = this.afChangeListener;
        if (onAudioFocusChangeListener != null) {
            this.mAudioManager.abandonAudioFocus(onAudioFocusChangeListener);
        }
    }

    public void addAudioFocusChangedListener(AudioFocusChangeListener audioFocusChangeListener) {
        if (!this.mAudioFocusListeners.contains(audioFocusChangeListener)) {
            this.mAudioFocusListeners.add(audioFocusChangeListener);
        }
    }

    public float getSystemCurrentVolume() {
        return this.mAudioManager.getStreamVolume(3) / this.mAudioManager.getStreamMaxVolume(3);
    }

    public void onAudioFocusPause() {
        for (AudioFocusChangeListener audioFocusChangeListener : this.mAudioFocusListeners) {
            audioFocusChangeListener.onAudioFocusPause();
        }
    }

    public void onAudioFocusPlay() {
        for (AudioFocusChangeListener audioFocusChangeListener : this.mAudioFocusListeners) {
            audioFocusChangeListener.onAudioFocusPlay();
        }
    }

    public void removeAudioFocusChangedListener(AudioFocusChangeListener audioFocusChangeListener) {
        this.mAudioFocusListeners.remove(audioFocusChangeListener);
    }

    public void requestAudioFocus() {
        int requestAudioFocus;
        AudioFocusRequest.Builder audioAttributes;
        AudioFocusRequest.Builder acceptsDelayedFocusGain;
        AudioFocusRequest.Builder onAudioFocusChangeListener;
        AudioFocusRequest build;
        if (Build.VERSION.SDK_INT >= 26) {
            if (this.mFocusRequest == null) {
                if (this.mAudioAttributes == null) {
                    this.mAudioAttributes = new AudioAttributes.Builder().setUsage(1).setContentType(2).build();
                }
                audioAttributes = Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1).setAudioAttributes(this.mAudioAttributes);
                acceptsDelayedFocusGain = audioAttributes.setAcceptsDelayedFocusGain(true);
                onAudioFocusChangeListener = acceptsDelayedFocusGain.setOnAudioFocusChangeListener(this.afChangeListener);
                build = onAudioFocusChangeListener.build();
                this.mFocusRequest = build;
            }
            requestAudioFocus = this.mAudioManager.requestAudioFocus(this.mFocusRequest);
        } else {
            requestAudioFocus = this.mAudioManager.requestAudioFocus(this.afChangeListener, 3, 1);
        }
        LiteavLog.e(TAG, "requestAudioFocus result:" + requestAudioFocus);
    }

    public void setSystemVolume(Double d) {
        if (d != null) {
            if (d.doubleValue() < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                d = Double.valueOf((double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
            }
            if (d.doubleValue() > 1.0d) {
                d = Double.valueOf(1.0d);
            }
            int streamMaxVolume = this.mAudioManager.getStreamMaxVolume(3);
            this.mAudioManager.setStreamVolume(3, (int) (d.doubleValue() * streamMaxVolume), this.volumeUIFlag);
        }
    }

    public void setVolumeUIVisible(boolean z) {
        if (z) {
            this.volumeUIFlag = 1;
        } else {
            this.volumeUIFlag = 0;
        }
    }
}
