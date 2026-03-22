package com.applovin.impl;

import android.content.Context;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.applovin.impl.d;
import com.applovin.impl.j2;
import com.applovin.impl.k2;
import com.applovin.impl.n6;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxDebuggerCmpNetworksListActivity;
import com.applovin.mediation.MaxDebuggerTcfStringActivity;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class l6 extends d3 {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.sdk.k f3180a;
    private k2 b;
    private final List c = new ArrayList();
    private final List d = new ArrayList();
    private final List e = new ArrayList();
    private final List f = new ArrayList();
    private final List g = new ArrayList();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends k2 {
        public a(Context context) {
            super(context);
        }

        @Override // com.applovin.impl.k2
        public int b() {
            return e.values().length;
        }

        @Override // com.applovin.impl.k2
        public List c(int i) {
            return i == e.IAB_TCF_PARAMETERS.ordinal() ? l6.this.c() : l6.this.a();
        }

        @Override // com.applovin.impl.k2
        public int d(int i) {
            if (i == e.IAB_TCF_PARAMETERS.ordinal()) {
                return d.values().length;
            }
            return c.values().length;
        }

        @Override // com.applovin.impl.k2
        public j2 e(int i) {
            if (i == e.IAB_TCF_PARAMETERS.ordinal()) {
                return new j4("IAB TCF Parameters");
            }
            return new j4("CMP CONFIGURATION");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements k2.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ m6 f3181a;
        final /* synthetic */ com.applovin.impl.sdk.k b;

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public class a implements d.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f3182a;
            final /* synthetic */ String b;

            public a(String str, String str2) {
                this.f3182a = str;
                this.b = str2;
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerTcfStringActivity maxDebuggerTcfStringActivity) {
                maxDebuggerTcfStringActivity.initialize(this.f3182a, this.b, b.this.b);
            }
        }

        /* compiled from: Proguard */
        /* renamed from: com.applovin.impl.l6$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0014b implements d.b {
            public C0014b() {
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerCmpNetworksListActivity maxDebuggerCmpNetworksListActivity) {
                maxDebuggerCmpNetworksListActivity.initialize(l6.this.e, l6.this.f, l6.this.c, l6.this.d, l6.this.g, b.this.b);
            }
        }

        public b(m6 m6Var, com.applovin.impl.sdk.k kVar) {
            this.f3181a = m6Var;
            this.b = kVar;
        }

        @Override // com.applovin.impl.k2.a
        public void a(d2 d2Var, j2 j2Var) {
            String a2;
            String c;
            if (d2Var.b() == e.IAB_TCF_PARAMETERS.ordinal()) {
                if (d2Var.a() == d.TC_STRING.ordinal()) {
                    a2 = n4.v.a();
                    c = this.f3181a.j();
                } else {
                    a2 = n4.w.a();
                    c = this.f3181a.c();
                }
                com.applovin.impl.d.a(l6.this, MaxDebuggerTcfStringActivity.class, this.b.e(), new a(a2, c));
            } else if (d2Var.a() == c.CONFIGURED_NETWORKS.ordinal()) {
                com.applovin.impl.d.a(l6.this, MaxDebuggerCmpNetworksListActivity.class, this.b.e(), new C0014b());
            } else {
                z6.a(j2Var.c(), j2Var.b(), l6.this);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum c {
        CMP_SDK_ID,
        CMP_SDK_VERSION,
        INSTRUCTIONS,
        CONFIGURED_NETWORKS
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum d {
        GDPR_APPLIES,
        TC_STRING,
        AC_STRING
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum e {
        IAB_TCF_PARAMETERS,
        CMP_CONFIGURATION
    }

    @Override // com.applovin.impl.d3
    public com.applovin.impl.sdk.k getSdk() {
        return this.f3180a;
    }

    public void initialize(List<n6> list, com.applovin.impl.sdk.k kVar) {
        this.f3180a = kVar;
        m6 r0 = kVar.r0();
        a(list);
        a aVar = new a(this);
        this.b = aVar;
        aVar.a(new b(r0, kVar));
        this.b.notifyDataSetChanged();
    }

    @Override // com.applovin.impl.d3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_list_view);
        setTitle("CMP (Consent Management Platform)");
        ((ListView) findViewById(R.id.listView)).setAdapter((ListAdapter) this.b);
    }

    @Override // com.applovin.impl.d3, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        k2 k2Var = this.b;
        if (k2Var != null) {
            k2Var.a((k2.a) null);
        }
    }

    private void a(List list) {
        boolean b2 = this.f3180a.r0().b();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            n6 n6Var = (n6) it.next();
            if (n6Var.f() == n6.a.TCF_VENDOR) {
                if (Boolean.TRUE.equals(n6Var.a())) {
                    a(n6Var, this.c);
                } else {
                    a(n6Var, this.e);
                }
            } else if (n6Var.f() != n6.a.ATP_NETWORK) {
                this.g.add(n6Var);
            } else if (b2) {
                if (Boolean.TRUE.equals(n6Var.a())) {
                    a(n6Var, this.d);
                } else {
                    a(n6Var, this.f);
                }
            } else {
                this.g.add(n6Var);
            }
        }
    }

    private j2 b() {
        j2.b a2;
        String a3 = n4.s.a();
        Integer e2 = this.f3180a.r0().e();
        if (StringUtils.isValidString(this.f3180a.r0().d())) {
            a2 = j2.a(j2.c.RIGHT_DETAIL);
        } else {
            j2.b b2 = j2.a(j2.c.DETAIL).b("Unknown CMP SDK ID");
            a2 = b2.a("Your integrated CMP might not be Google-certified. " + ("SharedPreferences value for key " + a3 + " is " + e2 + ".") + "\n\nIf you use Google AdMob or Google Ad Manager, make sure that the integrated CMP is included in the list of Google-certified CMPs at: https://support.google.com/admob/answer/13554116").a(R.drawable.applovin_ic_warning).b(i0.a(R.color.applovin_sdk_warningColor, this)).a(true);
        }
        a2.d(a3);
        a2.c(e2 != null ? e2.toString() : "No value set");
        a2.c(e2 != null ? ViewCompat.MEASURED_STATE_MASK : SupportMenu.CATEGORY_MASK);
        return a2.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List c() {
        ArrayList arrayList = new ArrayList(d.values().length);
        Integer g = this.f3180a.r0().g();
        String j = this.f3180a.r0().j();
        String c2 = this.f3180a.r0().c();
        arrayList.add(a(n4.u.a(), g));
        arrayList.add(a(n4.v.a(), j, !p6.b(j)));
        arrayList.add(a(n4.w.a(), c2, false));
        return arrayList;
    }

    private void a(n6 n6Var, List list) {
        if (n6Var.d() != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (n6Var.d().equals(((n6) it.next()).d())) {
                    return;
                }
            }
        }
        list.add(n6Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List a() {
        String str;
        ArrayList arrayList = new ArrayList(c.values().length);
        int size = this.e.size() + this.f.size();
        arrayList.add(b());
        arrayList.add(a(n4.t.a(), this.f3180a.r0().f()));
        arrayList.add(j2.a(j2.c.DETAIL).d("To check which networks are missing from your CMP, first make sure that you have granted consent to all networks through your CMP flow. Then add the following networks to your CMP network list.").a());
        j2.b d2 = j2.a(j2.c.RIGHT_DETAIL).d("Configured CMP Networks");
        if (size > 0) {
            str = "Missing " + size + " network(s)";
        } else {
            str = "";
        }
        arrayList.add(d2.c(str).c(size > 0 ? SupportMenu.CATEGORY_MASK : ViewCompat.MEASURED_STATE_MASK).a(this).a(true).a());
        return arrayList;
    }

    private j2 a(String str, Integer num) {
        return j2.a(j2.c.RIGHT_DETAIL).d(str).c(num != null ? num.toString() : "No value set").c(num != null ? ViewCompat.MEASURED_STATE_MASK : SupportMenu.CATEGORY_MASK).a();
    }

    private j2 a(String str, String str2, boolean z) {
        boolean isValidString = StringUtils.isValidString(str2);
        if (isValidString && str2.length() > 35) {
            str2 = str2.substring(0, 35) + "...";
        }
        j2.b d2 = j2.a(j2.c.DETAIL).d(str);
        if (!isValidString) {
            str2 = "No value set";
        }
        j2.b a2 = d2.c(str2).c(z ? SupportMenu.CATEGORY_MASK : ViewCompat.MEASURED_STATE_MASK).a(isValidString);
        if (isValidString) {
            a2.a(this);
        }
        return a2.a();
    }
}
