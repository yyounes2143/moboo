package com.tencent.liteav.videoconsumer.renderer;

import android.graphics.Matrix;
import android.os.Looper;
import android.view.Surface;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class b extends RenderViewHelperInterface {

    /* renamed from: a  reason: collision with root package name */
    private final String f10427a;
    private final CustomHandler b;
    private final RenderViewHelperInterface.RenderViewListener c;
    private Surface d;

    public b(String str, Surface surface, RenderViewHelperInterface.RenderViewListener renderViewListener) {
        CustomHandler customHandler = new CustomHandler(Looper.getMainLooper());
        this.b = customHandler;
        String str2 = str + "SurfaceRenderHelper_" + hashCode();
        this.f10427a = str2;
        this.c = renderViewListener;
        if (surface == null) {
            LiteavLog.w(str2, "surface is null.");
            return;
        }
        this.d = surface;
        customHandler.post(c.a(this, surface));
    }

    public static /* synthetic */ void a(b bVar, Surface surface) {
        LiteavLog.i(bVar.f10427a, "construct,surface=".concat(String.valueOf(surface)));
        RenderViewHelperInterface.RenderViewListener renderViewListener = bVar.c;
        if (renderViewListener != null) {
            renderViewListener.onSurfaceChanged(surface, false);
        }
    }

    public static /* synthetic */ void b(b bVar) {
        String str = bVar.f10427a;
        LiteavLog.i(str, "release,mSurface=" + bVar.d);
        if (bVar.d == null) {
            return;
        }
        RenderViewHelperInterface.RenderViewListener renderViewListener = bVar.c;
        if (renderViewListener != null) {
            renderViewListener.onSurfaceDestroy();
        }
        bVar.d = null;
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final void checkViewAvailability() {
        this.b.post(e.a(this));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final Matrix getTransformMatrix(int i, int i2) {
        Matrix matrix = new Matrix();
        matrix.postScale(1.0f, -1.0f, i / 2.0f, i2 / 2.0f);
        return matrix;
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final boolean isUsingTextureView() {
        return false;
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final boolean isVisible() {
        return true;
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final void release(boolean z) {
        this.b.post(d.a(this));
    }

    public static /* synthetic */ void a(b bVar) {
        Surface surface = bVar.d;
        if (surface == null) {
            LiteavLog.i(bVar.f10427a, "view is not available when surface is null");
        } else if (surface.isValid()) {
        } else {
            LiteavLog.i(bVar.f10427a, "view is not available when %s is not valid", bVar.d);
        }
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final void enableNonUniformScale(boolean z) {
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final void updateVideoFrameInfo(GLConstants.GLScaleType gLScaleType, int i, int i2, boolean z) {
    }
}
