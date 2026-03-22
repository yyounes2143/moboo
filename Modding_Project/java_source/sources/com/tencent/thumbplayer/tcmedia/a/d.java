package com.tencent.thumbplayer.tcmedia.a;

import android.graphics.Bitmap;
import android.util.Log;
import com.tencent.thumbplayer.tcmedia.api.TPCaptureCallBack;
import com.tencent.thumbplayer.tcmedia.core.common.TPGeneralError;
import com.tencent.thumbplayer.tcmedia.core.common.TPVideoFrame;
import com.tencent.thumbplayer.tcmedia.core.imagegenerator.ITPImageGeneratorCallback;
import com.tencent.thumbplayer.tcmedia.core.imagegenerator.TPImageGenerator;
import com.tencent.thumbplayer.tcmedia.core.imagegenerator.TPImageGeneratorParams;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public class d implements com.tencent.thumbplayer.tcmedia.adapter.a.a, ITPImageGeneratorCallback {

    /* renamed from: a  reason: collision with root package name */
    private long f10488a;
    private TPImageGenerator b;
    private Map<Long, TPCaptureCallBack> c;

    public d(int i) {
        this(i, 0L, 0L);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a
    public void a() {
        try {
            this.b.cancelAllImageGenerations();
            this.b.unInit();
        } catch (Exception e) {
            TPLogUtil.e("TPThumbPlayer[TPThumbCapture.java]", "release: " + Log.getStackTraceString(e));
        }
        this.c.clear();
        this.b = null;
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.imagegenerator.ITPImageGeneratorCallback
    public void onImageGenerationCompleted(int i, long j, long j2, long j3, TPVideoFrame tPVideoFrame) {
        TPCaptureCallBack tPCaptureCallBack = this.c.get(Long.valueOf(j3));
        if (tPCaptureCallBack != null) {
            if (i == 0 && tPVideoFrame != null) {
                Bitmap a2 = a.a(tPVideoFrame);
                if (a2 != null) {
                    tPCaptureCallBack.onCaptureVideoSuccess(a2);
                } else {
                    i = TPGeneralError.FAILED;
                }
            }
            tPCaptureCallBack.onCaptureVideoFailed(i);
        }
        this.c.remove(Long.valueOf(j3));
    }

    public d(int i, long j, long j2) {
        this.f10488a = 0L;
        this.b = new TPImageGenerator(i, j, j2, this);
        this.c = new HashMap();
        try {
            this.b.init();
        } catch (Exception e) {
            TPLogUtil.e("TPThumbPlayer[TPThumbCapture.java]", "init: " + Log.getStackTraceString(e));
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a
    public void a(long j, TPImageGeneratorParams tPImageGeneratorParams, TPCaptureCallBack tPCaptureCallBack) {
        if (tPImageGeneratorParams == null) {
            tPImageGeneratorParams = new TPImageGeneratorParams();
            tPImageGeneratorParams.format = 37;
        }
        TPImageGeneratorParams tPImageGeneratorParams2 = tPImageGeneratorParams;
        long j2 = this.f10488a + 1;
        this.f10488a = j2;
        this.c.put(Long.valueOf(j2), tPCaptureCallBack);
        try {
            this.b.generateImageAsyncAtTime(j, this.f10488a, tPImageGeneratorParams2);
        } catch (Exception e) {
            TPLogUtil.e("TPThumbPlayer[TPThumbCapture.java]", "generateImageAsyncAtTime: " + Log.getStackTraceString(e));
        }
    }

    public d(String str) {
        this.f10488a = 0L;
        this.b = new TPImageGenerator(str, this);
        this.c = new HashMap();
        try {
            this.b.init();
        } catch (Exception e) {
            TPLogUtil.e("TPThumbPlayer[TPThumbCapture.java]", "init: " + Log.getStackTraceString(e));
        }
    }
}
