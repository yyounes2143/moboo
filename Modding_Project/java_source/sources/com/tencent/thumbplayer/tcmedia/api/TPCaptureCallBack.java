package com.tencent.thumbplayer.tcmedia.api;

import android.graphics.Bitmap;
/* loaded from: classes6.dex */
public interface TPCaptureCallBack {
    void onCaptureVideoFailed(int i);

    void onCaptureVideoSuccess(Bitmap bitmap);
}
