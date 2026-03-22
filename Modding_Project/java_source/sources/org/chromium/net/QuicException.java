package org.chromium.net;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class QuicException extends NetworkException {
    public QuicException(String str, Throwable th) {
        super(str, th);
    }

    public abstract int getQuicDetailedErrorCode();
}
