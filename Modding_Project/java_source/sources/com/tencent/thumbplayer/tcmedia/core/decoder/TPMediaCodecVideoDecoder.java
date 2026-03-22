package com.tencent.thumbplayer.tcmedia.core.decoder;

import android.media.Image;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Build;
import android.view.Surface;
import com.google.android.gms.common.Scopes;
import com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils;
import com.tencent.thumbplayer.tcmedia.core.common.TPNativeLog;
import com.tencent.thumbplayer.tcmedia.core.common.TPPixelFormat;
import com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo;
import com.tencent.thumbplayer.tcmedia.g.b;
import java.nio.ByteBuffer;
import java.util.ArrayList;
/* loaded from: classes6.dex */
public class TPMediaCodecVideoDecoder extends TPBaseMediaCodecDecoder {
    private static final String DEVICE_NAME_VIVO_X5L = "vivo X5L";
    private static final String KEY_CROP_BOTTOM = "crop-bottom";
    private static final String KEY_CROP_LEFT = "crop-left";
    private static final String KEY_CROP_RIGHT = "crop-right";
    private static final String KEY_CROP_TOP = "crop-top";
    private static final int PIXEL_STRIDE_CONTINUOUS = 1;
    private static final String TAG = "TPMediaCodecVideoDecode";
    private static final int YUV420P_PLANAR_COUNT = 3;
    private int mCropBottom;
    private int mCropLeft;
    private int mCropRight;
    private int mCropTop;
    private byte[] mCsd0Data;
    private byte[] mCsd1Data;
    private byte[] mCsd2Data;
    private boolean mDisableDolbyVisionComponent;
    private int mDolbyVisionLevel;
    private int mDolbyVisionProfile;
    private boolean mEnableMediaCodecOutputData;
    private ArrayList<String> mMimeCandidates;
    private int mRotation;
    private int mVideoHeight;
    private int mVideoWidth;

    public TPMediaCodecVideoDecoder(int i) {
        super(i);
        this.mEnableMediaCodecOutputData = false;
        this.mMimeCandidates = new ArrayList<>();
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        this.mCropLeft = 0;
        this.mCropRight = 0;
        this.mCropTop = 0;
        this.mCropBottom = 0;
        this.mRotation = 0;
        this.mDolbyVisionProfile = 0;
        this.mDolbyVisionLevel = 0;
        this.mCsd0Data = null;
        this.mCsd1Data = null;
        this.mCsd2Data = null;
        this.mDisableDolbyVisionComponent = false;
    }

    private void copyVideoDataFromImage(Image image, TPFrameInfo tPFrameInfo) {
        int i;
        if (image.getFormat() != 35) {
            tPFrameInfo.format = -1;
            tPFrameInfo.errCode = 3;
            TPNativeLog.printLog(4, TAG, "copyVideoDataFromImage: image format not support!");
            return;
        }
        tPFrameInfo.format = 0;
        int width = image.getWidth();
        int height = image.getHeight();
        Image.Plane[] planes = image.getPlanes();
        int[] iArr = tPFrameInfo.lineSize;
        if (iArr == null || iArr.length < 3) {
            tPFrameInfo.lineSize = new int[3];
        }
        byte[][] bArr = tPFrameInfo.videoData;
        if (bArr == null || bArr.length < 3) {
            tPFrameInfo.videoData = new byte[3];
        }
        for (int i2 = 0; i2 < 3; i2++) {
            if (i2 == 0) {
                i = 0;
            } else {
                i = 1;
            }
            copyVideoDataFromPlane(planes[i2], width >> i, height >> i, i2, tPFrameInfo);
        }
    }

    private void copyVideoDataFromPlane(Image.Plane plane, int i, int i2, int i3, TPFrameInfo tPFrameInfo) {
        ByteBuffer buffer = plane.getBuffer();
        tPFrameInfo.lineSize[i3] = i;
        int i4 = i * i2;
        byte[][] bArr = tPFrameInfo.videoData;
        byte[] bArr2 = bArr[i3];
        if (bArr2 == null || bArr2.length < i4) {
            bArr[i3] = new byte[i4];
        }
        if (plane.getPixelStride() == 1) {
            buffer.get(tPFrameInfo.videoData[i3], 0, i4);
            return;
        }
        for (int i5 = 0; i5 < i4; i5++) {
            tPFrameInfo.videoData[i3][i5] = buffer.get(plane.getPixelStride() * i5);
        }
    }

