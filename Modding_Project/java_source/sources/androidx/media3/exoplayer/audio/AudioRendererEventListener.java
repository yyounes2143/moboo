package androidx.media3.exoplayer.audio;

import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;
/* compiled from: Proguard */
@UnstableApi
/* loaded from: classes.dex */
public interface AudioRendererEventListener {

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class EventDispatcher {
        @Nullable
        private final Handler handler;
        @Nullable
        private final AudioRendererEventListener listener;

        public EventDispatcher(@Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener) {
            Handler handler2;
            if (audioRendererEventListener != null) {
                handler2 = (Handler) Assertions.checkNotNull(handler);
            } else {
                handler2 = null;
            }
            this.handler = handler2;
            this.listener = audioRendererEventListener;
        }

        public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(EventDispatcher eventDispatcher, DecoderCounters decoderCounters) {
            eventDispatcher.getClass();
            decoderCounters.ensureUpdated();
            ((AudioRendererEventListener) Util.castNonNull(eventDispatcher.listener)).onAudioDisabled(decoderCounters);
        }

        public void audioCodecError(final Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.Wwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((AudioRendererEventListener) Util.castNonNull(AudioRendererEventListener.EventDispatcher.this.listener)).onAudioCodecError(exc);
                    }
                });
            }
        }

        public void audioSinkError(final Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.Wwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((AudioRendererEventListener) Util.castNonNull(AudioRendererEventListener.EventDispatcher.this.listener)).onAudioSinkError(exc);
                    }
                });
            }
        }

        public void audioTrackInitialized(final AudioSink.AudioTrackConfig audioTrackConfig) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.Wwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((AudioRendererEventListener) Util.castNonNull(AudioRendererEventListener.EventDispatcher.this.listener)).onAudioTrackInitialized(audioTrackConfig);
                    }
                });
            }
        }

        public void audioTrackReleased(final AudioSink.AudioTrackConfig audioTrackConfig) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.Wwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((AudioRendererEventListener) Util.castNonNull(AudioRendererEventListener.EventDispatcher.this.listener)).onAudioTrackReleased(audioTrackConfig);
                    }
                });
            }
        }

        public void decoderInitialized(final String str, final long j, final long j2) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.Wwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((AudioRendererEventListener) Util.castNonNull(AudioRendererEventListener.EventDispatcher.this.listener)).onAudioDecoderInitialized(str, j, j2);
                    }
                });
            }
        }

        public void decoderReleased(final String str) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.Wwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((AudioRendererEventListener) Util.castNonNull(AudioRendererEventListener.EventDispatcher.this.listener)).onAudioDecoderReleased(str);
                    }
                });
            }
        }

        public void disabled(final DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.Wwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AudioRendererEventListener.EventDispatcher.this, decoderCounters);
                    }
                });
            }
        }

        public void enabled(final DecoderCounters decoderCounters) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.Wwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((AudioRendererEventListener) Util.castNonNull(AudioRendererEventListener.EventDispatcher.this.listener)).onAudioEnabled(decoderCounters);
                    }
                });
            }
        }

        public void inputFormatChanged(final Format format, @Nullable final DecoderReuseEvaluation decoderReuseEvaluation) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.Wwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((AudioRendererEventListener) Util.castNonNull(AudioRendererEventListener.EventDispatcher.this.listener)).onAudioInputFormatChanged(format, decoderReuseEvaluation);
                    }
                });
            }
        }

        public void positionAdvancing(final long j) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.Wwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((AudioRendererEventListener) Util.castNonNull(AudioRendererEventListener.EventDispatcher.this.listener)).onAudioPositionAdvancing(j);
                    }
                });
            }
        }

        public void skipSilenceEnabledChanged(final boolean z) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.Wwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((AudioRendererEventListener) Util.castNonNull(AudioRendererEventListener.EventDispatcher.this.listener)).onSkipSilenceEnabledChanged(z);
                    }
                });
            }
        }

        public void underrun(final int i, final long j, final long j2) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.Wwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((AudioRendererEventListener) Util.castNonNull(AudioRendererEventListener.EventDispatcher.this.listener)).onAudioUnderrun(i, j, j2);
                    }
                });
            }
        }
    }

    void onAudioCodecError(Exception exc);

    void onAudioDecoderInitialized(String str, long j, long j2);

    void onAudioDecoderReleased(String str);

    void onAudioDisabled(DecoderCounters decoderCounters);

    void onAudioEnabled(DecoderCounters decoderCounters);

    void onAudioInputFormatChanged(Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation);

    void onAudioPositionAdvancing(long j);

    void onAudioSinkError(Exception exc);

    void onAudioTrackInitialized(AudioSink.AudioTrackConfig audioTrackConfig);

    void onAudioTrackReleased(AudioSink.AudioTrackConfig audioTrackConfig);

    void onAudioUnderrun(int i, long j, long j2);

    void onSkipSilenceEnabledChanged(boolean z);
}
