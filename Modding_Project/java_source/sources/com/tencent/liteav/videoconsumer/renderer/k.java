package com.tencent.liteav.videoconsumer.renderer;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.os.Looper;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.Size;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.videobase.TXCCloudVideoViewMethodInvoker;
import com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface;
import com.tencent.rtmp.ui.TXCloudVideoView;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class k extends RenderViewHelperInterface implements TextureView.SurfaceTextureListener {

    /* renamed from: a  reason: collision with root package name */
    private final String f10438a;
    private final CustomHandler b;
    private final com.tencent.liteav.base.a.b c;
    private final RenderViewHelperInterface.RenderViewListener d;
    private final TXCloudVideoView e;
    private TextureView f;
    private boolean g;
    private final Size h;
    private GLConstants.GLScaleType i;
    private boolean j;
    private boolean k;
    private Matrix l;
    private boolean m;
    private SurfaceTexture n;
    private final Size o;

    public k(String str, TXCloudVideoView tXCloudVideoView, RenderViewHelperInterface.RenderViewListener renderViewListener) {
        this(str, renderViewListener, tXCloudVideoView, null);
        if (this.e == null) {
            LiteavLog.e(this.f10438a, "construct: txCloudVideoView is null.");
            return;
        }
        String str2 = this.f10438a;
        LiteavLog.i(str2, "construct: txCloudVideoView=" + this.e);
        TXCCloudVideoViewMethodInvoker.setRenderClient(this.e, this);
        this.b.post(l.a(this));
    }

    public static /* synthetic */ void a(k kVar, boolean z) {
        TXCloudVideoView tXCloudVideoView = kVar.e;
        if (tXCloudVideoView != null) {
            TXCCloudVideoViewMethodInvoker.releaseRenderClient(tXCloudVideoView, kVar, z);
        } else {
            TextureView textureView = kVar.f;
            if (textureView != null) {
                if (textureView.getSurfaceTextureListener() == kVar) {
                    kVar.f.setSurfaceTextureListener(null);
                }
                kVar.f = null;
            }
        }
        kVar.g = true;
    }

    public static /* synthetic */ void b(k kVar) {
        TextureView a2 = kVar.a();
        if (a2 != null) {
            kVar.a(a2);
            kVar.b(a2);
        }
    }

    public static /* synthetic */ void c(k kVar) {
        TextureView a2 = kVar.a();
        if (a2 != null) {
            kVar.a(a2);
            kVar.b(a2);
            if (!a2.isShown()) {
                a2.setVisibility(0);
            }
        }
    }

    public static /* synthetic */ void d(k kVar) {
        TextureView a2 = kVar.a();
        if (a2 == null) {
            LiteavLog.w(kVar.f10438a, "checkViewAvailability: textureView is null");
            return;
        }
        if (!a2.isAvailable() || a2.getWidth() == 0 || a2.getHeight() == 0 || !a2.isShown()) {
            LiteavLog.w(kVar.f10438a, "checkViewAvailability: %s, %s", a((View) a2), a(kVar.e));
        }
        if (kVar.e != null && a2.getVisibility() != 0) {
            a2.setVisibility(0);
        }
        kVar.j = a2.isShown();
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final void checkViewAvailability() {
        this.b.runOrPost(o.a(this));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final synchronized void enableNonUniformScale(boolean z) {
        if (this.m == z) {
            return;
        }
        this.m = z;
        LiteavLog.i(this.f10438a, "enableNonUniformScale: ".concat(String.valueOf(z)));
        this.b.post(q.a(this));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final Matrix getTransformMatrix(int i, int i2) {
        Matrix matrix = new Matrix(this.l);
        matrix.postScale(1.0f, -1.0f, i / 2.0f, i2 / 2.0f);
        return matrix;
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final boolean isUsingTextureView() {
        return true;
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final boolean isVisible() {
        return this.j;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        String str = this.f10438a;
        LiteavLog.i(str, "onSurfaceTextureAvailable, size:" + i + "x" + i2 + " surfaceTexture:" + surfaceTexture);
        synchronized (this) {
            Size size = this.o;
            size.width = i;
            size.height = i2;
        }
        a(surfaceTexture);
        this.b.post(r.a(this));
        checkViewAvailability();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        LiteavLog.i(this.f10438a, "onSurfaceTextureDestroyed surface:".concat(String.valueOf(surfaceTexture)));
        synchronized (this) {
            try {
                if (this.n == surfaceTexture) {
                    this.n = null;
                } else {
                    String str = this.f10438a;
                    LiteavLog.w(str, "notifySurfaceDestroy, surface not same, cur: " + surfaceTexture + ", last: " + this.n);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        RenderViewHelperInterface.RenderViewListener renderViewListener = this.d;
        if (renderViewListener != null) {
            renderViewListener.onSurfaceDestroy();
        }
        this.k = false;
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        boolean z;
        Bitmap bitmap;
        boolean z2 = false;
        LiteavLog.i(this.c.a("surfaceSizeChanged"), this.f10438a, "onSurfaceTextureSizeChanged: %dx%d --> %dx%d", Integer.valueOf(this.o.width), Integer.valueOf(this.o.height), Integer.valueOf(i), Integer.valueOf(i2));
        TextureView a2 = a();
        if (a2 == null) {
            return;
        }
        a(a2);
        a(surfaceTexture);
        synchronized (this) {
            try {
                Size size = this.o;
                if (size.width > size.height) {
                    z = true;
                } else {
                    z = false;
                }
                if (i > i2) {
                    z2 = true;
                }
                if (z != z2) {
                    TextureView a3 = a();
                    if (this.d != null && a3 != null && (bitmap = a3.getBitmap()) != null) {
                        this.d.onRequestRedraw(bitmap);
                    }
                }
                Size size2 = this.o;
                size2.width = i;
                size2.height = i2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        if (this.k) {
            return;
        }
        this.k = true;
        this.b.post(s.a(this));
        checkViewAvailability();
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final void release(boolean z) {
        LiteavLog.i(this.f10438a, "release: clearLastImage=".concat(String.valueOf(z)));
        this.b.post(n.a(this, z));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.RenderViewHelperInterface
    public final synchronized void updateVideoFrameInfo(GLConstants.GLScaleType gLScaleType, int i, int i2, boolean z) {
        if (this.i == gLScaleType) {
            Size size = this.h;
            if (i == size.width && i2 == size.height) {
                return;
            }
        }
        LiteavLog.i(this.f10438a, "updateVideoFrameInfo: scaleType: %s, width: %d, height: %d", gLScaleType, Integer.valueOf(i), Integer.valueOf(i2));
        this.i = gLScaleType;
        this.h.set(i, i2);
        this.b.runOrPost(p.a(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        TextureView textureView = this.f;
        if (textureView == null && this.e == null) {
            LiteavLog.e(this.f10438a, "setup: null view");
            return;
        }
        boolean z = textureView != null;
        if (z) {
            textureView.setSurfaceTextureListener(this);
        } else {
            textureView = TXCCloudVideoViewMethodInvoker.getInnerTextureView(this.e);
            if (textureView == null) {
                LiteavLog.e(this.f10438a, "setup: null view");
                return;
            }
        }
        if (!textureView.isAvailable()) {
            LiteavLog.i(this.f10438a, "setup: textureView not available.");
            checkViewAvailability();
            return;
        }
        Size size = new Size(textureView.getWidth(), textureView.getHeight());
        String str = this.f10438a;
        LiteavLog.i(str, "setup: " + textureView + "," + size + ", isShown=" + textureView.isShown());
        if (z) {
            a(this.f.getSurfaceTexture());
        }
    }

    public k(String str, TextureView textureView, RenderViewHelperInterface.RenderViewListener renderViewListener) {
        this(str, renderViewListener, null, textureView);
        if (this.f == null) {
            LiteavLog.e(this.f10438a, "construct: textureView is null.");
            return;
        }
        String str2 = this.f10438a;
        LiteavLog.i(str2, "construct: textureView=" + this.f);
        this.b.post(m.a(this));
    }

    private static String a(View view) {
        if (view == null) {
            return AbstractJsonLexerKt.NULL;
        }
        String format = String.format("%s: is_shown:%b, visibility:%s, window_visibility:%s, size:%dx%d", view.getClass().getSimpleName(), Boolean.valueOf(view.isShown()), Integer.valueOf(view.getVisibility()), Integer.valueOf(view.getWindowVisibility()), Integer.valueOf(view.getWidth()), Integer.valueOf(view.getHeight()));
        if (LiteavSystemInfo.getSystemOSVersionInt() >= 19) {
            format = format + String.format(", is_attached:%b", Boolean.valueOf(view.isAttachedToWindow()));
        }
        if (view instanceof TextureView) {
            return format + String.format(", is_surface_available:%s", Boolean.valueOf(((TextureView) view).isAvailable()));
        }
        return format;
    }

    private k(String str, RenderViewHelperInterface.RenderViewListener renderViewListener, TXCloudVideoView tXCloudVideoView, TextureView textureView) {
        this.b = new CustomHandler(Looper.getMainLooper());
        this.c = new com.tencent.liteav.base.a.b();
        this.g = false;
        this.h = new Size();
        this.i = null;
        this.j = true;
        this.k = false;
        this.l = new Matrix();
        this.m = true;
        this.o = new Size();
        this.f10438a = str + "TextureViewRenderHelper_" + hashCode();
        this.d = renderViewListener;
        this.e = tXCloudVideoView;
        this.f = textureView;
    }

    private synchronized void b(TextureView textureView) {
        if (!this.m && this.i == GLConstants.GLScaleType.FIT_CENTER) {
            textureView.setOpaque(false);
        } else {
            textureView.setOpaque(true);
        }
    }

    public final TextureView a() {
        TextureView textureView = this.f;
        if (textureView != null) {
            return textureView;
        }
        TXCloudVideoView tXCloudVideoView = this.e;
        if (tXCloudVideoView != null) {
            return TXCCloudVideoViewMethodInvoker.getInnerTextureView(tXCloudVideoView);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
        if (r8 == com.tencent.liteav.videobase.base.GLConstants.GLScaleType.CENTER_CROP) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized void a(android.view.TextureView r15) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoconsumer.renderer.k.a(android.view.TextureView):void");
    }

    private synchronized void a(SurfaceTexture surfaceTexture) {
        if (this.n == surfaceTexture) {
            return;
        }
        this.n = surfaceTexture;
        RenderViewHelperInterface.RenderViewListener renderViewListener = this.d;
        if (renderViewListener != null) {
            renderViewListener.onSurfaceChanged(new Surface(surfaceTexture), true);
        }
    }

    public static /* synthetic */ void a(k kVar) {
        TextureView a2 = kVar.a();
        if (a2 != null) {
            kVar.a(a2);
        }
    }
}
