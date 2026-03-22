package com.tencent.liteav.videoconsumer.renderer;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.Size;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class f extends RenderViewHelperInterface {

    /* renamed from: a  reason: collision with root package name */
    private final String f10431a;
    private final CustomHandler b;
    private final RenderViewHelperInterface.RenderViewListener c;
    private SurfaceView d;
    private final Size e;
    private final Size f;
    private GLConstants.GLScaleType g;
    private boolean h;
    private boolean i;
    private final SurfaceHolder.Callback j;
    private final View.OnLayoutChangeListener k;

    public f(String str, SurfaceView surfaceView, RenderViewHelperInterface.RenderViewListener renderViewListener) {
        CustomHandler customHandler = new CustomHandler(Looper.getMainLooper());
        this.b = customHandler;
        this.e = new Size();
        this.f = new Size();
        this.g = null;
        this.h = false;
        this.i = true;
        this.j = new SurfaceHolder.Callback() { // from class: com.tencent.liteav.videoconsumer.renderer.f.1
            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                if (surfaceHolder != null) {
                    LiteavLog.i(f.this.f10431a, "surfaceChanged,format=%d,Size(%dx%d)", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
                    f.this.a(surfaceHolder.getSurface());
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceCreated(SurfaceHolder surfaceHolder) {
                if (surfaceHolder != null) {
                    Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
                    LiteavLog.i(f.this.f10431a, "surfaceCreated,Size(%dx%d)", Integer.valueOf(surfaceFrame.width()), Integer.valueOf(surfaceFrame.height()));
                    f.this.a(surfaceHolder.getSurface());
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                LiteavLog.i(f.this.f10431a, "surfaceDestroyed");
                f.this.a();
            }
        };
        this.k = new View.OnLayoutChangeListener() { // from class: com.tencent.liteav.videoconsumer.renderer.f.2
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                if (f.this.h) {
                    if (f.this.f.width != view.getWidth() || f.this.f.height != view.getHeight()) {
                        f.this.b();
                    }
                }
            }
        };
        String str2 = str + "SurfaceViewRenderHelper_" + hashCode();
        this.f10431a = str2;
        this.c = renderViewListener;
        if (surfaceView == null) {
            LiteavLog.w(str2, "surfaceView is null.");
            return;
        }
        this.d = surfaceView;
        customHandler.post(g.a(this, surfaceView));
    }

    public static /* synthetic */ void b(f fVar) {
        SurfaceView surfaceView = fVar.d;
        if (surfaceView == null) {
            LiteavLog.i(fVar.f10431a, "view is not available when surfaceView is null");
            return;
        }
        Surface surface = surfaceView.getHolder().getSurface();
        boolean z = surface != null && surface.isValid();
        if (!z || fVar.d.getWidth() == 0 || fVar.d.getHeight() == 0 || !fVar.d.isShown()) {
            String str = fVar.f10431a;
            SurfaceView surfaceView2 = fVar.d;
            LiteavLog.i(str, "%s is not available when isShown:%b, surface isValid:%b", surfaceView2, Boolean.valueOf(surfaceView2.isShown()), Boolean.valueOf(z));
        }
        fVar.i = fVar.d.isShown();
    }

    public static /* synthetic */ void c(f fVar) {
        String str = fVar.f10431a;
        LiteavLog.i(str, "release,mSurfaceView=" + fVar.d);
        if (fVar.d == null) {
            return;
        }
        fVar.a();
        fVar.d.getHolder().removeCallback(fVar.j);
        fVar.d = null;
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final void checkViewAvailability() {
        this.b.post(i.a(this));
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
        return this.i;
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final void release(boolean z) {
        this.b.post(h.a(this));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final void updateVideoFrameInfo(GLConstants.GLScaleType gLScaleType, int i, int i2, boolean z) {
        if (this.g == gLScaleType && this.h == z) {
            Size size = this.e;
            if (size.width == i && size.height == i2) {
                return;
            }
        }
        this.h = z;
        this.g = gLScaleType;
        this.e.set(i, i2);
        if (this.h) {
            this.b.runOrPost(j.a(this));
        }
    }

    public static /* synthetic */ void a(f fVar, SurfaceView surfaceView) {
        SurfaceHolder holder = surfaceView.getHolder();
        if (holder.getSurface().isValid()) {
            Surface surface = holder.getSurface();
            Rect surfaceFrame = holder.getSurfaceFrame();
            LiteavLog.i(fVar.f10431a, "construct,surface=%s,Size(%dx%d)", surface, Integer.valueOf(surfaceFrame.width()), Integer.valueOf(surfaceFrame.height()));
            fVar.a(surface);
        } else {
            LiteavLog.i(fVar.f10431a, "construct,surfaceView not valid.");
        }
        holder.addCallback(fVar.j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0061, code lost:
        if (r0 == com.tencent.liteav.videobase.base.GLConstants.GLScaleType.CENTER_CROP) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006e, code lost:
        if (r0 == com.tencent.liteav.videobase.base.GLConstants.GLScaleType.CENTER_CROP) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0071, code lost:
        r2 = 1.0d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b() {
        /*
            r9 = this;
            android.view.SurfaceView r0 = r9.d
            if (r0 == 0) goto Lb6
            android.view.ViewParent r0 = r0.getParent()
            boolean r0 = r0 instanceof com.tencent.rtmp.ui.TXCloudVideoView
            if (r0 != 0) goto Le
            goto Lb6
        Le:
            android.view.SurfaceView r0 = r9.d
            android.view.ViewParent r0 = r0.getParent()
            com.tencent.rtmp.ui.TXCloudVideoView r0 = (com.tencent.rtmp.ui.TXCloudVideoView) r0
            com.tencent.liteav.base.util.Size r1 = new com.tencent.liteav.base.util.Size
            int r2 = r0.getWidth()
            int r3 = r0.getHeight()
            r1.<init>(r2, r3)
            com.tencent.liteav.base.util.Size r2 = r9.e
            boolean r2 = r2.isValid()
            if (r2 == 0) goto Lb6
            boolean r2 = r1.isValid()
            if (r2 != 0) goto L33
            goto Lb6
        L33:
            com.tencent.liteav.base.util.Size r2 = r9.f
            boolean r2 = r2.isValid()
            if (r2 != 0) goto L40
            android.view.View$OnLayoutChangeListener r2 = r9.k
            r0.addOnLayoutChangeListener(r2)
        L40:
            com.tencent.liteav.base.util.Size r0 = r9.f
            r0.set(r1)
            double r2 = r1.aspectRatio()
            com.tencent.liteav.base.util.Size r0 = r9.e
            double r4 = r0.aspectRatio()
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            r6 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            if (r0 >= 0) goto L65
            com.tencent.liteav.videobase.base.GLConstants$GLScaleType r0 = r9.g
            com.tencent.liteav.videobase.base.GLConstants$GLScaleType r8 = com.tencent.liteav.videobase.base.GLConstants.GLScaleType.FIT_CENTER
            if (r0 != r8) goto L5f
        L5b:
            double r4 = r4 / r2
            r2 = r6
            r6 = r4
            goto L72
        L5f:
            com.tencent.liteav.videobase.base.GLConstants$GLScaleType r8 = com.tencent.liteav.videobase.base.GLConstants.GLScaleType.CENTER_CROP
            if (r0 != r8) goto L71
        L63:
            double r2 = r2 / r4
            goto L72
        L65:
            com.tencent.liteav.videobase.base.GLConstants$GLScaleType r0 = r9.g
            com.tencent.liteav.videobase.base.GLConstants$GLScaleType r8 = com.tencent.liteav.videobase.base.GLConstants.GLScaleType.FIT_CENTER
            if (r0 != r8) goto L6c
            goto L63
        L6c:
            com.tencent.liteav.videobase.base.GLConstants$GLScaleType r8 = com.tencent.liteav.videobase.base.GLConstants.GLScaleType.CENTER_CROP
            if (r0 != r8) goto L71
            goto L5b
        L71:
            r2 = r6
        L72:
            android.view.SurfaceView r0 = r9.d
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            int r4 = r1.getWidth()
            double r4 = (double) r4
            double r4 = r4 * r6
            int r4 = (int) r4
            r0.width = r4
            int r1 = r1.getHeight()
            double r4 = (double) r1
            double r4 = r4 * r2
            int r1 = (int) r4
            r0.height = r1
            boolean r1 = r0 instanceof android.widget.FrameLayout.LayoutParams
            if (r1 == 0) goto L95
            r1 = r0
            android.widget.FrameLayout$LayoutParams r1 = (android.widget.FrameLayout.LayoutParams) r1
            r2 = 17
            r1.gravity = r2
        L95:
            android.view.SurfaceView r1 = r9.d
            r1.setLayoutParams(r0)
            java.lang.String r1 = r9.f10431a
            int r2 = r0.width
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            int r0 = r0.height
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = 0
            r3[r4] = r2
            r2 = 1
            r3[r2] = r0
            java.lang.String r0 = "adjust view size to %d*%d"
            com.tencent.liteav.base.util.LiteavLog.i(r1, r0, r3)
        Lb6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoconsumer.renderer.f.b():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Surface surface) {
        RenderViewHelperInterface.RenderViewListener renderViewListener = this.c;
        if (renderViewListener != null) {
            renderViewListener.onSurfaceChanged(surface, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        RenderViewHelperInterface.RenderViewListener renderViewListener = this.c;
        if (renderViewListener != null) {
            renderViewListener.onSurfaceDestroy();
        }
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final void enableNonUniformScale(boolean z) {
    }
}
