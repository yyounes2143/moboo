package com.tencent.liteav.txcvodplayer.renderer;

import android.graphics.SurfaceTexture;
import android.os.Looper;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.egl.EGLCore;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.frame.k;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.liteav.videoconsumer.renderer.ad;
import com.tencent.liteav.videoconsumer.renderer.v;
import com.tencent.liteav.videoconsumer.renderer.w;
import com.tencent.liteav.videoconsumer.renderer.x;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import io.flutter.plugin.platform.PlatformPlugin;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class d implements SurfaceTexture.OnFrameAvailableListener {

    /* renamed from: a  reason: collision with root package name */
    public CustomHandler f10350a;
    protected EGLCore b;
    private v c;
    private DisplayTarget d;
    private SurfaceTexture g;
    private PixelFrame i;
    private com.tencent.liteav.videobase.frame.k j;
    private com.tencent.liteav.videobase.frame.i k;
    private com.tencent.liteav.videobase.frame.e l;
    private final a p;
    private GLConstants.GLScaleType e = GLConstants.GLScaleType.FIT_CENTER;
    private com.tencent.liteav.base.util.l f = com.tencent.liteav.base.util.l.NORMAL;
    private int h = -1;
    private final float[] m = new float[16];
    private int n = TXVodDownloadDataSource.QUALITY_720P;
    private int o = PlatformPlugin.DEFAULT_SYSTEM_UI;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface a {
        void a(SurfaceTexture surfaceTexture);

        void a(PixelFrame pixelFrame);

        void f();
    }

    public d(a aVar) {
        this.p = aVar;
    }

    public static /* synthetic */ void b(d dVar) {
        LiteavLog.i("VodRenderer", "Start");
        v vVar = dVar.c;
        if (vVar != null) {
            vVar.a(dVar.d, true);
            dVar.c.a(dVar.f);
            dVar.c.a(dVar.e);
            v vVar2 = dVar.c;
            vVar2.a(w.a(vVar2));
        }
    }

    public static /* synthetic */ v d(d dVar) {
        dVar.c = null;
        return null;
    }

    public static /* synthetic */ DisplayTarget e(d dVar) {
        dVar.d = null;
        return null;
    }

    public static /* synthetic */ CustomHandler g(d dVar) {
        dVar.f10350a = null;
        return null;
    }

    public final void a(boolean z) {
        a(f.a(this, z), "Stop");
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        a(l.a(this, surfaceTexture), "onFrameAvailable");
    }

    public static /* synthetic */ void a(d dVar, boolean z) {
        LiteavLog.i("VodRenderer", "Stop");
        v vVar = dVar.c;
        if (vVar != null) {
            vVar.a(ad.a(vVar, z));
        }
    }

    public static /* synthetic */ void a(d dVar, DisplayTarget displayTarget) {
        LiteavLog.i("VodRenderer", "setDisplayTarget: ".concat(String.valueOf(displayTarget)));
        dVar.d = displayTarget;
        v vVar = dVar.c;
        if (vVar != null) {
            vVar.a(displayTarget, true);
        }
    }

    private boolean b() {
        EGLCore eGLCore = this.b;
        if (eGLCore == null) {
            LiteavLog.e("VodRenderer", "makeCurrent on mEGLCore is null");
            return false;
        }
        try {
            eGLCore.makeCurrent();
            return true;
        } catch (com.tencent.liteav.videobase.egl.d e) {
            LiteavLog.e("VodRenderer", "make current failed.", e);
            return false;
        }
    }

    public static /* synthetic */ void a(d dVar, int i, int i2) {
        if (dVar.n == i && dVar.o == i2) {
            return;
        }
        LiteavLog.i("VodRenderer", "setVideoSize: %d*%d", Integer.valueOf(i), Integer.valueOf(i2));
        dVar.n = i;
        dVar.o = i2;
        dVar.i.setWidth(i);
        dVar.i.setHeight(dVar.o);
        com.tencent.liteav.videobase.frame.i iVar = dVar.k;
        if (iVar != null) {
            iVar.a();
            dVar.k = null;
        }
        com.tencent.liteav.videobase.frame.e eVar = dVar.l;
        if (eVar != null) {
            eVar.a();
        }
    }

    public final void a(GLConstants.GLScaleType gLScaleType) {
        a(i.a(this, gLScaleType), "setScaleType");
    }

    public static /* synthetic */ void a(d dVar, GLConstants.GLScaleType gLScaleType) {
        LiteavLog.i("VodRenderer", "setScaleType ".concat(String.valueOf(gLScaleType)));
        dVar.e = gLScaleType;
        v vVar = dVar.c;
        if (vVar != null) {
            vVar.a(gLScaleType);
        }
    }

    public final void a(com.tencent.liteav.base.util.l lVar) {
        a(j.a(this, lVar), "setRenderRotation");
    }

    public static /* synthetic */ void a(d dVar, com.tencent.liteav.base.util.l lVar) {
        LiteavLog.i("VodRenderer", "setRenderRotation ".concat(String.valueOf(lVar)));
        dVar.f = lVar;
        v vVar = dVar.c;
        if (vVar != null) {
            vVar.a(lVar);
        }
    }

    public final void a() {
        ArrayList arrayList;
        if (this.b == null) {
            return;
        }
        com.tencent.liteav.videobase.frame.k kVar = this.j;
        if (kVar != null) {
            kVar.c = true;
            synchronized (kVar) {
                arrayList = new ArrayList(kVar.f10386a);
                kVar.f10386a.clear();
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                arrayList.get(i);
            }
            this.j = null;
        }
        try {
            this.b.makeCurrent();
            a aVar = this.p;
            if (aVar != null) {
                aVar.f();
            }
            SurfaceTexture surfaceTexture = this.g;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                this.g = null;
            }
            OpenGlUtils.deleteTexture(this.h);
            this.h = -1;
            com.tencent.liteav.videobase.frame.i iVar = this.k;
            if (iVar != null) {
                iVar.a();
                this.k = null;
            }
            com.tencent.liteav.videobase.frame.e eVar = this.l;
            if (eVar != null) {
                eVar.a();
                this.l.b();
                this.l = null;
            }
        } catch (com.tencent.liteav.videobase.egl.d e) {
            LiteavLog.e("VodRenderer", "EGLCore destroy failed.", e);
        }
        EGLCore.destroy(this.b);
        this.b = null;
    }

    public final void a(Runnable runnable, String str) {
        CustomHandler customHandler = this.f10350a;
        if (customHandler == null) {
            LiteavLog.w("VodRenderer", "ignore runnable: ".concat(String.valueOf(str)));
        } else if (customHandler.getLooper() != Looper.myLooper()) {
            customHandler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public static /* synthetic */ void a(d dVar, SurfaceTexture surfaceTexture) {
        com.tencent.liteav.videobase.frame.k kVar;
        k.b bVar;
        PixelFrame removeFirst;
        SurfaceTexture surfaceTexture2 = dVar.g;
        if (surfaceTexture2 != null && surfaceTexture == surfaceTexture2) {
            if (dVar.b()) {
                if (dVar.l != null && (kVar = dVar.j) != null) {
                    try {
                        bVar = kVar.a();
                    } catch (InterruptedException unused) {
                        bVar = null;
                    }
                    try {
                        dVar.g.updateTexImage();
                        dVar.g.getTransformMatrix(dVar.m);
                        dVar.i.setMatrix(dVar.m);
                    } catch (Exception e) {
                        LiteavLog.w("VodRenderer", "updateTexImage exception: ".concat(String.valueOf(e)));
                    }
                    int i = dVar.h;
                    int width = dVar.i.getWidth();
                    int height = dVar.i.getHeight();
                    bVar.b = 36197;
                    bVar.f10391a = i;
                    bVar.c = width;
                    bVar.d = height;
                    PixelFrame a2 = bVar.a(dVar.i.getGLContext());
                    a2.setMatrix(dVar.m);
                    if (dVar.k == null) {
                        dVar.k = new com.tencent.liteav.videobase.frame.i(dVar.n, dVar.o);
                    }
                    OpenGlUtils.glViewport(0, 0, dVar.n, dVar.o);
                    com.tencent.liteav.videobase.frame.d a3 = dVar.l.a(dVar.n, dVar.o);
                    dVar.k.a(a2, GLConstants.GLScaleType.CENTER_CROP, a3);
                    PixelFrame a4 = a3.a(dVar.b.getEglContext());
                    a3.release();
                    a aVar = dVar.p;
                    if (aVar != null) {
                        aVar.a(a4);
                    }
                    v vVar = dVar.c;
                    if (vVar != null && vVar.c) {
                        if (!vVar.d) {
                            vVar.d = true;
                            LiteavLog.d(vVar.f10448a, "VideoRender receive first frame!");
                        }
                        com.tencent.liteav.videobase.utils.f fVar = vVar.b;
                        a4.retain();
                        synchronized (fVar) {
                            try {
                                removeFirst = fVar.f10404a.size() >= fVar.b ? fVar.f10404a.removeFirst() : null;
                                fVar.f10404a.addLast(a4);
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (removeFirst != null) {
                            removeFirst.release();
                        }
                        vVar.a(x.a(vVar));
                    }
                    bVar.release();
                    a2.release();
                    a4.release();
                    return;
                }
                LiteavLog.w("VodRenderer", "onCaptureFrameAvailable mGLTexturePool:" + dVar.l + " mTextureHolderPool:" + dVar.j);
                return;
            }
            return;
        }
        LiteavLog.i("VodRenderer", "mSurfaceTexture= " + dVar.g + " ,surfaceTexture= " + surfaceTexture);
    }

    public static /* synthetic */ void a(d dVar) {
        if (dVar.b == null) {
            dVar.b = new EGLCore();
            if (dVar.j == null) {
                dVar.j = new com.tencent.liteav.videobase.frame.k();
            }
            try {
                dVar.b.initialize(null, null, 128, 128);
                dVar.b.makeCurrent();
                dVar.h = OpenGlUtils.generateTextureOES();
                SurfaceTexture surfaceTexture = new SurfaceTexture(dVar.h);
                dVar.g = surfaceTexture;
                surfaceTexture.setDefaultBufferSize(dVar.n, dVar.o);
                dVar.g.setOnFrameAvailableListener(dVar);
                PixelFrame pixelFrame = new PixelFrame();
                dVar.i = pixelFrame;
                pixelFrame.setWidth(dVar.n);
                dVar.i.setHeight(dVar.o);
                dVar.i.setPixelBufferType(GLConstants.a.TEXTURE_OES);
                dVar.i.setPixelFormatType(GLConstants.PixelFormatType.RGBA);
                dVar.i.setRotation(com.tencent.liteav.base.util.l.NORMAL);
                dVar.i.setGLContext(dVar.b.getEglContext());
                dVar.i.setTextureId(dVar.h);
                dVar.l = new com.tencent.liteav.videobase.frame.e();
                a aVar = dVar.p;
                if (aVar != null) {
                    aVar.a(dVar.g);
                }
            } catch (com.tencent.liteav.videobase.egl.d e) {
                LiteavLog.e("VodRenderer", "initializeEGL failed.", e);
                dVar.b = null;
            }
        }
        dVar.c = new v(dVar.f10350a.getLooper(), new com.tencent.liteav.videobase.videobase.d());
    }
}
