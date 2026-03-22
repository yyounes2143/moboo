package com.tencent.liteav.extensions.codec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class AacMediaCodecWrapper {

    /* renamed from: a  reason: collision with root package name */
    MediaFormat f10263a;
    int b = 0;
    private final String c;
    private final int d;
    private MediaCodec e;
    private final MediaCodec.BufferInfo f;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final int f10264a = 1;
        public static final int b = 2;
        private static final /* synthetic */ int[] c = {1, 2};
    }

    public AacMediaCodecWrapper(int i) {
        String str;
        this.d = i;
        if (i == a.f10264a) {
            str = "HardwareAacEncoder";
        } else {
            str = "HardwareAacDecoder";
        }
        this.c = str;
        this.f = new MediaCodec.BufferInfo();
    }

    private ByteBuffer b() {
        ByteBuffer byteBuffer;
        try {
            int dequeueOutputBuffer = this.e.dequeueOutputBuffer(this.f, TimeUnit.MILLISECONDS.toMicros(5L));
            if (dequeueOutputBuffer == -1) {
                return null;
            }
            if (dequeueOutputBuffer == -3) {
                Log.i(this.c, "codec output buffers changed.", new Object[0]);
                return null;
            } else if (dequeueOutputBuffer == -2) {
                this.f10263a = this.e.getOutputFormat();
                String str = this.c;
                Log.i(str, "codec output format changed: " + this.f10263a, new Object[0]);
                return null;
            } else if (dequeueOutputBuffer < 0) {
                Log.e(this.c, "unexpected result from dequeueOutputBuffer: ".concat(String.valueOf(dequeueOutputBuffer)), new Object[0]);
                return null;
            } else {
                if (LiteavSystemInfo.getSystemOSVersionInt() >= 21) {
                    byteBuffer = this.e.getOutputBuffer(dequeueOutputBuffer);
                } else {
                    byteBuffer = this.e.getOutputBuffers()[dequeueOutputBuffer];
                }
                ByteBuffer allocateDirect = ByteBuffer.allocateDirect(this.f.size);
                allocateDirect.put(byteBuffer);
                this.e.releaseOutputBuffer(dequeueOutputBuffer, false);
                int i = this.b;
                if (i > 0) {
                    this.b = i - 1;
                }
                return allocateDirect;
            }
        } catch (Exception e) {
            Log.e(this.c, "dequeueOutputBuffer failed. ".concat(String.valueOf(e)), new Object[0]);
            return null;
        }
    }

    public final boolean a(MediaFormat mediaFormat) {
        if (this.e == null && mediaFormat != null) {
            try {
                int i = this.d == a.f10264a ? 1 : 0;
                if (i != 0) {
                    this.e = MediaCodec.createEncoderByType("audio/mp4a-latm");
                } else {
                    this.e = MediaCodec.createDecoderByType("audio/mp4a-latm");
                }
                this.e.configure(mediaFormat, (Surface) null, (MediaCrypto) null, i);
                this.e.start();
                return true;
            } catch (IOException e) {
                Log.e(this.c, "create codec failed. ".concat(String.valueOf(e)), new Object[0]);
                a();
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x005e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0065 -> B:28:0x005b). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.nio.ByteBuffer processFrame(java.nio.ByteBuffer r14) {
        /*
            r13 = this;
            android.media.MediaCodec r0 = r13.e
            r1 = 0
            if (r0 == 0) goto L68
            if (r14 != 0) goto L8
            goto L68
        L8:
            r2 = 0
            java.nio.ByteBuffer[] r0 = r0.getInputBuffers()     // Catch: java.lang.Exception -> L3d
            if (r0 == 0) goto L40
            int r3 = r0.length     // Catch: java.lang.Exception -> L3d
            if (r3 > 0) goto L13
            goto L40
        L13:
            android.media.MediaCodec r3 = r13.e     // Catch: java.lang.Exception -> L3d
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Exception -> L3d
            r5 = 5
            long r4 = r4.toMicros(r5)     // Catch: java.lang.Exception -> L3d
            int r7 = r3.dequeueInputBuffer(r4)     // Catch: java.lang.Exception -> L3d
            if (r7 >= 0) goto L24
            goto L5b
        L24:
            int r9 = r14.remaining()     // Catch: java.lang.Exception -> L3d
            r0 = r0[r7]     // Catch: java.lang.Exception -> L3d
            r0.put(r14)     // Catch: java.lang.Exception -> L3d
            android.media.MediaCodec r6 = r13.e     // Catch: java.lang.Exception -> L3d
            r10 = 0
            r12 = 0
            r8 = 0
            r6.queueInputBuffer(r7, r8, r9, r10, r12)     // Catch: java.lang.Exception -> L3d
            int r14 = r13.b     // Catch: java.lang.Exception -> L3d
            int r14 = r14 + 1
            r13.b = r14     // Catch: java.lang.Exception -> L3d
            goto L5b
        L3d:
            r0 = move-exception
            r14 = r0
            goto L4a
        L40:
            java.lang.String r14 = r13.c     // Catch: java.lang.Exception -> L3d
            java.lang.String r0 = "get invalid input buffers."
            java.lang.Object[] r3 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L3d
            com.tencent.liteav.base.Log.e(r14, r0, r3)     // Catch: java.lang.Exception -> L3d
            goto L5b
        L4a:
            java.lang.String r0 = r13.c
            java.lang.String r14 = java.lang.String.valueOf(r14)
            java.lang.String r3 = "feedData failed. "
            java.lang.String r14 = r3.concat(r14)
            java.lang.Object[] r3 = new java.lang.Object[r2]
            com.tencent.liteav.base.Log.e(r0, r14, r3)
        L5b:
            r14 = 3
            if (r2 >= r14) goto L68
            java.nio.ByteBuffer r14 = r13.b()
            if (r14 == 0) goto L65
            return r14
        L65:
            int r2 = r2 + 1
            goto L5b
        L68:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.extensions.codec.AacMediaCodecWrapper.processFrame(java.nio.ByteBuffer):java.nio.ByteBuffer");
    }

    public final void a() {
        MediaCodec mediaCodec = this.e;
        if (mediaCodec == null) {
            return;
        }
        try {
            mediaCodec.stop();
        } catch (Exception e) {
            Log.e(this.c, "codec stop failed.".concat(String.valueOf(e)), new Object[0]);
        }
        try {
            this.e.release();
        } catch (Exception e2) {
            Log.e(this.c, "codec release failed.".concat(String.valueOf(e2)), new Object[0]);
        }
        this.e = null;
        this.b = 0;
    }
}
