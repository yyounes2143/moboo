package com.tencent.liteav.videoconsumer.renderer;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Surface;
import android.view.TextureView;
import com.tencent.liteav.base.util.CommonUtil;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.Size;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.egl.EGLCore;
import com.tencent.liteav.videobase.frame.FrameMetaData;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.BitmapUtils;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.liteav.videobase.videobase.e;
import com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface;
import com.tencent.liteav.videoconsumer.renderer.u;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class v extends t implements RenderViewHelperInterface.RenderViewListener {
    private com.tencent.liteav.videobase.base.a B;
    private u C;
    private Bitmap E;
    private a G;
    private List<PointF> H;
    private List<PointF> I;
    private final CustomHandler f;
    private final com.tencent.liteav.videobase.videobase.c g;
    private Object n;
    private com.tencent.liteav.videobase.frame.i q;
    private com.tencent.liteav.videobase.frame.e r;
    private DisplayTarget w;
    private RenderViewHelperInterface x;

    /* renamed from: a */
    public final String f10448a = "VideoRenderer_" + hashCode();
    private final Handler e = new Handler(Looper.getMainLooper());
    private final com.tencent.liteav.base.util.m i = new com.tencent.liteav.base.util.m(5);
    private final com.tencent.liteav.base.a.b j = new com.tencent.liteav.base.a.b();
    private final Size k = new Size();
    private Surface l = null;
    private boolean m = false;
    private EGLCore o = null;
    private final com.tencent.liteav.videobase.frame.c p = new com.tencent.liteav.videobase.frame.c();
    public final com.tencent.liteav.videobase.utils.f b = new com.tencent.liteav.videobase.utils.f();
    private GLConstants.GLScaleType s = GLConstants.GLScaleType.CENTER_CROP;
    private com.tencent.liteav.base.util.l t = com.tencent.liteav.base.util.l.NORMAL;
    private boolean u = false;
    private boolean v = false;
    private final Size y = new Size();
    public volatile boolean c = false;
    public boolean d = false;
    private boolean z = false;
    private final Size A = new Size();
    private boolean D = false;
    private final com.tencent.liteav.base.a.a F = new com.tencent.liteav.base.a.a(5000);
    private final com.tencent.liteav.base.util.m h = null;

    public v(Looper looper, com.tencent.liteav.videobase.videobase.c cVar) {
        this.f = new CustomHandler(looper);
        this.g = cVar;
    }

    public static /* synthetic */ void a(v vVar, u uVar) {
        LiteavLog.i(vVar.f10448a, "Start");
        if (vVar.c) {
            LiteavLog.w(vVar.f10448a, "renderer is started!");
            return;
        }
        vVar.c = true;
        vVar.C = uVar;
        DisplayTarget displayTarget = vVar.w;
        if (displayTarget != null) {
            vVar.b(displayTarget, true);
        }
        vVar.F.f10202a = SystemClock.elapsedRealtime();
    }

    public void b(DisplayTarget displayTarget, boolean z) {
        String str = this.f10448a;
        LiteavLog.i(str, "setDisplayViewInternal=" + displayTarget + ",clearLastImage=" + z);
        boolean equals = CommonUtil.equals(this.w, displayTarget);
        if (equals && displayTarget != null && this.x != null) {
            LiteavLog.w(this.f10448a, "view is equal and RenderViewHelper is created.");
            return;
        }
        if (!equals) {
            this.D = true;
            DisplayTarget displayTarget2 = this.w;
            if (displayTarget2 != null && z) {
                displayTarget2.hideAll();
            }
        }
        a(z);
        this.w = displayTarget;
        if (displayTarget == null) {
            return;
        }
        displayTarget.showAll();
        this.x = RenderViewHelperInterface.create(displayTarget, this);
    }

    public static /* synthetic */ void c(v vVar) {
        v vVar2;
        RenderViewHelperInterface renderViewHelperInterface;
        PixelFrame a2 = vVar.b.a();
        if (a2 == null) {
            LiteavLog.d(vVar.f10448a, "renderFrameInternal pixelFrame is null!");
            return;
        }
        vVar.y.set(a2.getWidth(), a2.getHeight());
        FrameMetaData metaData = a2.getMetaData();
        if (metaData != null) {
            vVar.t = metaData.getRenderRotation();
            vVar.u = metaData.isRenderMirrorHorizontal();
            vVar.v = metaData.isRenderMirrorVertical();
            vVar.y.set(metaData.getCaptureRealSize());
        }
        if (vVar.F.a() && (renderViewHelperInterface = vVar.x) != null) {
            renderViewHelperInterface.checkViewAvailability();
        }
        if (vVar.z) {
            RenderViewHelperInterface renderViewHelperInterface2 = vVar.x;
            if (renderViewHelperInterface2 != null) {
                renderViewHelperInterface2.updateVideoFrameInfo(vVar.s, a2.getWidth(), a2.getHeight(), vVar.z);
            }
            int i = u.a.f10447a;
        } else if (vVar.x == null) {
            int i2 = u.a.f10447a;
        } else if (!vVar.a(a2)) {
            int i3 = u.a.f10447a;
            LiteavLog.e(vVar.j.a("makeCurrent"), vVar.f10448a, "make current failed.", new Object[0]);
        } else {
            vVar.b();
            PixelFrame pixelFrame = new PixelFrame(a2);
            boolean z = vVar.u;
            boolean z2 = vVar.v;
            com.tencent.liteav.base.util.l lVar = vVar.t;
            pixelFrame.setRotation(com.tencent.liteav.base.util.l.a((pixelFrame.getRotation().mValue + lVar.mValue) % TXVodDownloadDataSource.QUALITY_360P));
            if (z) {
                pixelFrame.setMirrorHorizontal(!pixelFrame.isMirrorHorizontal());
            }
            if (z2) {
                pixelFrame.setMirrorVertical(!pixelFrame.isMirrorVertical());
            }
            if (lVar == com.tencent.liteav.base.util.l.ROTATION_90 || lVar == com.tencent.liteav.base.util.l.ROTATION_270) {
                int width = pixelFrame.getWidth();
                pixelFrame.setWidth(pixelFrame.getHeight());
                pixelFrame.setHeight(width);
            }
            pixelFrame.setMirrorVertical(!pixelFrame.isMirrorVertical());
            if (pixelFrame.getRotation() != com.tencent.liteav.base.util.l.NORMAL) {
                com.tencent.liteav.base.util.l rotation = pixelFrame.getRotation();
                com.tencent.liteav.base.util.l lVar2 = com.tencent.liteav.base.util.l.ROTATION_180;
                if (rotation != lVar2) {
                    pixelFrame.setRotation(com.tencent.liteav.base.util.l.a((pixelFrame.getRotation().mValue + lVar2.mValue) % TXVodDownloadDataSource.QUALITY_360P));
                }
            }
            vVar.A.width = pixelFrame.getWidth();
            vVar.A.height = pixelFrame.getHeight();
            vVar.a(pixelFrame, vVar.s);
            if (vVar.B != null) {
                OpenGlUtils.bindFramebuffer(36160, 0);
                Size size = vVar.k;
                int i4 = size.width;
                int i5 = size.height;
                com.tencent.liteav.videobase.base.a aVar = vVar.B;
                if (aVar != null) {
                    vVar.B = null;
                    ByteBuffer b = com.tencent.liteav.videobase.utils.d.b(i4 * i5 * 4);
                    if (b == null) {
                        LiteavLog.e(vVar.f10448a, "snapshotVideoFrameFromFrameBuffer, allocate direct buffer failed.");
                        aVar.onComplete(null);
                    } else {
                        b.order(ByteOrder.nativeOrder());
                        b.position(0);
                        GLES20.glReadPixels(0, 0, i4, i5, 6408, 5121, b);
                        vVar2 = vVar;
                        vVar.e.post(y.a(vVar2, vVar.x, b, i4, i5, aVar));
                        if (!vVar2.c() && OpenGlUtils.getGLErrorCount() <= 0) {
                            int i6 = u.a.f10447a;
                            if (vVar2.D) {
                                e.b bVar = e.b.EVT_CODE_NONE;
                                vVar2.D = false;
                            }
                        } else {
                            int i7 = u.a.f10447a;
                            LiteavLog.e(vVar2.j.a("renderFailed"), vVar2.f10448a, "render frame failed.", new Object[0]);
                        }
                    }
                }
            }
            vVar2 = vVar;
            if (!vVar2.c()) {
            }
            int i72 = u.a.f10447a;
            LiteavLog.e(vVar2.j.a("renderFailed"), vVar2.f10448a, "render frame failed.", new Object[0]);
        }
        a2.release();
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface.RenderViewListener
    public final void onRequestRedraw(Bitmap bitmap) {
        a(bitmap);
        a(aa.a(this));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface.RenderViewListener
    public final void onSurfaceChanged(Surface surface, boolean z) {
        a(z.a(this, surface, z));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface.RenderViewListener
    public final void onSurfaceDestroy() {
        Runnable a2 = ab.a(this);
        com.tencent.liteav.base.util.m mVar = this.h;
        if (mVar != null) {
            CountDownLatch countDownLatch = new CountDownLatch(1);
            mVar.f10254a.execute(com.tencent.liteav.base.util.o.a(a2, countDownLatch));
            try {
                countDownLatch.await(2000L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else if (Looper.myLooper() == this.f.getLooper()) {
            a2.run();
        } else {
            this.f.runAndWaitDone(a2, 2000L);
        }
    }

    public static /* synthetic */ void a(v vVar, boolean z) {
        ArrayList arrayList;
        Surface surface;
        LiteavLog.i(vVar.f10448a, "Stop,clearLastImage=".concat(String.valueOf(z)));
        if (!vVar.c) {
            LiteavLog.w(vVar.f10448a, "renderer is not started!");
            return;
        }
        vVar.c = false;
        vVar.B = null;
        vVar.a(z);
        DisplayTarget displayTarget = vVar.w;
        if (displayTarget != null && z) {
            displayTarget.hideAll();
        }
        com.tencent.liteav.videobase.utils.f fVar = vVar.b;
        synchronized (fVar) {
            arrayList = new ArrayList(fVar.f10404a);
            fVar.f10404a.clear();
        }
        LiteavLog.i("RingFrameQueue", "evictAll pixelFrame.");
        PixelFrame.releasePixelFrames(arrayList);
        vVar.a();
        if (vVar.m && (surface = vVar.l) != null) {
            surface.release();
            vVar.m = false;
        }
        vVar.l = null;
        vVar.k.set(0, 0);
        vVar.y.set(0, 0);
        vVar.d = false;
    }

    private void b() {
        EGLCore eGLCore = this.o;
        if (eGLCore == null) {
            return;
        }
        Size surfaceSize = eGLCore.getSurfaceSize();
        if (this.k.equals(surfaceSize)) {
            return;
        }
        com.tencent.liteav.base.a.a a2 = this.j.a("updateSurfaceSize");
        String str = this.f10448a;
        LiteavLog.i(a2, str, "surface size changed,old size=" + this.k + ",new size=" + surfaceSize, new Object[0]);
        this.k.set(surfaceSize);
        if (this.l != null) {
            com.tencent.liteav.videobase.videobase.f fVar = com.tencent.liteav.videobase.videobase.f.STATUS_VIDEO_NONE;
            Size size = this.k;
            int i = size.width;
            int i2 = size.height;
        }
    }

    public static /* synthetic */ void b(v vVar) {
        PixelFrame createFromBitmap;
        Bitmap a2 = vVar.a((Bitmap) null);
        if (a2 == null || (createFromBitmap = PixelFrame.createFromBitmap(a2)) == null || !vVar.a(createFromBitmap)) {
            return;
        }
        vVar.b();
        createFromBitmap.setMirrorVertical(true);
        vVar.a(createFromBitmap, vVar.s);
        vVar.c();
    }

    public final void a(DisplayTarget displayTarget, boolean z) {
        a(ae.a(this, displayTarget, z));
    }

    public final void a(GLConstants.GLScaleType gLScaleType) {
        a(af.a(this, gLScaleType));
    }

    public static /* synthetic */ void a(v vVar, GLConstants.GLScaleType gLScaleType) {
        if (vVar.s != gLScaleType) {
            LiteavLog.i(vVar.f10448a, "setScaleType ".concat(String.valueOf(gLScaleType)));
            vVar.s = gLScaleType;
        }
    }

    public final void a(com.tencent.liteav.base.util.l lVar) {
        a(ag.a(this, lVar));
    }

    public static /* synthetic */ void a(v vVar, com.tencent.liteav.base.util.l lVar) {
        if (vVar.t != lVar) {
            LiteavLog.i(vVar.f10448a, "setRenderRotation ".concat(String.valueOf(lVar)));
            vVar.t = lVar;
        }
    }

    public final void a(Runnable runnable) {
        com.tencent.liteav.base.util.m mVar = this.h;
        if (mVar != null) {
            mVar.a(runnable);
        } else if (Looper.myLooper() == this.f.getLooper()) {
            runnable.run();
        } else {
            this.f.post(runnable);
        }
    }

    private void a() {
        if (this.o == null) {
            return;
        }
        com.tencent.liteav.base.a.a a2 = this.j.a("uninitGL");
        String str = this.f10448a;
        Surface surface = this.l;
        LiteavLog.i(a2, str, "uninitializeEGL %d %s", Integer.valueOf(surface != null ? surface.hashCode() : 0), this.k);
        try {
            this.o.makeCurrent();
        } catch (com.tencent.liteav.videobase.egl.d e) {
            LiteavLog.e(this.j.a("makeCurrentError"), this.f10448a, "uninitializeEGL EGLCore makeCurrent failed.".concat(String.valueOf(e)), new Object[0]);
        }
        a aVar = this.G;
        if (aVar != null) {
            com.tencent.liteav.videobase.frame.i iVar = aVar.g;
            if (iVar != null) {
                iVar.a();
                aVar.g = null;
            }
            com.tencent.liteav.videobase.b.b bVar = aVar.d;
            if (bVar != null) {
                bVar.b();
                aVar.d = null;
            }
            this.G = null;
        }
        com.tencent.liteav.videobase.frame.i iVar2 = this.q;
        if (iVar2 != null) {
            iVar2.a();
            this.q = null;
        }
        this.p.d();
        com.tencent.liteav.videobase.frame.e eVar = this.r;
        if (eVar != null) {
            eVar.a();
            this.r.b();
            this.r = null;
        }
        EGLCore.destroy(this.o);
        this.o = null;
    }

    private boolean c() {
        try {
            this.o.swapBuffers();
            return true;
        } catch (com.tencent.liteav.videobase.egl.d e) {
            LiteavLog.e(this.j.a("swapBuffers"), this.f10448a, "EGLCore swapBuffers failed.".concat(String.valueOf(e)), new Object[0]);
            e.c cVar = e.c.WARNING_VIDEO_ENCODE_EGL_CORE_CREATE_FAILED;
            e.toString();
            return false;
        }
    }

    private boolean a(PixelFrame pixelFrame) {
        Object gLContext = pixelFrame.getGLContext();
        if (this.o == null || (gLContext != null && !CommonUtil.equals(this.n, gLContext))) {
            a();
            Object gLContext2 = pixelFrame.getGLContext();
            if (this.l == null) {
                LiteavLog.e(this.j.a("initGLNoSurface"), this.f10448a, "Initialize EGL failed because surface is null", new Object[0]);
            } else {
                try {
                    com.tencent.liteav.base.a.a a2 = this.j.a("initGL");
                    String str = this.f10448a;
                    LiteavLog.i(a2, str, "initializeEGL surface=" + this.l + ",size=" + this.k, new Object[0]);
                    EGLCore eGLCore = new EGLCore();
                    this.o = eGLCore;
                    Surface surface = this.l;
                    Size size = this.k;
                    eGLCore.initialize(gLContext2, surface, size.width, size.height);
                    this.n = gLContext2;
                    this.o.makeCurrent();
                    if (this.r == null) {
                        this.r = new com.tencent.liteav.videobase.frame.e();
                    }
                    this.p.a();
                } catch (com.tencent.liteav.videobase.egl.d e) {
                    LiteavLog.e(this.j.a("initGLError"), this.f10448a, "initializeEGL failed.", e);
                    this.o = null;
                    e.c cVar = e.c.WARNING_VIDEO_ENCODE_EGL_CORE_CREATE_FAILED;
                    e.toString();
                }
            }
        }
        EGLCore eGLCore2 = this.o;
        if (eGLCore2 == null) {
            return false;
        }
        try {
            eGLCore2.makeCurrent();
            return true;
        } catch (com.tencent.liteav.videobase.egl.d e2) {
            LiteavLog.e(this.j.a("makeCurrentForFrameError"), this.f10448a, "EGLCore makeCurrent failed.".concat(String.valueOf(e2)), new Object[0]);
            return false;
        }
    }

    private void a(PixelFrame pixelFrame, GLConstants.GLScaleType gLScaleType) {
        RenderViewHelperInterface renderViewHelperInterface = this.x;
        if (renderViewHelperInterface != null) {
            renderViewHelperInterface.updateVideoFrameInfo(this.s, this.A.getWidth(), this.A.getHeight(), this.z);
        }
        if (this.k.isValid()) {
            if (this.x instanceof k) {
                gLScaleType = GLConstants.GLScaleType.FILL;
            }
            List<PointF> list = this.H;
            List<PointF> list2 = this.I;
            if (list != null && list.size() == 4 && list2 != null && list2.size() == 4) {
                if (this.G == null) {
                    com.tencent.liteav.videobase.frame.e eVar = this.r;
                    Size size = this.k;
                    a aVar = new a(eVar, size.width, size.height);
                    this.G = aVar;
                    List<PointF> list3 = this.H;
                    List<PointF> list4 = this.I;
                    aVar.i = list3;
                    aVar.j = list4;
                    aVar.k = true;
                }
                RenderViewHelperInterface renderViewHelperInterface2 = this.x;
                if (renderViewHelperInterface2 != null) {
                    a aVar2 = this.G;
                    Size size2 = this.k;
                    Matrix transformMatrix = renderViewHelperInterface2.getTransformMatrix(size2.width, size2.height);
                    if (!com.tencent.liteav.base.util.i.a(aVar2.h, transformMatrix)) {
                        aVar2.h = transformMatrix;
                        aVar2.k = true;
                    }
                }
                a aVar3 = this.G;
                Size size3 = this.k;
                int i = size3.width;
                int i2 = size3.height;
                Size size4 = aVar3.b;
                if (size4.width != i || size4.height != i2) {
                    size4.set(i, i2);
                    aVar3.k = true;
                }
                a aVar4 = this.G;
                if (aVar4.b.isValid()) {
                    if (aVar4.g == null) {
                        String str = aVar4.f10419a;
                        LiteavLog.i(str, "create PixelFrameRenderer, size =" + aVar4.b);
                        Size size5 = aVar4.b;
                        aVar4.g = new com.tencent.liteav.videobase.frame.i(size5.width, size5.height);
                    }
                    Size size6 = aVar4.b;
                    OpenGlUtils.glViewport(0, 0, size6.width, size6.height);
                    com.tencent.liteav.videobase.frame.e eVar2 = aVar4.c;
                    Size size7 = aVar4.b;
                    com.tencent.liteav.videobase.frame.d a2 = eVar2.a(size7.width, size7.height);
                    com.tencent.liteav.videobase.frame.i iVar = aVar4.g;
                    Size size8 = aVar4.b;
                    iVar.a(size8.width, size8.height);
                    aVar4.g.a(pixelFrame, gLScaleType, a2);
                    com.tencent.liteav.videobase.b.b bVar = aVar4.d;
                    if (bVar == null && bVar == null) {
                        com.tencent.liteav.videobase.b.b bVar2 = new com.tencent.liteav.videobase.b.b();
                        aVar4.d = bVar2;
                        bVar2.a(aVar4.c);
                        if (aVar4.e == null || aVar4.f == null) {
                            aVar4.e = OpenGlUtils.createNormalCubeVerticesBuffer();
                            aVar4.f = OpenGlUtils.createTextureCoordsBuffer(com.tencent.liteav.base.util.l.NORMAL, false, false);
                        }
                    }
                    if (aVar4.k) {
                        aVar4.a(aVar4.i, aVar4.j);
                        aVar4.k = false;
                    }
                    aVar4.d.a(a2.a(), null, aVar4.e, aVar4.f);
                    a2.release();
                    return;
                }
                return;
            }
            Size size9 = this.k;
            OpenGlUtils.glViewport(0, 0, size9.width, size9.height);
            if (this.q == null) {
                String str2 = this.f10448a;
                LiteavLog.i(str2, "create PixelFrameRenderer, surfaceSize=" + this.k);
                Size size10 = this.k;
                this.q = new com.tencent.liteav.videobase.frame.i(size10.width, size10.height);
            }
            com.tencent.liteav.videobase.frame.i iVar2 = this.q;
            Size size11 = this.k;
            iVar2.a(size11.width, size11.height);
            this.q.a(pixelFrame, gLScaleType, (com.tencent.liteav.videobase.frame.d) null);
        }
    }

    public static /* synthetic */ void a(v vVar, RenderViewHelperInterface renderViewHelperInterface, ByteBuffer byteBuffer, int i, int i2, com.tencent.liteav.videobase.base.a aVar) {
        TextureView a2 = renderViewHelperInterface instanceof k ? ((k) renderViewHelperInterface).a() : null;
        vVar.i.a(ac.a(vVar, byteBuffer, i, i2, a2 != null ? a2.getTransform(new Matrix()) : null, aVar));
    }

    private void a(Surface surface, boolean z) {
        Surface surface2;
        if (com.tencent.liteav.base.util.i.a(this.l, surface)) {
            LiteavLog.d(this.f10448a, "updateSurface same surface!");
            return;
        }
        a();
        if (this.m && (surface2 = this.l) != null) {
            surface2.release();
        }
        this.l = surface;
        if (surface == null) {
            this.k.set(0, 0);
        }
        this.m = z;
    }

    private void a(boolean z) {
        RenderViewHelperInterface renderViewHelperInterface = this.x;
        if (renderViewHelperInterface != null) {
            renderViewHelperInterface.release(z);
            this.x = null;
        }
    }

    public static /* synthetic */ void a(v vVar, Surface surface, boolean z) {
        LiteavLog.i(vVar.f10448a, "onSurfaceChanged surface: %s, oldSurface: %s, isNeedRelease: %b", surface, vVar.l, Boolean.valueOf(z));
        vVar.a(surface, z);
    }

    private Bitmap a(Bitmap bitmap) {
        Bitmap bitmap2;
        synchronized (this) {
            bitmap2 = this.E;
            this.E = bitmap;
        }
        return bitmap2;
    }

    public static /* synthetic */ void a(v vVar) {
        String str = vVar.f10448a;
        LiteavLog.i(str, "onSurfaceDestroy " + vVar.l);
        vVar.a((Surface) null, vVar.m);
    }

    public static /* synthetic */ void a(v vVar, ByteBuffer byteBuffer, int i, int i2, Matrix matrix, com.tencent.liteav.videobase.base.a aVar) {
        try {
            byteBuffer.position(0);
            Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            createBitmap.copyPixelsFromBuffer(byteBuffer);
            if (matrix == null) {
                matrix = new Matrix();
            }
            matrix.postScale(1.0f, -1.0f, i / 2.0f, i2 / 2.0f);
            aVar.onComplete(BitmapUtils.createBitmap(createBitmap, matrix, true));
        } catch (Throwable th) {
            LiteavLog.e(vVar.f10448a, "build snapshot bitmap failed.", th);
            aVar.onComplete(null);
        }
    }
}
