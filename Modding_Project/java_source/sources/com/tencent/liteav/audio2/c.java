package com.tencent.liteav.audio2;

import android.media.AudioManager;
import android.media.AudioManager$AudioPlaybackCallback;
import android.media.AudioPlaybackConfiguration;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class c extends AudioManager$AudioPlaybackCallback {

    /* renamed from: a  reason: collision with root package name */
    volatile a f10188a;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface a {
        void a();
    }

    public c() {
        AudioManager audioManager;
        if (LiteavSystemInfo.getSystemOSVersionInt() >= 26 && (audioManager = (AudioManager) ContextUtils.getApplicationContext().getSystemService("audio")) != null) {
            try {
                audioManager.registerAudioPlaybackCallback(this, null);
                Log.i("LiteavAudioPlaybackCallback", "register audio playback callback", new Object[0]);
            } catch (Throwable th) {
                Log.e("LiteavAudioPlaybackCallback", "register audio playback callback exception " + th.getMessage(), new Object[0]);
            }
        }
    }

    public final void onPlaybackConfigChanged(List<AudioPlaybackConfiguration> list) {
        a aVar = this.f10188a;
        if (aVar == null) {
            return;
        }
        aVar.a();
    }
}
