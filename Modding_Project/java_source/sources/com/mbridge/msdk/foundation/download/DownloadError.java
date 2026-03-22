package com.mbridge.msdk.foundation.download;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class DownloadError {
    private Exception exception;

    public DownloadError(Exception exc) {
        this.exception = exc;
    }

    public Exception getException() {
        return this.exception;
    }
}
