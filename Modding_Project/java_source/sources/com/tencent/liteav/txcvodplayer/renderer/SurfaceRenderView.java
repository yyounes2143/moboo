package com.tencent.liteav.txcvodplayer.renderer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
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
public class SurfaceRenderView extends SurfaceView implements com.tencent.liteav.txcvodplayer.renderer.a {

    /* renamed from: a  reason: collision with root package name */
    private com.tencent.liteav.txcvodplayer.renderer.b f10342a;
    private b b;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class b implements SurfaceHolder.Callback {

        /* renamed from: a  reason: collision with root package name */
        SurfaceHolder f10344a;
        boolean b;
        int c;
        int d;
        WeakReference<SurfaceRenderView> e;
        Map<a.InterfaceC0211a, Object> f = new ConcurrentHashMap();
        private int g;

        public b(SurfaceRenderView surfaceRenderView) {
            this.e = new WeakReference<>(surfaceRenderView);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            this.f10344a = surfaceHolder;
            this.b = true;
            this.g = i;
            this.c = i2;
            this.d = i3;
            a aVar = new a(this.e.get(), this.f10344a);
            for (a.InterfaceC0211a interfaceC0211a : this.f.keySet()) {
                interfaceC0211a.a(aVar, i2, i3);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceCreated(SurfaceHolder surfaceHolder) {
            this.f10344a = surfaceHolder;
            this.b = false;
            this.g = 0;
            this.c = 0;
            this.d = 0;
            a aVar = new a(this.e.get(), this.f10344a);
            for (a.InterfaceC0211a interfaceC0211a : this.f.keySet()) {
                interfaceC0211a.a(aVar);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            this.f10344a = null;
            this.b = false;
            this.g = 0;
            this.c = 0;
            this.d = 0;
            a aVar = new a(this.e.get(), this.f10344a);
            for (a.InterfaceC0211a interfaceC0211a : this.f.keySet()) {
                interfaceC0211a.b(aVar);
            }
        }
    }

    public SurfaceRenderView(Context context) {
        super(context);
        b();
    }

    private void b() {
        this.f10342a = new com.tencent.liteav.txcvodplayer.renderer.b(this);
        this.b = new b(this);
        getHolder().addCallback(this.b);
        getHolder().setType(0);
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final boolean a() {
        return true;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(SurfaceRenderView.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (LiteavSystemInfo.getSystemOSVersionInt() >= 14) {
            accessibilityNodeInfo.setClassName(SurfaceRenderView.class.getName());
        }
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onMeasure(int i, int i2) {
        this.f10342a.c(i, i2);
        com.tencent.liteav.txcvodplayer.renderer.b bVar = this.f10342a;
        setMeasuredDimension(bVar.b, bVar.c);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        for (a.InterfaceC0211a interfaceC0211a : this.b.f.keySet()) {
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
        this.f10342a.d = i;
        requestLayout();
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public void setVideoRotation(int i) {
        LiteavLog.e("", "SurfaceView doesn't support rotation (" + i + ")!\n");
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final void a(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        this.f10342a.a(i, i2);
        getHolder().setFixedSize(i, i2);
        requestLayout();
    }

    public SurfaceRenderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class a implements a.b {

        /* renamed from: a  reason: collision with root package name */
        private SurfaceRenderView f10343a;
        private SurfaceHolder b;

        public a(SurfaceRenderView surfaceRenderView, SurfaceHolder surfaceHolder) {
            this.f10343a = surfaceRenderView;
            this.b = surfaceHolder;
        }

        @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
        public final void a(ITXVCubePlayer iTXVCubePlayer) {
            if (iTXVCubePlayer != null) {
                if (LiteavSystemInfo.getSystemOSVersionInt() >= 16 && (iTXVCubePlayer instanceof com.tencent.liteav.txcplayer.b)) {
                    ((com.tencent.liteav.txcplayer.b) iTXVCubePlayer).setSurfaceTexture(null);
                }
                iTXVCubePlayer.setDisplay(this.b);
            }
        }

        @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
        public final Surface b() {
            SurfaceHolder surfaceHolder = this.b;
            if (surfaceHolder == null) {
                return null;
            }
            return surfaceHolder.getSurface();
        }

        @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
        public final Surface c() {
            return b();
        }

        @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
        public final com.tencent.liteav.txcvodplayer.renderer.a a() {
            return this.f10343a;
        }
    }

    public SurfaceRenderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        b();
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final void a(a.InterfaceC0211a interfaceC0211a) {
        a aVar;
        b bVar = this.b;
        bVar.f.put(interfaceC0211a, interfaceC0211a);
        if (bVar.f10344a != null) {
            aVar = new a(bVar.e.get(), bVar.f10344a);
            interfaceC0211a.a(aVar);
        } else {
            aVar = null;
        }
        if (bVar.b) {
            if (aVar == null) {
                aVar = new a(bVar.e.get(), bVar.f10344a);
            }
            interfaceC0211a.a(aVar, bVar.c, bVar.d);
        }
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final void b(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        this.f10342a.b(i, i2);
        requestLayout();
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final void b(a.InterfaceC0211a interfaceC0211a) {
        this.b.f.remove(interfaceC0211a);
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public View getView() {
        return this;
    }
}
