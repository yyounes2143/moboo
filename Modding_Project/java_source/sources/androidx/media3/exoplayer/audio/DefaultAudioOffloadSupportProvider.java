package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioOffloadSupport;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
/* compiled from: Proguard */
@UnstableApi
/* loaded from: classes.dex */
public final class DefaultAudioOffloadSupportProvider implements DefaultAudioSink.AudioOffloadSupportProvider {
    private static final String OFFLOAD_VARIABLE_RATE_SUPPORTED_KEY = "offloadVariableRateSupported";
    @Nullable
    private final Context context;
    private Boolean isOffloadVariableRateSupported;

    /* compiled from: Proguard */
    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static final class Api29 {
        private Api29() {
        }

        @DoNotInline
        public static AudioOffloadSupport getOffloadedPlaybackSupport(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z) {
            boolean isOffloadedPlaybackSupported;
            isOffloadedPlaybackSupported = AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes);
            if (!isOffloadedPlaybackSupported) {
                return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
            }
            return new AudioOffloadSupport.Builder().setIsFormatSupported(true).setIsSpeedChangeSupported(z).build();
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(31)
    /* loaded from: classes.dex */
    public static final class Api31 {
        private Api31() {
        }

        @DoNotInline
        public static AudioOffloadSupport getOffloadedPlaybackSupport(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z) {
            int playbackOffloadSupport;
            boolean z2;
            playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
            if (playbackOffloadSupport == 0) {
                return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
            }
            AudioOffloadSupport.Builder builder = new AudioOffloadSupport.Builder();
            if (Util.SDK_INT > 32 && playbackOffloadSupport == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            return builder.setIsFormatSupported(true).setIsGaplessSupported(z2).setIsSpeedChangeSupported(z).build();
        }
    }

    public DefaultAudioOffloadSupportProvider() {
        this(null);
    }

    private boolean isOffloadVariableRateSupported(@Nullable Context context) {
        boolean z;
        Boolean bool = this.isOffloadVariableRateSupported;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (context != null) {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            if (audioManager != null) {
                String parameters = audioManager.getParameters(OFFLOAD_VARIABLE_RATE_SUPPORTED_KEY);
                if (parameters != null && parameters.equals("offloadVariableRateSupported=1")) {
                    z = true;
                } else {
                    z = false;
                }
                this.isOffloadVariableRateSupported = Boolean.valueOf(z);
            } else {
                this.isOffloadVariableRateSupported = Boolean.FALSE;
            }
        } else {
            this.isOffloadVariableRateSupported = Boolean.FALSE;
        }
        return this.isOffloadVariableRateSupported.booleanValue();
    }

    @Override // androidx.media3.exoplayer.audio.DefaultAudioSink.AudioOffloadSupportProvider
    public AudioOffloadSupport getAudioOffloadSupport(Format format, androidx.media3.common.AudioAttributes audioAttributes) {
        Assertions.checkNotNull(format);
        Assertions.checkNotNull(audioAttributes);
        int i = Util.SDK_INT;
        if (i >= 29 && format.sampleRate != -1) {
            boolean isOffloadVariableRateSupported = isOffloadVariableRateSupported(this.context);
            int encoding = MimeTypes.getEncoding((String) Assertions.checkNotNull(format.sampleMimeType), format.codecs);
            if (encoding != 0 && i >= Util.getApiLevelThatAudioFormatIntroducedAudioEncoding(encoding)) {
                int audioTrackChannelConfig = Util.getAudioTrackChannelConfig(format.channelCount);
                if (audioTrackChannelConfig == 0) {
                    return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
                }
                try {
                    AudioFormat audioFormat = Util.getAudioFormat(format.sampleRate, audioTrackChannelConfig, encoding);
                    if (i >= 31) {
                        return Api31.getOffloadedPlaybackSupport(audioFormat, audioAttributes.getAudioAttributesV21().audioAttributes, isOffloadVariableRateSupported);
                    }
                    return Api29.getOffloadedPlaybackSupport(audioFormat, audioAttributes.getAudioAttributesV21().audioAttributes, isOffloadVariableRateSupported);
                } catch (IllegalArgumentException unused) {
                    return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
                }
            }
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
        return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
    }

    public DefaultAudioOffloadSupportProvider(@Nullable Context context) {
        this.context = context;
    }
}
