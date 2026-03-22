package com.applovin.impl;

import android.content.Context;
import android.content.Intent;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.webkit.internal.AssetHelper;
import com.applovin.impl.d;
import com.applovin.impl.e3;
import com.applovin.impl.k2;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxDebuggerAdUnitsListActivity;
import com.applovin.mediation.MaxDebuggerDetailActivity;
import com.applovin.mediation.MaxDebuggerTcfConsentStatusesListActivity;
import com.applovin.mediation.MaxDebuggerTcfInfoListActivity;
import com.applovin.mediation.MaxDebuggerTestLiveNetworkActivity;
import com.applovin.mediation.MaxDebuggerTestModeNetworkActivity;
import com.applovin.mediation.MaxDebuggerUnifiedFlowActivity;
import com.applovin.sdk.R;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class c3 extends d3 {

    /* renamed from: a  reason: collision with root package name */
    private e3 f3087a;
    private DataSetObserver b;
    private FrameLayout c;
    private ListView d;
    private com.applovin.impl.a e;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends DataSetObserver {
        public a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            c3.this.a();
            c3 c3Var = c3.this;
            c3Var.b((Context) c3Var);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements k2.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.c f3089a;

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public class a implements d.b {
            public a() {
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerUnifiedFlowActivity maxDebuggerUnifiedFlowActivity) {
                maxDebuggerUnifiedFlowActivity.initialize(c3.this.f3087a.t());
            }
        }

        /* compiled from: Proguard */
        /* renamed from: com.applovin.impl.c3$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0012b implements d.b {
            public C0012b() {
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerTcfInfoListActivity maxDebuggerTcfInfoListActivity) {
                maxDebuggerTcfInfoListActivity.initialize(c3.this.f3087a.d(), c3.this.f3087a.t());
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public class c implements d.b {
            public c() {
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerTcfConsentStatusesListActivity maxDebuggerTcfConsentStatusesListActivity) {
                maxDebuggerTcfConsentStatusesListActivity.initialize(c3.this.f3087a.d(), c3.this.f3087a.t());
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public class d implements d.b {
            public d() {
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerAdUnitsListActivity maxDebuggerAdUnitsListActivity) {
                maxDebuggerAdUnitsListActivity.initialize(c3.this.f3087a.f(), false, c3.this.f3087a.t());
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public class e implements d.b {
            public e() {
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerTestLiveNetworkActivity maxDebuggerTestLiveNetworkActivity) {
                maxDebuggerTestLiveNetworkActivity.initialize(c3.this.f3087a.k(), c3.this.f3087a.w(), c3.this.f3087a.t());
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public class f implements d.b {
            public f() {
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerTestModeNetworkActivity maxDebuggerTestModeNetworkActivity) {
                maxDebuggerTestModeNetworkActivity.initialize(c3.this.f3087a.v(), c3.this.f3087a.t());
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public class g implements d.b {
            public g() {
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerAdUnitsListActivity maxDebuggerAdUnitsListActivity) {
                maxDebuggerAdUnitsListActivity.initialize(c3.this.f3087a.o(), true, c3.this.f3087a.t());
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public class h implements d.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ j2 f3097a;

            public h(j2 j2Var) {
                this.f3097a = j2Var;
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerDetailActivity maxDebuggerDetailActivity) {
                maxDebuggerDetailActivity.initialize(((o3) this.f3097a).r());
            }
        }

        public b(com.applovin.impl.c cVar) {
            this.f3089a = cVar;
        }

        @Override // com.applovin.impl.k2.a
        public void a(d2 d2Var, j2 j2Var) {
            int b = d2Var.b();
            if (b == e3.e.APP_INFO.ordinal()) {
                z6.a(j2Var.c(), j2Var.b(), c3.this);
            } else if (b == e3.e.MAX.ordinal()) {
                if (c3.this.f3087a.a(j2Var)) {
                    com.applovin.impl.d.a(c3.this, MaxDebuggerUnifiedFlowActivity.class, this.f3089a, new a());
                } else {
                    z6.a(j2Var.c(), j2Var.b(), c3.this);
                }
            } else if (b == e3.e.PRIVACY.ordinal()) {
                if (d2Var.a() == e3.d.CMP.ordinal()) {
                    if (StringUtils.isValidString(c3.this.f3087a.t().r0().j())) {
                        com.applovin.impl.d.a(c3.this, MaxDebuggerTcfInfoListActivity.class, this.f3089a, new C0012b());
                    } else {
                        z6.a(j2Var.c(), j2Var.b(), c3.this);
                    }
                } else if (d2Var.a() == e3.d.NETWORK_CONSENT_STATUSES.ordinal()) {
                    com.applovin.impl.d.a(c3.this, MaxDebuggerTcfConsentStatusesListActivity.class, this.f3089a, new c());
                }
            } else if (b == e3.e.ADS.ordinal()) {
                if (d2Var.a() == e3.b.AD_UNITS.ordinal()) {
                    if (c3.this.f3087a.f().size() > 0) {
                        com.applovin.impl.d.a(c3.this, MaxDebuggerAdUnitsListActivity.class, this.f3089a, new d());
                    } else {
                        z6.a("No live ad units", "Please setup or enable your MAX ad units on https://applovin.com.", c3.this);
                    }
                } else if (d2Var.a() == e3.b.SELECT_LIVE_NETWORKS.ordinal()) {
                    if (c3.this.f3087a.k().size() <= 0 && c3.this.f3087a.w().size() <= 0) {
                        z6.a("Complete Integrations", "Please complete integrations in order to access this.", c3.this);
                    } else if (c3.this.f3087a.t().s0().c()) {
                        z6.a("Restart Required", j2Var.b(), c3.this);
                    } else {
                        com.applovin.impl.d.a(c3.this, MaxDebuggerTestLiveNetworkActivity.class, this.f3089a, new e());
                    }
                } else if (d2Var.a() == e3.b.SELECT_TEST_MODE_NETWORKS.ordinal()) {
                    if (!c3.this.f3087a.t().s0().c()) {
                        c3.this.getSdk().s0().a();
                        z6.a("Restart Required", j2Var.b(), c3.this);
                    } else if (c3.this.f3087a.v().size() > 0) {
                        com.applovin.impl.d.a(c3.this, MaxDebuggerTestModeNetworkActivity.class, this.f3089a, new f());
                    } else {
                        z6.a("Complete Integrations", "Please complete integrations in order to access this.", c3.this);
                    }
                } else if (d2Var.a() == e3.b.INITIALIZATION_AD_UNITS.ordinal()) {
                    com.applovin.impl.d.a(c3.this, MaxDebuggerAdUnitsListActivity.class, this.f3089a, new g());
                }
            } else if ((b == e3.e.MICRO_SDK_PARTNER_NETWORKS.ordinal() || b == e3.e.INCOMPLETE_NETWORKS.ordinal() || b == e3.e.COMPLETED_NETWORKS.ordinal()) && (j2Var instanceof o3)) {
                com.applovin.impl.d.a(c3.this, MaxDebuggerDetailActivity.class, this.f3089a, new h(j2Var));
            }
        }
    }

    private void c() {
        a();
        com.applovin.impl.a aVar = new com.applovin.impl.a(this, 50, 16842874);
        this.e = aVar;
        aVar.setColor(-3355444);
        this.c.addView(this.e, new FrameLayout.LayoutParams(-1, -1, 17));
        this.c.bringChildToFront(this.e);
        this.e.a();
    }

    @Override // com.applovin.impl.d3
    public com.applovin.impl.sdk.k getSdk() {
        e3 e3Var = this.f3087a;
        if (e3Var != null) {
            return e3Var.t();
        }
        return null;
    }

    @Override // com.applovin.impl.d3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("MAX Mediation Debugger");
        setContentView(R.layout.mediation_debugger_list_view);
        this.c = (FrameLayout) findViewById(16908290);
        ListView listView = (ListView) findViewById(R.id.listView);
        this.d = listView;
        listView.setAdapter((ListAdapter) this.f3087a);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.mediation_debugger_activity_menu, menu);
        return true;
    }

    @Override // com.applovin.impl.d3, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        e3 e3Var = this.f3087a;
        if (e3Var != null) {
            e3Var.unregisterDataSetObserver(this.b);
            this.f3087a.a((k2.a) null);
        }
    }

    @Override // android.app.Activity
    @SensorsDataInstrumented
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (R.id.action_share == menuItem.getItemId()) {
            b();
            SensorsDataAutoTrackHelper.trackMenuItem(this, menuItem);
            return true;
        }
        boolean onOptionsItemSelected = super.onOptionsItemSelected(menuItem);
        SensorsDataAutoTrackHelper.trackMenuItem(this, menuItem);
        return onOptionsItemSelected;
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        e3 e3Var = this.f3087a;
        if (e3Var != null && !e3Var.y()) {
            c();
        }
    }

    public void setListAdapter(e3 e3Var, c cVar) {
        DataSetObserver dataSetObserver;
        e3 e3Var2 = this.f3087a;
        if (e3Var2 != null && (dataSetObserver = this.b) != null) {
            e3Var2.unregisterDataSetObserver(dataSetObserver);
        }
        this.f3087a = e3Var;
        this.b = new a();
        b((Context) this);
        this.f3087a.registerDataSetObserver(this.b);
        this.f3087a.a(new b(cVar));
    }

    private void b() {
        e3 e3Var = this.f3087a;
        if (e3Var == null) {
            return;
        }
        String p = e3Var.p();
        if (TextUtils.isEmpty(p)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.putExtra("android.intent.extra.TEXT", p);
        intent.putExtra("android.intent.extra.TITLE", "Mediation Debugger logs");
        intent.putExtra("android.intent.extra.SUBJECT", "MAX Mediation Debugger logs");
        startActivity(Intent.createChooser(intent, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        com.applovin.impl.a aVar = this.e;
        if (aVar != null) {
            aVar.b();
            this.c.removeView(this.e);
            this.e = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context) {
        z6.a(this.f3087a.i(), this.f3087a.h(), context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final Context context) {
        if (!StringUtils.isValidString(this.f3087a.h()) || this.f3087a.x()) {
            return;
        }
        this.f3087a.b(true);
        runOnUiThread(new Runnable() { // from class: com.applovin.impl.Wwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                c3.this.a(context);
            }
        });
    }
}
