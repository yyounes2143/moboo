package com.applovin.mediation;

import android.os.Bundle;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppLovinExtras {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Builder {
        private boolean muteAudio;

        public Bundle build() {
            Bundle bundle = new Bundle(1);
            bundle.putBoolean(Keys.MUTE_AUDIO, this.muteAudio);
            return bundle;
        }

        public Builder setMuteAudio(boolean z) {
            this.muteAudio = z;
            return this;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Keys {
        public static final String KEY_WATERMARK = "google_watermark";
        public static final String MUTE_AUDIO = "mute_audio";

        private Keys() {
        }
    }
}
