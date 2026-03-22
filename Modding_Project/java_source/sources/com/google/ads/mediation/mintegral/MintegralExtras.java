package com.google.ads.mediation.mintegral;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.applovin.mediation.AppLovinExtras;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class MintegralExtras {

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static class Builder {
        private boolean muteAudio;

        @NonNull
        public Bundle build() {
            Bundle bundle = new Bundle();
            bundle.putBoolean(AppLovinExtras.Keys.MUTE_AUDIO, this.muteAudio);
            return bundle;
        }

        @NonNull
        public Builder setMuteAudio(boolean z) {
            this.muteAudio = z;
            return this;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static class Keys {
        static final String MUTE_AUDIO = "mute_audio";
    }
}
