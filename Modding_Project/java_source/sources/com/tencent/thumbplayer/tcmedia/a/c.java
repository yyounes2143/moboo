package com.tencent.thumbplayer.tcmedia.a;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import com.tencent.thumbplayer.tcmedia.a.b;
import com.tencent.thumbplayer.tcmedia.api.TPCaptureCallBack;
import com.tencent.thumbplayer.tcmedia.core.imagegenerator.TPImageGeneratorParams;
import java.io.FileDescriptor;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public class c implements b.a, com.tencent.thumbplayer.tcmedia.adapter.a.a {

    /* renamed from: a  reason: collision with root package name */
    private Map<Integer, TPCaptureCallBack> f10487a = new HashMap();
    private String b;
    private FileDescriptor c;
    private AssetFileDescriptor d;

    public c(AssetFileDescriptor assetFileDescriptor) {
        this.d = assetFileDescriptor;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a
    public void a() {
        this.f10487a.clear();
    }

    public c(FileDescriptor fileDescriptor) {
        this.c = fileDescriptor;
    }

    @Override // com.tencent.thumbplayer.tcmedia.a.b.a
    public void a(int i, int i2) {
        TPCaptureCallBack tPCaptureCallBack = this.f10487a.get(Integer.valueOf(i));
        if (tPCaptureCallBack != null) {
            tPCaptureCallBack.onCaptureVideoFailed(i2);
        }
    }

    public c(String str) {
        this.b = str;
    }

    @Override // com.tencent.thumbplayer.tcmedia.a.b.a
    public void a(int i, long j, int i2, int i3, Bitmap bitmap, long j2) {
        TPCaptureCallBack tPCaptureCallBack = this.f10487a.get(Integer.valueOf(i));
        if (tPCaptureCallBack != null) {
            tPCaptureCallBack.onCaptureVideoSuccess(bitmap);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a
    public void a(long j, TPImageGeneratorParams tPImageGeneratorParams, TPCaptureCallBack tPCaptureCallBack) {
        b.d dVar = new b.d();
        dVar.f10486a = this.b;
        dVar.b = this.c;
        dVar.c = this.d;
        dVar.d = j;
        dVar.e = tPImageGeneratorParams.width;
        dVar.f = tPImageGeneratorParams.height;
        this.f10487a.put(Integer.valueOf(b.a().a(dVar, this)), tPCaptureCallBack);
    }
}