    private void processOutputData(b bVar, int i, MediaCodec.BufferInfo bufferInfo, TPFrameInfo tPFrameInfo) {
        if (bufferInfo.flags == 4 && bufferInfo.size <= 0) {
            TPNativeLog.printLog(2, TAG, "processOutputBuffer: bufferInfo.flags is BUFFER_FLAG_END_OF_STREAM, return EOS!");
            tPFrameInfo.format = -1;
            tPFrameInfo.errCode = 2;
            bVar.a(i, false);
            return;
        }
        Image b = bVar.b(i);
        if (b == null) {
            tPFrameInfo.format = -1;
            tPFrameInfo.errCode = 3;
            bVar.a(i, false);
            TPNativeLog.printLog(4, TAG, "processOutputBuffer: getOutputImage return null");
            return;
        }
        copyVideoDataFromImage(b, tPFrameInfo);
        bVar.a(i, false);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.TPBaseMediaCodecDecoder
    public void configCodec(b bVar, String str) {
        Surface surface;
        MediaFormat createVideoFormat = MediaFormat.createVideoFormat(str, this.mVideoWidth, this.mVideoHeight);
        createVideoFormat.setInteger("rotation-degrees", this.mRotation);
        if (TPSystemInfo.getDeviceName().equalsIgnoreCase(DEVICE_NAME_VIVO_X5L)) {
            createVideoFormat.setInteger("max-input-size", this.mVideoWidth * this.mVideoHeight);
        }
        byte[] bArr = this.mCsd0Data;
        if (bArr != null) {
            createVideoFormat.setByteBuffer("csd-0", ByteBuffer.wrap(bArr));
        }
        byte[] bArr2 = this.mCsd1Data;
        if (bArr2 != null) {
            createVideoFormat.setByteBuffer("csd-1", ByteBuffer.wrap(bArr2));
        }
        byte[] bArr3 = this.mCsd2Data;
        if (bArr3 != null) {
            createVideoFormat.setByteBuffer("csd-2", ByteBuffer.wrap(bArr3));
        }
        if ("video/dolby-vision".equals(str)) {
            createVideoFormat.setInteger(Scopes.PROFILE, TPCodecUtils.convertDolbyVisionToOmxProfile(this.mDolbyVisionProfile));
            createVideoFormat.setInteger("level", TPCodecUtils.convertDolbyVisionToOmxLevel(this.mDolbyVisionLevel));
        }
        if (this.mEnableMediaCodecOutputData) {
            createVideoFormat.setInteger("color-format", 2135033992);
            surface = null;
        } else {
            surface = this.mSurface;
        }
        bVar.a(createVideoFormat, surface, this.mMediaCrypto, 0);
        bVar.d(1);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.TPBaseMediaCodecDecoder
    public String getCodecName(String str, boolean z) {
        String dolbyVisionDecoderName;
        int i = this.mDolbyVisionProfile;
        if (i > 0 && !this.mDisableDolbyVisionComponent && (dolbyVisionDecoderName = TPCodecUtils.getDolbyVisionDecoderName(str, i, this.mDolbyVisionLevel, z)) != null) {
            return dolbyVisionDecoderName;
        }
        return TPCodecUtils.getDecoderName(str, z);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.TPBaseMediaCodecDecoder
    public String getLogTag() {
        return TAG;
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.TPBaseMediaCodecDecoder
    public ArrayList<String> getMimeCandidates() {
        return this.mMimeCandidates;
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public boolean initDecoder(String str, int i, int i2, int i3, int i4) {
        return false;
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.TPBaseMediaCodecDecoder
    public void processOutputBuffer(b bVar, int i, MediaCodec.BufferInfo bufferInfo, TPFrameInfo tPFrameInfo) {
        tPFrameInfo.width = this.mVideoWidth;
        tPFrameInfo.height = this.mVideoHeight;
        tPFrameInfo.cropLeft = this.mCropLeft;
        tPFrameInfo.cropRight = this.mCropRight;
        tPFrameInfo.cropTop = this.mCropTop;
        tPFrameInfo.cropBottom = this.mCropBottom;
        tPFrameInfo.format = TPPixelFormat.TP_PIX_FMT_MEDIACODEC;
        if (this.mEnableMediaCodecOutputData) {
            processOutputData(bVar, i, bufferInfo, tPFrameInfo);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.TPBaseMediaCodecDecoder
    public void processOutputConfigData(b bVar, int i, MediaCodec.BufferInfo bufferInfo, TPFrameInfo tPFrameInfo) {
        tPFrameInfo.errCode = 0;
        processOutputBuffer(bVar, i, bufferInfo, tPFrameInfo);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.TPBaseMediaCodecDecoder
    public void processOutputFormatChanged(MediaFormat mediaFormat) {
        boolean z;
        if (mediaFormat.containsKey(KEY_CROP_RIGHT) && mediaFormat.containsKey(KEY_CROP_LEFT) && mediaFormat.containsKey(KEY_CROP_BOTTOM) && mediaFormat.containsKey(KEY_CROP_TOP)) {
            z = true;
        } else {
            z = false;
        }
        this.mVideoWidth = mediaFormat.getInteger("width");
        this.mVideoHeight = mediaFormat.getInteger("height");
        if (z) {
            this.mCropLeft = mediaFormat.getInteger(KEY_CROP_LEFT);
            this.mCropRight = mediaFormat.getInteger(KEY_CROP_RIGHT);
            this.mCropTop = mediaFormat.getInteger(KEY_CROP_TOP);
            this.mCropBottom = mediaFormat.getInteger(KEY_CROP_BOTTOM);
        }
        TPNativeLog.printLog(2, TAG, "processOutputFormatChanged: mVideoWidth: " + this.mVideoWidth + ", mVideoHeight: " + this.mVideoHeight + ", mCropLeft: " + this.mCropLeft + ", mCropRight: " + this.mCropRight + ", mCropTop: " + this.mCropTop + ", mCropBottom: " + this.mCropBottom);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public int setOperateRate(float f) {
        return super.setOperateRate(f);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public int setOutputSurface(Surface surface) {
        if (this.mEnableMediaCodecOutputData) {
            return 3;
        }
        return super.setOutputSurface(surface);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public boolean setParamBool(int i, boolean z) {
        String logTag;
        StringBuilder sb;
        if (5 == i) {
            if (!this.mStarted) {
                this.mEnableMediaCodecOutputData = z;
            } else {
                logTag = getLogTag();
                sb = new StringBuilder("BOOL_ENABLE_MEDIACODEC_OUTPUT_DATA failed. need set before start, mStart=");
                sb.append(this.mStarted);
                sb.append(", api level is ");
                sb.append(Build.VERSION.SDK_INT);
                sb.append(", support api level = 21");
                TPNativeLog.printLog(3, logTag, sb.toString());
            }
        } else if (6 == i) {
            if (!this.mStarted) {
                this.mDisableDolbyVisionComponent = z;
            } else {
                logTag = getLogTag();
                sb = new StringBuilder("BOOL_FORCE_DOLBY_VISION_USE_HEVC_CODEC failed. need set before start, mStart=");
                sb.append(this.mStarted);
                TPNativeLog.printLog(3, logTag, sb.toString());
            }
        }
        return super.setParamBool(i, z);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public boolean setParamBytes(int i, byte[] bArr) {
        if (i == 200) {
            this.mCsd0Data = bArr;
        } else if (i == 201) {
            this.mCsd1Data = bArr;
        } else if (i == 202) {
            this.mCsd2Data = bArr;
        }
        return super.setParamBytes(i, bArr);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public boolean setParamObject(int i, Object obj) {
        return super.setParamObject(i, obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x007b, code lost:
        if (r5 != false) goto L11;
     */
    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean initDecoder(java.lang.String r4, int r5, int r6, int r7, android.view.Surface r8, int r9, int r10, int r11) {
        /*
            r3 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "initDecoder, mimeType:"
            r0.<init>(r1)
            r0.append(r4)
            java.lang.String r1 = " width:"
            r0.append(r1)
            r0.append(r5)
            java.lang.String r1 = " height:"
            r0.append(r1)
            r0.append(r6)
            java.lang.String r1 = " rotation:"
            r0.append(r1)
            r0.append(r7)
            java.lang.String r1 = " dvProfile:"
            r0.append(r1)
            r0.append(r10)
            java.lang.String r1 = " dvLevel:"
            r0.append(r1)
            r0.append(r11)
            java.lang.String r0 = r0.toString()
            r1 = 2
            java.lang.String r2 = "TPMediaCodecVideoDecode"
            com.tencent.thumbplayer.tcmedia.core.common.TPNativeLog.printLog(r1, r2, r0)
            r3.mVideoWidth = r5
            r3.mVideoHeight = r6
            r3.mRotation = r7
            r3.mSurface = r8
            r3.mDrmType = r9
            r3.mDolbyVisionProfile = r10
            r3.mDolbyVisionLevel = r11
            java.util.ArrayList<java.lang.String> r5 = r3.mMimeCandidates
            r5.clear()
            java.lang.String r5 = "video/dolby-vision"
            boolean r5 = r5.equals(r4)
            r6 = 1
            if (r5 == 0) goto L7e
            int r5 = r3.mDolbyVisionProfile
            int r5 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.convertDolbyVisionToOmxProfile(r5)
            r7 = 4
            if (r5 < r7) goto L67
            r7 = 256(0x100, float:3.59E-43)
            if (r5 > r7) goto L67
            r5 = r6
            goto L68
        L67:
            r5 = 0
        L68:
            boolean r7 = r3.mDisableDolbyVisionComponent
            java.lang.String r8 = "video/hevc"
            if (r7 == 0) goto L76
            if (r5 == 0) goto L76
        L70:
            java.util.ArrayList<java.lang.String> r4 = r3.mMimeCandidates
            r4.add(r8)
            goto L83
        L76:
            java.util.ArrayList<java.lang.String> r7 = r3.mMimeCandidates
            r7.add(r4)
            if (r5 == 0) goto L83
            goto L70
        L7e:
            java.util.ArrayList<java.lang.String> r5 = r3.mMimeCandidates
            r5.add(r4)
        L83:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.core.decoder.TPMediaCodecVideoDecoder.initDecoder(java.lang.String, int, int, int, android.view.Surface, int, int, int):boolean");
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.TPBaseMediaCodecDecoder
    public void processMediaCodecException(Exception exc) {
    }
}
