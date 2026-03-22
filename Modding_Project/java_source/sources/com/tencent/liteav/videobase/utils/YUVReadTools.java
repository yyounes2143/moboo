package com.tencent.liteav.videobase.utils;

import com.tencent.liteav.base.annotations.JNINamespace;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
@JNINamespace("liteav::video")
/* loaded from: classes6.dex */
public class YUVReadTools {
    public static native void nativeReadYUVPlanesForByteArray(int i, int i2, byte[] bArr);

    public static native void nativeReadYUVPlanesForByteBuffer(int i, int i2, ByteBuffer byteBuffer);
}
