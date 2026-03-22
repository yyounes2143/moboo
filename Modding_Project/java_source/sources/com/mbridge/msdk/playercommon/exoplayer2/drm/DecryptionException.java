package com.mbridge.msdk.playercommon.exoplayer2.drm;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class DecryptionException extends Exception {
    public final int errorCode;

    public DecryptionException(int i, String str) {
        super(str);
        this.errorCode = i;
    }
}
