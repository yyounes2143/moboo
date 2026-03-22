package com.applovin.impl;

import android.content.Context;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.applovin.impl.j2;
import com.applovin.impl.k2;
import com.applovin.impl.n6;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class h0 extends d3 {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.sdk.k f3135a;
    private k2 b;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends k2 {
        final /* synthetic */ List e;
        final /* synthetic */ List f;
        final /* synthetic */ List g;
        final /* synthetic */ List h;
        final /* synthetic */ List i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, List list, List list2, List list3, List list4, List list5) {
            super(context);
            this.e = list;
            this.f = list2;
            this.g = list3;
            this.h = list4;
            this.i = list5;
        }

        @Override // com.applovin.impl.k2
        public int b() {
            return c.values().length;
        }

        @Override // com.applovin.impl.k2
        public List c(int i) {
            List<n6> list;
            boolean z = true;
            if (i == c.MISSING_TC_NETWORKS.ordinal()) {
                list = this.e;
            } else if (i == c.MISSING_AC_NETWORKS.ordinal()) {
                list = this.f;
            } else {
                z = false;
                if (i == c.LISTED_TC_NETWORKS.ordinal()) {
                    list = this.g;
                } else if (i == c.LISTED_AC_NETWORKS.ordinal()) {
                    list = this.h;
                } else {
                    list = this.i;
                }
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (n6 n6Var : list) {
                arrayList.add(h0.this.a(n6Var, z));
            }
            return arrayList;
        }

        @Override // com.applovin.impl.k2
        public int d(int i) {
            if (i == c.MISSING_TC_NETWORKS.ordinal()) {
                return this.e.size();
            }
            if (i == c.MISSING_AC_NETWORKS.ordinal()) {
                return this.f.size();
            }
            if (i == c.LISTED_TC_NETWORKS.ordinal()) {
                return this.g.size();
            }
            if (i == c.LISTED_AC_NETWORKS.ordinal()) {
                return this.h.size();
            }
            return this.i.size();
        }

        @Override // com.applovin.impl.k2
        public j2 e(int i) {
            if (i == c.MISSING_TC_NETWORKS.ordinal()) {
                return new j4("MISSING TCF VENDORS (TC STRING)");
            }
            if (i == c.MISSING_AC_NETWORKS.ordinal()) {
                return new j4("MISSING ATP NETWORKS (AC STRING)");
            }
            if (i == c.LISTED_TC_NETWORKS.ordinal()) {
                return new j4("LISTED TCF VENDORS (TC STRING)");
            }
            if (i == c.LISTED_AC_NETWORKS.ordinal()) {
                return new j4("LISTED ATP NETWORKS (AC STRING)");
            }
            return new j4("NON-CONFIGURABLE NETWORKS");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements k2.a {
        public b() {
        }

        @Override // com.applovin.impl.k2.a
        public void a(d2 d2Var, j2 j2Var) {
            z6.a(j2Var.c(), j2Var.b(), h0.this);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum c {
        MISSING_TC_NETWORKS,
        MISSING_AC_NETWORKS,
        LISTED_TC_NETWORKS,
        LISTED_AC_NETWORKS,
        OTHER_NETWORKS
    }

    @Override // com.applovin.impl.d3
    public com.applovin.impl.sdk.k getSdk() {
        return this.f3135a;
    }

    public void initialize(List<n6> list, List<n6> list2, List<n6> list3, List<n6> list4, List<n6> list5, com.applovin.impl.sdk.k kVar) {
        this.f3135a = kVar;
        a aVar = new a(this, list, list2, list3, list4, list5);
        this.b = aVar;
        aVar.a(new b());
        this.b.notifyDataSetChanged();
    }

    @Override // com.applovin.impl.d3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_list_view);
        setTitle("Configured CMP Networks");
        ((ListView) findViewById(R.id.listView)).setAdapter((ListAdapter) this.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public j2 a(n6 n6Var, boolean z) {
        j2.b a2 = j2.a();
        boolean b2 = this.f3135a.r0().b();
        n6.a f = n6Var.f();
        n6.a aVar = n6.a.TCF_VENDOR;
        if (f != aVar && (n6Var.f() != n6.a.ATP_NETWORK || !b2)) {
            a2.d(n6Var.b());
        } else {
            String c2 = n6Var.c();
            String str = n6Var.f() == aVar ? "IAB Vendor ID: " : "Google ATP ID: ";
            j2.b b3 = a2.d(c2).d(z ? SupportMenu.CATEGORY_MASK : ViewCompat.MEASURED_STATE_MASK).b(c2);
            b3.a(str + n6Var.d()).a(true);
        }
        return a2.a();
    }
}
