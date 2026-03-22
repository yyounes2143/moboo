package com.mbridge.msdk.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.Display;
import android.view.OrientationEventListener;
import android.view.WindowManager;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.c1;
import com.mbridge.msdk.foundation.tools.o0;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public abstract class MBBaseActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private Display f8712a;
    private OrientationEventListener b;
    private int c = -1;
    private volatile boolean d = false;
    private Runnable e;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MBBaseActivity.this.b();
            } catch (Exception e) {
                o0.b("MBBaseActivity", e.getMessage());
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b extends OrientationEventListener {
        public b(Context context, int i) {
            super(context, i);
        }

        @Override // android.view.OrientationEventListener
        public void onOrientationChanged(int i) {
            int i2;
            if (MBBaseActivity.this.f8712a != null) {
                i2 = MBBaseActivity.this.f8712a.getRotation();
            } else {
                i2 = 0;
            }
            if (i2 == 1 && MBBaseActivity.this.c != 1) {
                MBBaseActivity.this.c = 1;
                MBBaseActivity.this.getNotchParams();
                o0.b("MBBaseActivity", "Orientation Left");
            } else if (i2 == 3 && MBBaseActivity.this.c != 2) {
                MBBaseActivity.this.c = 2;
                MBBaseActivity.this.getNotchParams();
                o0.b("MBBaseActivity", "Orientation Right");
            } else if (i2 == 0 && MBBaseActivity.this.c != 3) {
                MBBaseActivity.this.c = 3;
                MBBaseActivity.this.getNotchParams();
                o0.b("MBBaseActivity", "Orientation Top");
            } else if (i2 == 2 && MBBaseActivity.this.c != 4) {
                MBBaseActivity.this.c = 4;
                MBBaseActivity.this.getNotchParams();
                o0.b("MBBaseActivity", "Orientation Bottom");
            }
        }
    }

    private void d() {
        b bVar = new b(this, 1);
        this.b = bVar;
        if (bVar.canDetectOrientation()) {
            this.b.enable();
            return;
        }
        this.b.disable();
        this.b = null;
    }

    public void getNotchParams() {
        if (this.d) {
            return;
        }
        this.e = new a();
        getWindow().getDecorView().postDelayed(this.e, 500L);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.d = false;
        try {
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
            getWindow().addFlags(512);
            c();
            a();
            c1.a(getWindow());
        } catch (Exception e) {
            o0.b("MBBaseActivity", e.getMessage());
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.d = true;
        super.onDestroy();
        try {
            OrientationEventListener orientationEventListener = this.b;
            if (orientationEventListener != null) {
                orientationEventListener.disable();
                this.b = null;
            }
            if (this.e != null) {
                getWindow().getDecorView().removeCallbacks(this.e);
            }
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                o0.b("MBBaseActivity", e.getMessage());
            }
        }
    }

    @Override // android.app.Activity
    @SensorsDataInstrumented
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        PushAutoTrackHelper.onNewIntent(this, intent);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (com.mbridge.msdk.foundation.feedback.b.f) {
            return;
        }
        getNotchParams();
        c();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        c();
    }

    public abstract void setTopControllerPadding(int i, int i2, int i3, int i4, int i5);

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        r0 = r1.getDisplayCutout();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b() {
        /*
            r12 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            boolean r1 = r12.d
            if (r1 == 0) goto L9
            r6 = r12
            goto L9f
        L9:
            android.view.Window r1 = r12.getWindow()
            android.view.View r1 = r1.getDecorView()
            android.view.WindowInsets r1 = r1.getRootWindowInsets()
            r2 = -1
            r3 = 0
            if (r1 == 0) goto L8f
            r4 = 28
            if (r0 < r4) goto L8f
            android.view.DisplayCutout r0 = androidx.core.view.Illlllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1)
            if (r0 == 0) goto L8f
            int r1 = Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)
            int r4 = Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)
            int r5 = Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)
            int r0 = Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)
            android.view.Display r6 = r12.f8712a
            if (r6 == 0) goto L3c
            int r6 = r6.getRotation()
            goto L40
        L3c:
            int r6 = r12.a()
        L40:
            int r7 = r12.c
            r8 = 2
            r9 = 1
            r10 = 3
            if (r7 != r2) goto L72
            if (r6 != 0) goto L4b
            r7 = r10
            goto L58
        L4b:
            if (r6 != r9) goto L4f
            r7 = r9
            goto L58
        L4f:
            if (r6 != r8) goto L53
            r7 = 4
            goto L58
        L53:
            if (r6 != r10) goto L57
            r7 = r8
            goto L58
        L57:
            r7 = r2
        L58:
            r12.c = r7
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            int r11 = r12.c
            r7.append(r11)
            java.lang.String r11 = ""
            r7.append(r11)
            java.lang.String r7 = r7.toString()
            java.lang.String r11 = "MBBaseActivity"
            com.mbridge.msdk.foundation.tools.o0.b(r11, r7)
        L72:
            if (r6 == 0) goto L8a
            if (r6 == r9) goto L87
            if (r6 == r8) goto L84
            if (r6 == r10) goto L81
        L7a:
            r6 = r12
            r11 = r0
            r8 = r1
            r7 = r2
        L7e:
            r9 = r4
            r10 = r5
            goto L95
        L81:
            r2 = 270(0x10e, float:3.78E-43)
            goto L7a
        L84:
            r2 = 180(0xb4, float:2.52E-43)
            goto L7a
        L87:
            r2 = 90
            goto L7a
        L8a:
            r6 = r12
            r11 = r0
            r8 = r1
            r7 = r3
            goto L7e
        L8f:
            r6 = r12
            r7 = r2
            r8 = r3
            r9 = r8
            r10 = r9
            r11 = r10
        L95:
            r6.setTopControllerPadding(r7, r8, r9, r10, r11)
            android.view.OrientationEventListener r0 = r6.b
            if (r0 != 0) goto L9f
            r12.d()
        L9f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.activity.MBBaseActivity.b():void");
    }

    private void c() {
        try {
            getWindow().addFlags(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
            getWindow().getDecorView().setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
        } catch (Throwable th) {
            o0.b("MBBaseActivity", th.getMessage());
        }
    }

    private int a() {
        Display display;
        if (this.f8712a == null) {
            if (Build.VERSION.SDK_INT >= 30) {
                display = getDisplay();
                this.f8712a = display;
            } else {
                this.f8712a = ((WindowManager) getSystemService("window")).getDefaultDisplay();
            }
        }
        Display display2 = this.f8712a;
        if (display2 != null) {
            return display2.getRotation();
        }
        return -1;
    }
}
