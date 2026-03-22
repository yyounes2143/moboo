package com.mbridge.msdk.playercommon.exoplayer2;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.audio.AudioProcessor;
import com.mbridge.msdk.playercommon.exoplayer2.audio.AudioRendererEventListener;
import com.mbridge.msdk.playercommon.exoplayer2.drm.DrmSessionManager;
import com.mbridge.msdk.playercommon.exoplayer2.drm.FrameworkMediaCrypto;
import com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecSelector;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.MetadataOutput;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.MetadataRenderer;
import com.mbridge.msdk.playercommon.exoplayer2.text.TextOutput;
import com.mbridge.msdk.playercommon.exoplayer2.text.TextRenderer;
import com.mbridge.msdk.playercommon.exoplayer2.video.MediaCodecVideoRenderer;
import com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class DefaultRenderersFactory implements RenderersFactory {
    public static final long DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS = 5000;
    public static final int EXTENSION_RENDERER_MODE_OFF = 0;
    public static final int EXTENSION_RENDERER_MODE_ON = 1;
    public static final int EXTENSION_RENDERER_MODE_PREFER = 2;
    protected static final int MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY = 50;
    private static final String TAG = "DefaultRenderersFactory";
    private final long allowedVideoJoiningTimeMs;
    private final Context context;
    @Nullable
    private final DrmSessionManager<FrameworkMediaCrypto> drmSessionManager;
    private final int extensionRendererMode;

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface ExtensionRendererMode {
    }

    public DefaultRenderersFactory(Context context) {
        this(context, 0);
    }

    public AudioProcessor[] buildAudioProcessors() {
        return new AudioProcessor[0];
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:3|(1:5)|6|7|8|(2:9|10)|11|12|13|14|15|(2:17|18)) */
    /* JADX WARN: Can't wrap try/catch for region: R(7:(2:9|10)|11|12|13|14|15|(2:17|18)) */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008e, code lost:
        r10 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0098, code lost:
        r9 = r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void buildAudioRenderers(android.content.Context r19, @androidx.annotation.Nullable com.mbridge.msdk.playercommon.exoplayer2.drm.DrmSessionManager<com.mbridge.msdk.playercommon.exoplayer2.drm.FrameworkMediaCrypto> r20, com.mbridge.msdk.playercommon.exoplayer2.audio.AudioProcessor[] r21, android.os.Handler r22, com.mbridge.msdk.playercommon.exoplayer2.audio.AudioRendererEventListener r23, int r24, java.util.ArrayList<com.mbridge.msdk.playercommon.exoplayer2.Renderer> r25) {
        /*
            r18 = this;
            r0 = r24
            r1 = r25
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            java.lang.Class<com.mbridge.msdk.playercommon.exoplayer2.audio.AudioProcessor[]> r6 = com.mbridge.msdk.playercommon.exoplayer2.audio.AudioProcessor[].class
            java.lang.Class<com.mbridge.msdk.playercommon.exoplayer2.audio.AudioRendererEventListener> r7 = com.mbridge.msdk.playercommon.exoplayer2.audio.AudioRendererEventListener.class
            java.lang.Class<android.os.Handler> r8 = android.os.Handler.class
            com.mbridge.msdk.playercommon.exoplayer2.audio.MediaCodecAudioRenderer r9 = new com.mbridge.msdk.playercommon.exoplayer2.audio.MediaCodecAudioRenderer
            com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecSelector r11 = com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecSelector.DEFAULT
            com.mbridge.msdk.playercommon.exoplayer2.audio.AudioCapabilities r16 = com.mbridge.msdk.playercommon.exoplayer2.audio.AudioCapabilities.getCapabilities(r19)
            r13 = 0
            r10 = r19
            r12 = r20
            r17 = r21
            r14 = r22
            r15 = r23
            r9.<init>(r10, r11, r12, r13, r14, r15, r16, r17)
            r1.add(r9)
            if (r0 != 0) goto L2b
            goto Lc6
        L2b:
            int r9 = r1.size()
            if (r0 != r4) goto L33
            int r9 = r9 + (-1)
        L33:
            java.lang.String r0 = "com.mbridge.msdk.playercommon.exoplayer2.ext.opus.LibopusAudioRenderer"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Exception -> L59 java.lang.ClassNotFoundException -> L65
            java.lang.Class[] r10 = new java.lang.Class[r3]     // Catch: java.lang.Exception -> L59 java.lang.ClassNotFoundException -> L65
            r10[r2] = r8     // Catch: java.lang.Exception -> L59 java.lang.ClassNotFoundException -> L65
            r10[r5] = r7     // Catch: java.lang.Exception -> L59 java.lang.ClassNotFoundException -> L65
            r10[r4] = r6     // Catch: java.lang.Exception -> L59 java.lang.ClassNotFoundException -> L65
            java.lang.reflect.Constructor r0 = r0.getConstructor(r10)     // Catch: java.lang.Exception -> L59 java.lang.ClassNotFoundException -> L65
            java.lang.Object[] r10 = new java.lang.Object[r3]     // Catch: java.lang.Exception -> L59 java.lang.ClassNotFoundException -> L65
            r10[r2] = r22     // Catch: java.lang.Exception -> L59 java.lang.ClassNotFoundException -> L65
            r10[r5] = r23     // Catch: java.lang.Exception -> L59 java.lang.ClassNotFoundException -> L65
            r10[r4] = r21     // Catch: java.lang.Exception -> L59 java.lang.ClassNotFoundException -> L65
            java.lang.Object r0 = r0.newInstance(r10)     // Catch: java.lang.Exception -> L59 java.lang.ClassNotFoundException -> L65
            com.mbridge.msdk.playercommon.exoplayer2.Renderer r0 = (com.mbridge.msdk.playercommon.exoplayer2.Renderer) r0     // Catch: java.lang.Exception -> L59 java.lang.ClassNotFoundException -> L65
            int r10 = r9 + 1
            r1.add(r9, r0)     // Catch: java.lang.Exception -> L59 java.lang.ClassNotFoundException -> L5b
            goto L66
        L59:
            r0 = move-exception
            goto L5d
        L5b:
            r9 = r10
            goto L65
        L5d:
            java.lang.RuntimeException r1 = new java.lang.RuntimeException
            java.lang.String r2 = "Error instantiating Opus extension"
            r1.<init>(r2, r0)
            throw r1
        L65:
            r10 = r9
        L66:
            java.lang.String r0 = "com.mbridge.msdk.playercommon.exoplayer2.ext.flac.LibflacAudioRenderer"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Exception -> L8c java.lang.ClassNotFoundException -> L98
            java.lang.Class[] r9 = new java.lang.Class[r3]     // Catch: java.lang.Exception -> L8c java.lang.ClassNotFoundException -> L98
            r9[r2] = r8     // Catch: java.lang.Exception -> L8c java.lang.ClassNotFoundException -> L98
            r9[r5] = r7     // Catch: java.lang.Exception -> L8c java.lang.ClassNotFoundException -> L98
            r9[r4] = r6     // Catch: java.lang.Exception -> L8c java.lang.ClassNotFoundException -> L98
            java.lang.reflect.Constructor r0 = r0.getConstructor(r9)     // Catch: java.lang.Exception -> L8c java.lang.ClassNotFoundException -> L98
            java.lang.Object[] r9 = new java.lang.Object[r3]     // Catch: java.lang.Exception -> L8c java.lang.ClassNotFoundException -> L98
            r9[r2] = r22     // Catch: java.lang.Exception -> L8c java.lang.ClassNotFoundException -> L98
            r9[r5] = r23     // Catch: java.lang.Exception -> L8c java.lang.ClassNotFoundException -> L98
            r9[r4] = r21     // Catch: java.lang.Exception -> L8c java.lang.ClassNotFoundException -> L98
            java.lang.Object r0 = r0.newInstance(r9)     // Catch: java.lang.Exception -> L8c java.lang.ClassNotFoundException -> L98
            com.mbridge.msdk.playercommon.exoplayer2.Renderer r0 = (com.mbridge.msdk.playercommon.exoplayer2.Renderer) r0     // Catch: java.lang.Exception -> L8c java.lang.ClassNotFoundException -> L98
            int r9 = r10 + 1
            r1.add(r10, r0)     // Catch: java.lang.Exception -> L8c java.lang.ClassNotFoundException -> L8e
            goto L99
        L8c:
            r0 = move-exception
            goto L90
        L8e:
            r10 = r9
            goto L98
        L90:
            java.lang.RuntimeException r1 = new java.lang.RuntimeException
            java.lang.String r2 = "Error instantiating FLAC extension"
            r1.<init>(r2, r0)
            throw r1
        L98:
            r9 = r10
        L99:
            java.lang.String r0 = "com.mbridge.msdk.playercommon.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Exception -> Lbd java.lang.ClassNotFoundException -> Lc6
            java.lang.Class[] r10 = new java.lang.Class[r3]     // Catch: java.lang.Exception -> Lbd java.lang.ClassNotFoundException -> Lc6
            r10[r2] = r8     // Catch: java.lang.Exception -> Lbd java.lang.ClassNotFoundException -> Lc6
            r10[r5] = r7     // Catch: java.lang.Exception -> Lbd java.lang.ClassNotFoundException -> Lc6
            r10[r4] = r6     // Catch: java.lang.Exception -> Lbd java.lang.ClassNotFoundException -> Lc6
            java.lang.reflect.Constructor r0 = r0.getConstructor(r10)     // Catch: java.lang.Exception -> Lbd java.lang.ClassNotFoundException -> Lc6
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Exception -> Lbd java.lang.ClassNotFoundException -> Lc6
            r3[r2] = r22     // Catch: java.lang.Exception -> Lbd java.lang.ClassNotFoundException -> Lc6
            r3[r5] = r23     // Catch: java.lang.Exception -> Lbd java.lang.ClassNotFoundException -> Lc6
            r3[r4] = r21     // Catch: java.lang.Exception -> Lbd java.lang.ClassNotFoundException -> Lc6
            java.lang.Object r0 = r0.newInstance(r3)     // Catch: java.lang.Exception -> Lbd java.lang.ClassNotFoundException -> Lc6
            com.mbridge.msdk.playercommon.exoplayer2.Renderer r0 = (com.mbridge.msdk.playercommon.exoplayer2.Renderer) r0     // Catch: java.lang.Exception -> Lbd java.lang.ClassNotFoundException -> Lc6
            r1.add(r9, r0)     // Catch: java.lang.Exception -> Lbd java.lang.ClassNotFoundException -> Lc6
            goto Lc6
        Lbd:
            r0 = move-exception
            java.lang.RuntimeException r1 = new java.lang.RuntimeException
            java.lang.String r2 = "Error instantiating FFmpeg extension"
            r1.<init>(r2, r0)
            throw r1
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.playercommon.exoplayer2.DefaultRenderersFactory.buildAudioRenderers(android.content.Context, com.mbridge.msdk.playercommon.exoplayer2.drm.DrmSessionManager, com.mbridge.msdk.playercommon.exoplayer2.audio.AudioProcessor[], android.os.Handler, com.mbridge.msdk.playercommon.exoplayer2.audio.AudioRendererEventListener, int, java.util.ArrayList):void");
    }

    public void buildMetadataRenderers(Context context, MetadataOutput metadataOutput, Looper looper, int i, ArrayList<Renderer> arrayList) {
        arrayList.add(new MetadataRenderer(metadataOutput, looper));
    }

    public void buildTextRenderers(Context context, TextOutput textOutput, Looper looper, int i, ArrayList<Renderer> arrayList) {
        arrayList.add(new TextRenderer(textOutput, looper));
    }

    public void buildVideoRenderers(Context context, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, long j, Handler handler, VideoRendererEventListener videoRendererEventListener, int i, ArrayList<Renderer> arrayList) {
        arrayList.add(new MediaCodecVideoRenderer(context, MediaCodecSelector.DEFAULT, j, drmSessionManager, false, handler, videoRendererEventListener, 50));
        if (i != 0) {
            int size = arrayList.size();
            if (i == 2) {
                size--;
            }
            try {
                arrayList.add(size, (Renderer) Class.forName("com.mbridge.msdk.playercommon.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(Boolean.TYPE, Long.TYPE, Handler.class, VideoRendererEventListener.class, Integer.TYPE).newInstance(Boolean.TRUE, Long.valueOf(j), handler, videoRendererEventListener, 50));
            } catch (ClassNotFoundException unused) {
            } catch (Exception e) {
                throw new RuntimeException("Error instantiating VP9 extension", e);
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.RenderersFactory
    public Renderer[] createRenderers(Handler handler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textOutput, MetadataOutput metadataOutput, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager) {
        if (drmSessionManager == null) {
            drmSessionManager = this.drmSessionManager;
        }
        DrmSessionManager<FrameworkMediaCrypto> drmSessionManager2 = drmSessionManager;
        ArrayList<Renderer> arrayList = new ArrayList<>();
        buildVideoRenderers(this.context, drmSessionManager2, this.allowedVideoJoiningTimeMs, handler, videoRendererEventListener, this.extensionRendererMode, arrayList);
        buildAudioRenderers(this.context, drmSessionManager2, buildAudioProcessors(), handler, audioRendererEventListener, this.extensionRendererMode, arrayList);
        buildTextRenderers(this.context, textOutput, handler.getLooper(), this.extensionRendererMode, arrayList);
        buildMetadataRenderers(this.context, metadataOutput, handler.getLooper(), this.extensionRendererMode, arrayList);
        buildMiscellaneousRenderers(this.context, handler, this.extensionRendererMode, arrayList);
        return (Renderer[]) arrayList.toArray(new Renderer[arrayList.size()]);
    }

    @Deprecated
    public DefaultRenderersFactory(Context context, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager) {
        this(context, drmSessionManager, 0);
    }

    public DefaultRenderersFactory(Context context, int i) {
        this(context, null, i, 5000L);
    }

    @Deprecated
    public DefaultRenderersFactory(Context context, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, int i) {
        this(context, drmSessionManager, i, 5000L);
    }

    public DefaultRenderersFactory(Context context, int i, long j) {
        this(context, null, i, j);
    }

    @Deprecated
    public DefaultRenderersFactory(Context context, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, int i, long j) {
        this.context = context;
        this.extensionRendererMode = i;
        this.allowedVideoJoiningTimeMs = j;
        this.drmSessionManager = drmSessionManager;
    }

    public void buildMiscellaneousRenderers(Context context, Handler handler, int i, ArrayList<Renderer> arrayList) {
    }
}
