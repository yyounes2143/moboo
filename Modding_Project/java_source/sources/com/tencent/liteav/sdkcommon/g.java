package com.tencent.liteav.sdkcommon;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class g {
    final Context c;
    final ArrayAdapter<String> e;
    WindowManager f;
    View g;
    TextView h;
    TextView i;
    Spinner j;
    ScrollView k;
    String l;
    final a o;

    /* renamed from: a  reason: collision with root package name */
    final DisplayMetrics f10280a = new DisplayMetrics();
    final WindowManager.LayoutParams b = new WindowManager.LayoutParams();
    private final int p = SupportMenu.CATEGORY_MASK;
    private boolean q = false;
    boolean m = false;
    int n = 1920;
    final Handler d = new Handler(Looper.getMainLooper());

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface a {
        void a(int i);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class b implements View.OnTouchListener {
        private int b;
        private int c;

        private b() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 2) {
                    int rawX = (int) motionEvent.getRawX();
                    int rawY = (int) motionEvent.getRawY();
                    WindowManager.LayoutParams layoutParams = g.this.b;
                    int i = layoutParams.x + (rawX - this.b);
                    layoutParams.x = i;
                    layoutParams.y += rawY - this.c;
                    this.b = rawX;
                    this.c = rawY;
                    layoutParams.x = Math.max(i, 0);
                    WindowManager.LayoutParams layoutParams2 = g.this.b;
                    layoutParams2.y = Math.max(layoutParams2.y, 0);
                    g gVar = g.this;
                    WindowManager.LayoutParams layoutParams3 = gVar.b;
                    int i2 = layoutParams3.x;
                    DisplayMetrics displayMetrics = gVar.f10280a;
                    int i3 = displayMetrics.widthPixels;
                    if (i2 + i3 > i3) {
                        layoutParams3.width = i3 - i2;
                    } else {
                        layoutParams3.width = i3;
                    }
                    int i4 = gVar.n;
                    layoutParams3.height = i4;
                    if (gVar.m) {
                        layoutParams3.height = i4 / 2;
                    }
                    int i5 = layoutParams3.y;
                    int i6 = layoutParams3.height + i5;
                    int i7 = displayMetrics.heightPixels;
                    if (i6 > i7) {
                        layoutParams3.height = i7 - i5;
                    }
                    ViewGroup.LayoutParams layoutParams4 = gVar.k.getLayoutParams();
                    layoutParams4.height = g.this.b();
                    g.this.k.setLayoutParams(layoutParams4);
                    g gVar2 = g.this;
                    gVar2.f.updateViewLayout(view, gVar2.b);
                }
            } else {
                this.b = (int) motionEvent.getRawX();
                this.c = (int) motionEvent.getRawY();
            }
            view.performClick();
            return false;
        }

        public /* synthetic */ b(g gVar, byte b) {
            this();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class c implements AdapterView.OnItemSelectedListener {
        private c() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        @SensorsDataInstrumented
        public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (view == null) {
                SensorsDataAutoTrackHelper.trackListView(adapterView, view, i);
                return;
            }
            ((TextView) view).setTextColor(SupportMenu.CATEGORY_MASK);
            g gVar = g.this;
            gVar.l = gVar.e.getItem(i);
            g.this.o.a(i);
            SensorsDataAutoTrackHelper.trackListView(adapterView, view, i);
        }

        public /* synthetic */ c(g gVar, byte b) {
            this();
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public g(Context context, a aVar) {
        this.c = context;
        this.o = aVar;
        this.e = new ArrayAdapter<>(context, 17367048);
    }

    public final void a(boolean z) {
        if (z == this.q) {
            return;
        }
        if (z) {
            this.f.addView(this.g, this.b);
        } else {
            this.f.removeView(this.g);
        }
        this.q = z;
    }

    public final void b(String str) {
        TextView textView = this.h;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public final int b() {
        return Math.max((this.b.height - a(230)) - a(20), 0);
    }

    public final void a(String str) {
        TextView textView = this.i;
        if (textView != null) {
            textView.setText(str);
        }
        this.d.post(h.a(this));
    }

    public final void a() {
        TextView textView;
        Spinner spinner = this.j;
        if (spinner == null || (textView = (TextView) spinner.getChildAt(spinner.getSelectedItemPosition())) == null) {
            return;
        }
        textView.setTextColor(SupportMenu.CATEGORY_MASK);
    }

    public final int a(int i) {
        return (int) ((i * this.c.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
