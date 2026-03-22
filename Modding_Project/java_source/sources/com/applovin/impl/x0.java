package com.applovin.impl;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.applovin.creative.MaxCreativeDebuggerDisplayedAdActivity;
import com.applovin.impl.d;
import com.applovin.impl.k2;
import com.applovin.impl.y0;
import com.applovin.sdk.R;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class x0 extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private y0 f3807a;
    private FrameLayout b;
    private ListView c;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements k2.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f3808a;

        /* compiled from: Proguard */
        /* renamed from: com.applovin.impl.x0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0028a implements d.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ d2 f3809a;

            public C0028a(d2 d2Var) {
                this.f3809a = d2Var;
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxCreativeDebuggerDisplayedAdActivity maxCreativeDebuggerDisplayedAdActivity) {
                maxCreativeDebuggerDisplayedAdActivity.a((l1) x0.this.f3807a.d().get(this.f3809a.a()), x0.this.f3807a.e());
            }
        }

        public a(c cVar) {
            this.f3808a = cVar;
        }

        @Override // com.applovin.impl.k2.a
        public void a(d2 d2Var, j2 j2Var) {
            if (d2Var.b() != y0.a.RECENT_ADS.ordinal()) {
                return;
            }
            d.a(x0.this, MaxCreativeDebuggerDisplayedAdActivity.class, this.f3808a, new C0028a(d2Var));
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("MAX Creative Debugger");
        setContentView(R.layout.mediation_debugger_list_view);
        this.b = (FrameLayout) findViewById(16908290);
        this.c = (ListView) findViewById(R.id.listView);
        q7.a(this.b, com.applovin.impl.sdk.k.C0);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        y0 y0Var = this.f3807a;
        if (y0Var != null) {
            y0Var.a((k2.a) null);
            this.f3807a.g();
        }
    }

    @Override // android.app.Activity
    @SensorsDataInstrumented
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        PushAutoTrackHelper.onNewIntent(this, intent);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        y0 y0Var = this.f3807a;
        if (y0Var == null) {
            finish();
            return;
        }
        this.c.setAdapter((ListAdapter) y0Var);
        y0 y0Var2 = this.f3807a;
        if (y0Var2 != null && !y0Var2.e().z().g()) {
            a(R.string.applovin_creative_debugger_disabled_text);
            return;
        }
        y0 y0Var3 = this.f3807a;
        if (y0Var3 != null && y0Var3.f()) {
            a(R.string.applovin_creative_debugger_no_ads_text);
        }
    }

    public void a(y0 y0Var, c cVar) {
        this.f3807a = y0Var;
        y0Var.a(new a(cVar));
    }

    private void a(int i) {
        TextView textView = new TextView(this);
        textView.setGravity(17);
        textView.setTextSize(18.0f);
        textView.setText(i);
        this.b.addView(textView, new FrameLayout.LayoutParams(-1, -1, 17));
        this.b.bringChildToFront(textView);
    }
}
