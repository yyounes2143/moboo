package com.tencent.thumbplayer.tcmedia.g.e.a;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import com.tencent.thumbplayer.tcmedia.g.c.b;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
/* loaded from: classes6.dex */
public class a implements SurfaceTexture.OnFrameAvailableListener {

    /* renamed from: a  reason: collision with root package name */
    EGL10 f10634a;
    EGLDisplay b;
    EGLContext c;
    EGLSurface d;
    com.tencent.thumbplayer.tcmedia.g.c.b e;
    Surface f;
    Object g = new Object();
    boolean h;
    b i;

    public a() {
        a();
    }

    public void a() {
        b bVar = new b();
        this.i = bVar;
        bVar.b();
        com.tencent.thumbplayer.tcmedia.g.c.b bVar2 = new com.tencent.thumbplayer.tcmedia.g.c.b(this.i.a());
        this.e = bVar2;
        bVar2.a(new b.a() { // from class: com.tencent.thumbplayer.tcmedia.g.e.a.a.1
            @Override // com.tencent.thumbplayer.tcmedia.g.c.b.a
            public void a() {
                com.tencent.thumbplayer.tcmedia.g.h.b.b("OutputSurface", "mSurfaceTexture:" + a.this.e + " onReleased, release OutputSurface");
                a.this.b();
            }
        });
        this.e.setOnFrameAvailableListener(this);
        this.f = new com.tencent.thumbplayer.tcmedia.g.c.a(this.e);
    }

    public void b() {
        EGL10 egl10 = this.f10634a;
        if (egl10 != null) {
            if (egl10.eglGetCurrentContext().equals(this.c)) {
                EGL10 egl102 = this.f10634a;
                EGLDisplay eGLDisplay = this.b;
                EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
                egl102.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            }
            this.f10634a.eglDestroySurface(this.b, this.d);
            this.f10634a.eglDestroyContext(this.b, this.c);
        }
        this.f.release();
        this.b = null;
        this.c = null;
        this.d = null;
        this.f10634a = null;
        this.i = null;
        this.f = null;
        this.e = null;
    }

    public void c() {
        if (this.f10634a != null) {
            a("before makeCurrent");
            EGL10 egl10 = this.f10634a;
            EGLDisplay eGLDisplay = this.b;
            EGLSurface eGLSurface = this.d;
            if (egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.c)) {
                return;
            }
            throw new RuntimeException("eglMakeCurrent failed");
        }
        throw new RuntimeException("not configured for makeCurrent");
    }

    public Surface d() {
        return this.f;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        synchronized (this.g) {
            try {
                if (!this.h) {
                    this.h = true;
                    this.g.notifyAll();
                } else {
                    throw new RuntimeException("mFrameAvailable already set, frame could be dropped");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public a(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        a(i, i2);
        c();
        a();
    }

    public void a(int i, int i2) {
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.f10634a = egl10;
        EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.b = eglGetDisplay;
        if (!this.f10634a.eglInitialize(eglGetDisplay, null)) {
            throw new RuntimeException("unable to initialize EGL10");
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (!this.f10634a.eglChooseConfig(this.b, new int[]{12324, 8, 12323, 8, 12322, 8, 12339, 1, 12352, 4, 12344}, eGLConfigArr, 1, new int[1])) {
            throw new RuntimeException("unable to find RGB888+pbuffer EGL config");
        }
        this.c = this.f10634a.eglCreateContext(this.b, eGLConfigArr[0], EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
        a("eglCreateContext");
        if (this.c == null) {
            throw new RuntimeException("null context");
        }
        this.d = this.f10634a.eglCreatePbufferSurface(this.b, eGLConfigArr[0], new int[]{12375, i, 12374, i2, 12344});
        a("eglCreatePbufferSurface");
        if (this.d == null) {
            throw new RuntimeException("surface was null");
        }
    }

    public void a(String str) {
        boolean z = false;
        while (true) {
            int eglGetError = this.f10634a.eglGetError();
            if (eglGetError == 12288) {
                break;
            }
            Integer.toHexString(eglGetError);
            z = true;
        }
        if (z) {
            throw new RuntimeException("EGL error encountered (see log)");
        }
    }
}
