package com.tencent.liteav.videobase.egl;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class d extends IOException {
    private static final long serialVersionUID = 2723743254380545567L;
    private final int mErrorCode;
    private final String mErrorMessage;

    public d(int i) {
        this(i, "");
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        if (this.mErrorMessage != null) {
            return "EGL error code: " + this.mErrorCode + ", " + this.mErrorMessage;
        }
        return "EGL error code: " + this.mErrorCode + ", " + super.getMessage();
    }

    public d(int i, String str) {
        super(str);
        this.mErrorCode = i;
        this.mErrorMessage = str;
    }

    public d(int i, String str, Throwable th) {
        super(str, th);
        this.mErrorCode = i;
        this.mErrorMessage = str;
    }
}
