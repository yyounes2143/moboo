package com.tencent.liteav.videobase.common;

import android.media.MediaCodec;
import android.media.MediaFormat;
import com.google.common.base.Ascii;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.utils.ConsumerChainTimestamp;
import com.tencent.liteav.videobase.utils.ProducerChainTimestamp;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
@JNINamespace("liteav::video")
/* loaded from: classes6.dex */
public class EncodedVideoFrame {
    private static final String TAG = "EncodedVideoFrame";
    public ByteBuffer data;
    public long dts;
    public int height;
    public long pts;
    public int rotation;
    public MediaFormat videoFormat;
    public int width;
    public final ProducerChainTimestamp producerChainTimestamp = new ProducerChainTimestamp();
    public final ConsumerChainTimestamp consumerChainTimestamp = new ConsumerChainTimestamp();
    public long nativePtr = 0;
    public d nalType = d.UNKNOWN;
    public e profileType = e.UNKNOWN;
    public a codecType = a.H264;
    public long gopIndex = 0;
    public long gopFrameIndex = 0;
    public long frameIndex = 0;
    public long refFrameIndex = 0;
    public Integer svcInfo = null;
    public boolean isEosFrame = false;
    public c hdrType = c.UNKNOWN;
    public MediaCodec.BufferInfo info = null;

    public static EncodedVideoFrame createEncodedVideoFrame(ByteBuffer byteBuffer, int i, int i2, int i3, long j, long j2, long j3, long j4, long j5, long j6, int i4, long j7, int i5, int i6, boolean z, int i7, int i8) {
        EncodedVideoFrame encodedVideoFrame = new EncodedVideoFrame();
        encodedVideoFrame.data = byteBuffer;
        encodedVideoFrame.nativePtr = j7;
        encodedVideoFrame.nalType = d.a(i);
        encodedVideoFrame.profileType = e.a(i2);
        encodedVideoFrame.codecType = a.a(i4);
        encodedVideoFrame.rotation = i3;
        encodedVideoFrame.dts = j;
        encodedVideoFrame.pts = j2;
        encodedVideoFrame.gopIndex = j3;
        encodedVideoFrame.gopFrameIndex = j4;
        encodedVideoFrame.frameIndex = j5;
        encodedVideoFrame.refFrameIndex = j6;
        encodedVideoFrame.info = null;
        encodedVideoFrame.width = i5;
        encodedVideoFrame.height = i6;
        if (z) {
            encodedVideoFrame.svcInfo = Integer.valueOf(i7);
        } else {
            encodedVideoFrame.svcInfo = null;
        }
        encodedVideoFrame.hdrType = c.a(i8);
        return encodedVideoFrame;
    }

    private d getNalTypeFromH264NALHeader(ByteBuffer byteBuffer, int i) {
        int i2 = byteBuffer.get(i) & Ascii.US;
        if (i2 != 5) {
            if (i2 != 6) {
                if (i2 != 7) {
                    if (i2 != 8) {
                        return d.UNKNOWN;
                    }
                    return d.PPS;
                }
                return d.SPS;
            }
            return d.SEI;
        }
        return d.IDR;
    }

    private d getNalTypeFromH265NALHeader(ByteBuffer byteBuffer, int i) {
        int i2 = (byteBuffer.get(i) & 126) >> 1;
        if (i2 != 39) {
            switch (i2) {
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                    return d.IDR;
                default:
                    switch (i2) {
                        case 32:
                            return d.VPS;
                        case 33:
                            return d.SPS;
                        case 34:
                            return d.PPS;
                        default:
                            return d.UNKNOWN;
                    }
            }
        }
        return d.SEI;
    }

    public static int getNextNALHeaderPos(int i, ByteBuffer byteBuffer) {
        while (true) {
            int i2 = i + 3;
            if (i2 < byteBuffer.remaining()) {
                if (byteBuffer.get(i) == 0 && byteBuffer.get(i + 1) == 0 && byteBuffer.get(i + 2) == 0 && byteBuffer.get(i2) == 1) {
                    return i + 4;
                }
                if (byteBuffer.get(i) == 0 && byteBuffer.get(i + 1) == 0 && byteBuffer.get(i + 2) == 1) {
                    return i2;
                }
                i++;
            } else {
                return -1;
            }
        }
    }

    private native void nativeRelease(long j);

    public static long resetEncodedVideoFrame(EncodedVideoFrame encodedVideoFrame) {
        long j = encodedVideoFrame.nativePtr;
        if (j == 0 || encodedVideoFrame.data == null) {
            return 0L;
        }
        encodedVideoFrame.data = null;
        encodedVideoFrame.nativePtr = 0L;
        return j;
    }

    public void finalize() throws Throwable {
        super.finalize();
        if (this.nativePtr != 0) {
            LiteavLog.w(TAG, "nativePtr != 0, must call release before finalize ");
            release();
        }
    }

    public boolean isH265() {
        if (this.codecType == a.H265) {
            return true;
        }
        return false;
    }

    public boolean isHDRFrame() {
        c cVar = this.hdrType;
        if (cVar != null && cVar != c.UNKNOWN) {
            return true;
        }
        return false;
    }

    public boolean isIDRFrame() {
        d dVar = this.nalType;
        if (dVar != null && dVar == d.IDR) {
            return true;
        }
        return false;
    }

    public boolean isRPSEnable() {
        e eVar = this.profileType;
        if (eVar != e.BASELINE_RPS && eVar != e.MAIN_RPS && eVar != e.HIGH_RPS) {
            return false;
        }
        return true;
    }

    public boolean isSVCEnable() {
        if (this.svcInfo != null) {
            return true;
        }
        return false;
    }

    public boolean isValidFrame() {
        ByteBuffer byteBuffer = this.data;
        if (byteBuffer != null && byteBuffer.remaining() > 0 && this.nalType != null && this.codecType != null && this.width > 0 && this.height > 0) {
            return true;
        }
        return false;
    }

    public void release() {
        long j = this.nativePtr;
        if (j != 0) {
            nativeRelease(j);
            this.nativePtr = 0L;
        }
    }

    public String toString() {
        return "nalType = " + this.nalType + ", profiletype=" + this.profileType + ", rotation=" + this.rotation + ", codecType=" + this.codecType + ", dts=" + this.dts + ", pts=" + this.pts + ", gopIndex=" + this.gopIndex + ", gopFrameIndex=" + this.gopFrameIndex + ", frameIndex=" + this.frameIndex;
    }

    public void updateNALTypeAccordingNALHeader() {
        d nalTypeFromH264NALHeader;
        if (this.data != null) {
            d dVar = this.nalType;
            if (dVar == null || dVar == d.UNKNOWN) {
                int i = 0;
                while (true) {
                    i = getNextNALHeaderPos(i, this.data);
                    if (i != -1 && i < this.data.remaining()) {
                        d dVar2 = d.UNKNOWN;
                        if (isH265()) {
                            nalTypeFromH264NALHeader = getNalTypeFromH265NALHeader(this.data, i);
                        } else {
                            nalTypeFromH264NALHeader = getNalTypeFromH264NALHeader(this.data, i);
                        }
                        d dVar3 = this.nalType;
                        if (dVar3 == null || dVar3 == d.UNKNOWN || nalTypeFromH264NALHeader == d.IDR) {
                            this.nalType = nalTypeFromH264NALHeader;
                        }
                        d dVar4 = this.nalType;
                        if (dVar4 != d.SPS && dVar4 != d.PPS && dVar4 != d.VPS && dVar4 != d.SEI) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
        }
    }
}
