package com.applovin.impl;

import android.content.Context;
import android.os.Bundle;
import android.text.SpannedString;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.view.ViewCompat;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.impl.j2;
import com.applovin.impl.k2;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class q6 extends d3 {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.sdk.k f3513a;
    private List b;
    private List c;
    private k2 d;
    private List e;
    private List f;
    private ListView g;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends k2 {
        public a(Context context) {
            super(context);
        }

        @Override // com.applovin.impl.k2
        public j2 a() {
            return new j2.b(j2.c.SECTION_CENTERED).d("Select a network to load ads using your MAX ad unit configuration. Once enabled, this functionality will reset on the next app session.").a();
        }

        @Override // com.applovin.impl.k2
        public int b() {
            return c.COUNT.ordinal();
        }

        @Override // com.applovin.impl.k2
        public List c(int i) {
            return i == c.BIDDERS.ordinal() ? q6.this.e : q6.this.f;
        }

        @Override // com.applovin.impl.k2
        public int d(int i) {
            if (i == c.BIDDERS.ordinal()) {
                return q6.this.e.size();
            }
            return q6.this.f.size();
        }

        @Override // com.applovin.impl.k2
        public j2 e(int i) {
            if (i == c.BIDDERS.ordinal()) {
                return new j4("BIDDERS");
            }
            return new j4("WATERFALL");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b extends o3 {
        final /* synthetic */ m2 p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(v2 v2Var, Context context, m2 m2Var) {
            super(v2Var, context);
            this.p = m2Var;
        }

        @Override // com.applovin.impl.o3, com.applovin.impl.j2
        public int d() {
            if (q6.this.f3513a.s0().b() != null && q6.this.f3513a.s0().b().equals(this.p.b())) {
                return R.drawable.applovin_ic_check_mark_borderless;
            }
            return 0;
        }

        @Override // com.applovin.impl.o3, com.applovin.impl.j2
        public int e() {
            if (q6.this.f3513a.s0().b() != null && q6.this.f3513a.s0().b().equals(this.p.b())) {
                return -16776961;
            }
            return super.e();
        }

        @Override // com.applovin.impl.j2
        public SpannedString k() {
            int i;
            if (o()) {
                i = ViewCompat.MEASURED_STATE_MASK;
            } else {
                i = -7829368;
            }
            return StringUtils.createSpannedString(this.p.a(), i, 18, 1);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum c {
        BIDDERS,
        WATERFALL,
        COUNT
    }

    public q6() {
        this.communicatorTopics.add("network_sdk_version_updated");
    }

    @Override // com.applovin.impl.d3
    public com.applovin.impl.sdk.k getSdk() {
        return this.f3513a;
    }

    public void initialize(List<m2> list, List<m2> list2, final com.applovin.impl.sdk.k kVar) {
        this.f3513a = kVar;
        this.b = list;
        this.c = list2;
        this.e = a(list);
        this.f = a(list2);
        a aVar = new a(this);
        this.d = aVar;
        aVar.a(new k2.a() { // from class: com.applovin.impl.QQOOOO
            @Override // com.applovin.impl.k2.a
            public final void a(d2 d2Var, j2 j2Var) {
                q6.this.a(kVar, d2Var, j2Var);
            }
        });
        this.d.notifyDataSetChanged();
    }

    @Override // com.applovin.impl.d3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("Select Live Network");
        setContentView(R.layout.mediation_debugger_list_view);
        ListView listView = (ListView) findViewById(R.id.listView);
        this.g = listView;
        listView.setAdapter((ListAdapter) this.d);
    }

    @Override // com.applovin.impl.d3, com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        this.e = a(this.b);
        this.f = a(this.c);
        this.d.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.sdk.k kVar, d2 d2Var, j2 j2Var) {
        List b2 = a(d2Var).b();
        if (b2.equals(kVar.s0().b())) {
            kVar.s0().a((List) null);
        } else {
            kVar.s0().a(b2);
        }
        this.d.notifyDataSetChanged();
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            m2 m2Var = (m2) it.next();
            arrayList.add(new b(m2Var.d(), this, m2Var));
        }
        return arrayList;
    }

    private m2 a(d2 d2Var) {
        if (d2Var.b() == c.BIDDERS.ordinal()) {
            return (m2) this.b.get(d2Var.a());
        }
        return (m2) this.c.get(d2Var.a());
    }
}
