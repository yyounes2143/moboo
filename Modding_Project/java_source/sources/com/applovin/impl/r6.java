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
public abstract class r6 extends d3 {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.sdk.k f3530a;
    private List b;
    private k2 c;
    private List d;
    private ListView e;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends k2 {
        final /* synthetic */ List e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, List list) {
            super(context);
            this.e = list;
        }

        @Override // com.applovin.impl.k2
        public j2 a() {
            return new j2.b(j2.c.SECTION_CENTERED).d("Select a network to load test ads using your MAX ad unit configuration. Once enabled, this functionality will reset on the next app session.").a();
        }

        @Override // com.applovin.impl.k2
        public int b() {
            return 1;
        }

        @Override // com.applovin.impl.k2
        public List c(int i) {
            return r6.this.d;
        }

        @Override // com.applovin.impl.k2
        public int d(int i) {
            return this.e.size();
        }

        @Override // com.applovin.impl.k2
        public j2 e(int i) {
            return new j4("TEST MODE NETWORKS");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements k2.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f3531a;
        final /* synthetic */ com.applovin.impl.sdk.k b;

        public b(List list, com.applovin.impl.sdk.k kVar) {
            this.f3531a = list;
            this.b = kVar;
        }

        @Override // com.applovin.impl.k2.a
        public void a(d2 d2Var, j2 j2Var) {
            List u = ((v2) this.f3531a.get(d2Var.a())).u();
            if (u.equals(this.b.s0().b())) {
                this.b.s0().a((List) null);
            } else {
                this.b.s0().a(u);
            }
            r6.this.c.notifyDataSetChanged();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c extends o3 {
        final /* synthetic */ v2 p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(v2 v2Var, Context context, v2 v2Var2) {
            super(v2Var, context);
            this.p = v2Var2;
        }

        @Override // com.applovin.impl.o3, com.applovin.impl.j2
        public int d() {
            if (this.p.u().equals(r6.this.f3530a.s0().b())) {
                return R.drawable.applovin_ic_check_mark_borderless;
            }
            return 0;
        }

        @Override // com.applovin.impl.o3, com.applovin.impl.j2
        public int e() {
            if (this.p.u().equals(r6.this.f3530a.s0().b())) {
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
            return StringUtils.createSpannedString(this.p.g(), i, 18, 1);
        }
    }

    public r6() {
        this.communicatorTopics.add("network_sdk_version_updated");
    }

    @Override // com.applovin.impl.d3
    public com.applovin.impl.sdk.k getSdk() {
        return this.f3530a;
    }

    public void initialize(List<v2> list, com.applovin.impl.sdk.k kVar) {
        this.f3530a = kVar;
        this.b = list;
        this.d = a(list);
        a aVar = new a(this, list);
        this.c = aVar;
        aVar.a(new b(list, kVar));
        this.c.notifyDataSetChanged();
    }

    @Override // com.applovin.impl.d3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("Select Test Mode Network");
        setContentView(R.layout.mediation_debugger_list_view);
        ListView listView = (ListView) findViewById(R.id.listView);
        this.e = listView;
        listView.setAdapter((ListAdapter) this.c);
    }

    @Override // com.applovin.impl.d3, com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        this.d = a(this.b);
        this.c.notifyDataSetChanged();
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            v2 v2Var = (v2) it.next();
            arrayList.add(new c(v2Var, this, v2Var));
        }
        return arrayList;
    }
}
