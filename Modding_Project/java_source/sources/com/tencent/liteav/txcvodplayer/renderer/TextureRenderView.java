package com.tencent.liteav.txcvodplayer.renderer;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
import com.tencent.liteav.txcvodplayer.renderer.a;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.WeakReference;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TextureRenderView extends TextureView implements com.tencent.liteav.txcvodplayer.renderer.a {

    /* renamed from: a  reason: collision with root package name */
    private com.tencent.liteav.txcvodplayer.renderer.b f10345a;
    private b b;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class b implements TextureView.SurfaceTextureListener, com.tencent.liteav.txcplayer.c {

        /* renamed from: a  reason: collision with root package name */
        SurfaceTexture f10347a;
        boolean b;
        int c;
        int d;
        WeakReference<TextureRenderView> h;
        boolean e = true;
        boolean f = false;
        boolean g = false;
        Map<a.InterfaceC0211a, Object> i = new ConcurrentHashMap();

        public b(TextureRenderView textureRenderView) {
            this.h = new WeakReference<>(textureRenderView);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            this.f10347a = surfaceTexture;
            this.b = false;
            this.c = 0;
            this.d = 0;
            a aVar = new a(this.h.get(), surfaceTexture, this);
            for (a.InterfaceC0211a interfaceC0211a : this.i.keySet()) {
                interfaceC0211a.a(aVar);
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            this.f10347a = surfaceTexture;
            this.b = false;
            this.c = 0;
            this.d = 0;
            a aVar = new a(this.h.get(), surfaceTexture, this);
            for (a.InterfaceC0211a interfaceC0211a : this.i.keySet()) {
                interfaceC0211a.b(aVar);
            }
            LiteavLog.i("TextureRenderView", "onSurfaceTextureDestroyed: destroy: " + this.e);
            return this.e;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            this.f10347a = surfaceTexture;
            this.b = true;
            this.c = i;
            this.d = i2;
            a aVar = new a(this.h.get(), surfaceTexture, this);
            for (a.InterfaceC0211a interfaceC0211a : this.i.keySet()) {
                interfaceC0211a.a(aVar, i, i2);
            }
        }

        @Override // com.tencent.liteav.txcplayer.c
        public final void a(SurfaceTexture surfaceTexture) {
            if (surfaceTexture == null) {
                LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: null");
            } else if (this.g) {
                if (surfaceTexture != this.f10347a) {
                    LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: didDetachFromWindow(): release different SurfaceTexture");
                    surfaceTexture.release();
                } else if (!this.e) {
                    LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: didDetachFromWindow(): release detached SurfaceTexture");
                    surfaceTexture.release();
                } else {
                    LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: didDetachFromWindow(): already released by TextureView");
                }
            } else if (this.f) {
                if (surfaceTexture != this.f10347a) {
                    LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: willDetachFromWindow(): release different SurfaceTexture");
                    surfaceTexture.release();
                } else if (!this.e) {
                    LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: willDetachFromWindow(): re-attach SurfaceTexture to TextureView");
                    this.e = true;
                } else {
                    LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: willDetachFromWindow(): will released by TextureView");
                }
            } else if (surfaceTexture != this.f10347a) {
                LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: alive: release different SurfaceTexture");
                surfaceTexture.release();
            } else if (!this.e) {
                LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: alive: re-attach SurfaceTexture to TextureView");
                this.e = true;
            } else {
                LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: alive: will released by TextureView");
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

    public TextureRenderView(Context context) {
        super(context);
        b();
    }

    private void b() {
        this.f10345a = new com.tencent.liteav.txcvodplayer.renderer.b(this);
        b bVar = new b(this);
        this.b = bVar;
        setSurfaceTextureListener(bVar);
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final boolean a() {
        return false;
    }

    public a.b getSurfaceHolder() {
        return new a(this, this.b.f10347a, this.b);
    }

    @Override // android.view.TextureView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        b bVar = this.b;
        LiteavLog.i("TextureRenderView", "onAttachFromWindow()");
        bVar.f = false;
        bVar.g = false;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        try {
            b bVar = this.b;
            LiteavLog.i("TextureRenderView", "willDetachFromWindow()");
            bVar.f = true;
            super.onDetachedFromWindow();
            b bVar2 = this.b;
            LiteavLog.i("TextureRenderView", "didDetachFromWindow()");
            bVar2.g = true;
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(TextureRenderView.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(TextureRenderView.class.getName());
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        this.f10345a.c(i, i2);
        com.tencent.liteav.txcvodplayer.renderer.b bVar = this.f10345a;
        setMeasuredDimension(bVar.b, bVar.c);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        for (a.InterfaceC0211a interfaceC0211a : this.b.i.keySet()) {
            if (interfaceC0211a.a(motionEvent)) {
                z = true;
            }
        }
        if (z) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public void setAspectRatio(int i) {
        this.f10345a.d = i;
        requestLayout();
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public void setVideoRotation(int i) {
        this.f10345a.f10348a = i;
        setRotation(i);
    }

    public TextureRenderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final void a(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        this.f10345a.a(i, i2);
        requestLayout();
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final void b(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        this.f10345a.b(i, i2);
        requestLayout();
    }

    public TextureRenderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        b();
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final void a(a.InterfaceC0211a interfaceC0211a) {
        a aVar;
        b bVar = this.b;
        bVar.i.put(interfaceC0211a, interfaceC0211a);
        if (bVar.f10347a != null) {
            aVar = new a(bVar.h.get(), bVar.f10347a, bVar);
            interfaceC0211a.a(aVar);
        } else {
            aVar = null;
        }
        if (bVar.b) {
            if (aVar == null) {
                aVar = new a(bVar.h.get(), bVar.f10347a, bVar);
            }
            interfaceC0211a.a(aVar, bVar.c, bVar.d);
        }
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final void b(a.InterfaceC0211a interfaceC0211a) {
        this.b.i.remove(interfaceC0211a);
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public View getView() {
        return this;
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class a implements a.b {

        /* renamed from: a  reason: collision with root package name */
        private TextureRenderView f10346a;
        private SurfaceTexture b;
        private com.tencent.liteav.txcplayer.c c;
        private Surface d;

        public a(TextureRenderView textureRenderView, SurfaceTexture surfaceTexture, com.tencent.liteav.txcplayer.c cVar) {
            this.f10346a = textureRenderView;
            this.b = surfaceTexture;
            this.c = cVar;
        }

        @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
        public final void a(ITXVCubePlayer iTXVCubePlayer) {
            if (iTXVCubePlayer == null) {
                return;
            }
            if (LiteavSystemInfo.getSystemOSVersionInt() >= 16 && (iTXVCubePlayer instanceof com.tencent.liteav.txcplayer.b)) {
                com.tencent.liteav.txcplayer.b bVar = (com.tencent.liteav.txcplayer.b) iTXVCubePlayer;
                this.f10346a.b.e = false;
                if (this.f10346a.getSurfaceTexture() != null) {
                    this.b = this.f10346a.getSurfaceTexture();
                }
                try {
                    SurfaceTexture surfaceTexture = bVar.getSurfaceTexture();
                    if (surfaceTexture != null) {
                        bVar.setSurfaceTextureHost(this.f10346a.b);
                        if (this.f10346a.getSurfaceTexture() != surfaceTexture) {
                            this.f10346a.setSurfaceTexture(surfaceTexture);
                        }
                        this.f10346a.b.f10347a = surfaceTexture;
                    } else {
                        Surface surface = this.d;
                        if (surface != null) {
                            iTXVCubePlayer.setSurface(surface);
                        }
                        bVar.setSurfaceTexture(this.b);
                        bVar.setSurfaceTextureHost(this.f10346a.b);
                    }
                    this.d = iTXVCubePlayer.getSurface();
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            Surface b = b();
            this.d = b;
            iTXVCubePlayer.setSurface(b);
        }

        @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
        public final Surface b() {
            if (this.b == null) {
                return null;
            }
            if (this.d == null) {
                this.d = new Surface(this.b);
            }
            return this.d;
        }

        @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
        public final Surface c() {
            return this.d;
        }

        @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
        public final com.tencent.liteav.txcvodplayer.renderer.a a() {
            return this.f10346a;
        }
    }
}
