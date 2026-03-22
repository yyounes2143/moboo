package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.applovin.sdk.R;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class j1 extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private l1 f3156a;
    private com.applovin.impl.sdk.k b;
    private TextView c;
    private Button d;

    private void b() {
        n2 n2Var = new n2();
        n2Var.a(this.b.z().a(this.f3156a));
        String b = this.b.z().b(this.f3156a.a());
        if (b != null) {
            n2Var.a("\nBid Response Preview:\n");
            n2Var.a(b);
        }
        TextView textView = (TextView) findViewById(R.id.email_report_tv);
        this.c = textView;
        textView.setText(n2Var.toString());
        this.c.setTextColor(ViewCompat.MEASURED_STATE_MASK);
    }

    public void a(l1 l1Var, com.applovin.impl.sdk.k kVar) {
        this.f3156a = l1Var;
        this.b = kVar;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!a()) {
            finish();
            return;
        }
        setTitle(this.f3156a.c() + " - " + this.f3156a.d());
        setContentView(R.layout.creative_debugger_displayed_ad_detail_activity);
        b();
        q7.a(findViewById(16908290), this.b);
        Button button = (Button) findViewById(R.id.report_ad_button);
        this.d = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.Kkkkkkkkkk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                j1.this.a(view);
            }
        });
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.creative_debugger_displayed_ad_activity_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    @SensorsDataInstrumented
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        PushAutoTrackHelper.onNewIntent(this, intent);
    }

    @Override // android.app.Activity
    @SensorsDataInstrumented
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (!a()) {
            finish();
            SensorsDataAutoTrackHelper.trackMenuItem(this, menuItem);
            return false;
        } else if (R.id.action_share == menuItem.getItemId()) {
            this.b.z().a(this.f3156a, (Context) this, false);
            SensorsDataAutoTrackHelper.trackMenuItem(this, menuItem);
            return true;
        } else {
            boolean onOptionsItemSelected = super.onOptionsItemSelected(menuItem);
            SensorsDataAutoTrackHelper.trackMenuItem(this, menuItem);
            return onOptionsItemSelected;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.b.z().a(this.f3156a, (Context) this, true);
    }

    private boolean a() {
        return (this.f3156a == null || this.b == null) ? false : true;
    }
}
