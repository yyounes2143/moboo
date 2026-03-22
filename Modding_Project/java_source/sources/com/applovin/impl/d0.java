package com.applovin.impl;

import android.app.Activity;
import android.app.ActivityManager;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.PixelCopy;
import android.view.PixelCopy$OnPixelCopyFinishedListener;
import android.view.View;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class d0 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3107a;
    private final com.applovin.impl.sdk.o b;
    private final long c;
    private final long d;
    private final int e;
    private final int f;
    private final int g;
    private Handler k;
    private HandlerThread l;
    private c n;
    private WeakReference h = new WeakReference(null);
    private int i = 0;
    private Integer j = null;
    private final Runnable m = new Runnable() { // from class: com.applovin.impl.Wwwwwwwwwww
        @Override // java.lang.Runnable
        public final void run() {
            d0.this.a();
        }
    };

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements PixelCopy$OnPixelCopyFinishedListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f3109a;
        final /* synthetic */ Bitmap b;

        public b(d dVar, Bitmap bitmap) {
            this.f3109a = dVar;
            this.b = bitmap;
        }

        public void onPixelCopyFinished(int i) {
            if (i != 0) {
                com.applovin.impl.sdk.o unused = d0.this.b;
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = d0.this.b;
                    oVar.b("BlackViewDetector", "Failed to capture screenshot with error code: " + i);
                }
                this.f3109a.a(true);
                return;
            }
            this.f3109a.a(this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface c {
        void a(View view);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface d {
        void a(Bitmap bitmap);

        void a(boolean z);
    }

    public d0(com.applovin.impl.sdk.k kVar) {
        this.f3107a = kVar;
        this.b = kVar.O();
        this.c = ((Long) kVar.a(l4.G5)).longValue();
        this.d = ((Long) kVar.a(l4.F5)).longValue();
        this.e = ((Integer) kVar.a(l4.H5)).intValue();
        this.f = ((Integer) kVar.a(l4.I5)).intValue();
        this.g = ((Integer) kVar.a(l4.J5)).intValue();
    }

    public static /* synthetic */ int e(d0 d0Var) {
        int i = d0Var.i;
        d0Var.i = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        this.n = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        long j = this.c;
        if (j > 0) {
            if (this.i > 1) {
                e();
                g();
                return;
            }
            Handler handler = this.k;
            if (handler != null) {
                handler.postDelayed(this.m, j);
                return;
            }
            if (com.applovin.impl.sdk.o.a()) {
                this.b.k("BlackViewDetector", "Monitoring handler was unexpectedly null");
            }
            g();
            return;
        }
        if (this.i == 1) {
            e();
        }
        g();
    }

    private void e() {
        final View view = (View) this.h.get();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.b;
            oVar.k("BlackViewDetector", "Detected black view: " + view);
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Wwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                d0.this.a(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.i = 0;
        this.j = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.h.get() != null) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.b;
                oVar.a("BlackViewDetector", "Stopped monitoring view: " + this.h.get());
            }
            this.h.clear();
        }
        Handler handler = this.k;
        if (handler != null) {
            handler.removeCallbacks(this.m);
            this.k = null;
        }
        if (this.n != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Wwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    d0.this.c();
                }
            });
        }
    }

    public void b() {
        g();
        HandlerThread handlerThread = this.l;
        if (handlerThread != null) {
            handlerThread.quit();
            this.l = null;
        }
    }

    public void a(View view, c cVar) {
        if (((Boolean) this.f3107a.a(l4.E5)).booleanValue()) {
            View view2 = (View) this.h.get();
            if (view2 != null) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.b;
                    oVar.k("BlackViewDetector", "Monitoring is already in progress for a view: " + view2);
                    return;
                }
                return;
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.b;
                oVar2.a("BlackViewDetector", "Started monitoring view: " + view);
            }
            try {
                if (this.l == null) {
                    HandlerThread handlerThread = new HandlerThread("AppLovinSdk:black_view_detector");
                    this.l = handlerThread;
                    handlerThread.start();
                } else {
                    this.f3107a.E().a(y1.o0, "BlackViewDetector:maybeStartMonitoring() unexpectedly called multiple times");
                    g();
                }
                this.n = cVar;
                this.h = new WeakReference(view);
                f();
                Handler handler = new Handler(this.l.getLooper());
                this.k = handler;
                handler.postDelayed(this.m, this.d);
            } catch (Throwable th) {
                g();
                this.f3107a.E().a("BlackViewDetector", "maybeStartMonitoring", th);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements d {
        public a() {
        }

        @Override // com.applovin.impl.d0.d
        public void a(Bitmap bitmap) {
            try {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                int i = width / d0.this.e;
                int i2 = height / d0.this.e;
                int i3 = i / 2;
                for (int i4 = i2 / 2; i4 < height; i4 += i2) {
                    for (int i5 = i3; i5 < width; i5 += i) {
                        int pixel = bitmap.getPixel(i5, i4);
                        if (!d0.this.a(pixel)) {
                            if (d0.this.j == null) {
                                d0.this.j = Integer.valueOf(pixel);
                            }
                        } else {
                            bitmap.recycle();
                            d0.this.f();
                            d0.this.d();
                            return;
                        }
                    }
                }
                d0.e(d0.this);
                bitmap.recycle();
                d0.this.d();
            } catch (Exception e) {
                d0.this.f3107a.E().a("BlackViewDetector", "onScreenshotCaptured", e);
                d0.this.g();
            }
        }

        @Override // com.applovin.impl.d0.d
        public void a(boolean z) {
            if (z) {
                d0.this.g();
            } else {
                d0.this.d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        ActivityManager.MemoryInfo a2;
        View view = (View) this.h.get();
        if (view == null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.b.k("BlackViewDetector", "Monitored view no longer exists.");
            }
            g();
            return;
        }
        Long l = (Long) this.f3107a.a(l4.N5);
        if (l.longValue() > 0 && (a2 = z6.a((ActivityManager) com.applovin.impl.sdk.k.o().getSystemService("activity"))) != null && a2.availMem < l.longValue()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.b.k("BlackViewDetector", "Cancelling black view detection due to low memory");
                return;
            }
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.b;
            oVar.a("BlackViewDetector", "Checking for black view: " + view);
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (measuredWidth != 0 && measuredHeight != 0) {
            a(view, new a());
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar2 = this.b;
            oVar2.k("BlackViewDetector", "Monitored view is not visible due to dimensions (width = " + measuredWidth + ", height = " + measuredHeight + ")");
        }
        f();
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        c cVar = this.n;
        if (cVar != null) {
            cVar.a(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i) {
        boolean z;
        int red = Color.red(i);
        int green = Color.green(i);
        int blue = Color.blue(i);
        Integer num = this.j;
        if (num != null) {
            int red2 = Color.red(num.intValue());
            int green2 = Color.green(this.j.intValue());
            int blue2 = Color.blue(this.j.intValue());
            if (Math.abs(red - red2) > this.g || Math.abs(green - green2) > this.g || Math.abs(blue - blue2) > this.g) {
                z = true;
                int i2 = this.f;
                return red <= i2 || green > i2 || blue > i2 || z;
            }
        }
        z = false;
        int i22 = this.f;
        if (red <= i22) {
        }
    }

    private void a(View view, d dVar) {
        if (Build.VERSION.SDK_INT >= 26) {
            Activity a2 = this.f3107a.e().a();
            if (a2 == null) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.b.b("BlackViewDetector", "Failed to capture screenshot due to no active activity");
                }
                dVar.a(false);
                return;
            }
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            int i = iArr[0];
            int i2 = iArr[1];
            Rect rect = new Rect(i, i2, i + measuredWidth, i2 + measuredHeight);
            try {
                Bitmap createBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
                PixelCopy.request(a2.getWindow(), rect, createBitmap, new b(dVar, createBitmap), new Handler());
                return;
            } catch (Throwable th) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.b;
                    oVar.b("BlackViewDetector", "Failed to capture screenshot due to exception: " + th);
                }
                dVar.a(true);
                return;
            }
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.b.k("BlackViewDetector", "Unable to capture screenshots on views below API 26");
        }
        dVar.a(true);
    }
}
