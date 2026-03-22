package com.tencent.liteav.extensions.codec;

import android.media.MediaFormat;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.extensions.codec.AacMediaCodecWrapper;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class HardwareAacDecoder {

    /* renamed from: a  reason: collision with root package name */
    private final AacMediaCodecWrapper f10265a = new AacMediaCodecWrapper(AacMediaCodecWrapper.a.b);

    public ByteBuffer decode(ByteBuffer byteBuffer) {
        return this.f10265a.processFrame(byteBuffer);
    }

    public int getCacheSize() {
        return this.f10265a.b;
    }

    public int getOutputChannelCount() {
        MediaFormat mediaFormat = this.f10265a.f10263a;
        if (mediaFormat == null) {
            return -1;
        }
        try {
            return mediaFormat.getInteger("channel-count");
        } catch (Exception e) {
            Log.e("HardwareAacDecoder", "getOutputChannelCount failed. ".concat(String.valueOf(e)), new Object[0]);
            return -1;
        }
    }

    public int getOutputSampleRate() {
        MediaFormat mediaFormat = this.f10265a.f10263a;
        if (mediaFormat == null) {
            return -1;
        }
        try {
            return mediaFormat.getInteger("sample-rate");
        } catch (Exception e) {
            Log.e("HardwareAacDecoder", "getOutputSampleRate failed. ".concat(String.valueOf(e)), new Object[0]);
            return -1;
        }
    }

    public boolean init(int i, int i2, ByteBuffer byteBuffer) {
        MediaFormat createAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", i, i2);
        createAudioFormat.setString("mime", "audio/mp4a-latm");
        createAudioFormat.setByteBuffer("csd-0", byteBuffer);
        return this.f10265a.a(createAudioFormat);
    }

    public void unInit() {
        this.f10265a.a();
    }
}
