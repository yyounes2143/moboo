package com.tencent.liteav.extensions.codec;

import android.media.MediaFormat;
import com.tencent.liteav.extensions.codec.AacMediaCodecWrapper;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class HardwareAacEncoder {

    /* renamed from: a  reason: collision with root package name */
    private final AacMediaCodecWrapper f10266a = new AacMediaCodecWrapper(AacMediaCodecWrapper.a.f10264a);

    public ByteBuffer encode(ByteBuffer byteBuffer) {
        return this.f10266a.processFrame(byteBuffer);
    }

    public boolean init(int i, int i2, int i3) {
        MediaFormat createAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", i, i2);
        createAudioFormat.setInteger("bitrate", i3);
        createAudioFormat.setInteger("aac-profile", 2);
        return this.f10266a.a(createAudioFormat);
    }

    public void unInit() {
        this.f10266a.a();
    }
}
