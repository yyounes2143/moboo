package com.applovin.impl;

import android.content.Context;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.applovin.impl.n6;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class j6 extends d3 {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.sdk.k f3161a;
    private k2 b;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends k2 {
        final /* synthetic */ ArrayList e;
        final /* synthetic */ ArrayList f;
        final /* synthetic */ boolean g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, ArrayList arrayList, ArrayList arrayList2, boolean z) {
            super(context);
            this.e = arrayList;
            this.f = arrayList2;
            this.g = z;
        }

        @Override // com.applovin.impl.k2
        public int b() {
            return b.values().length;
        }

        @Override // com.applovin.impl.k2
        public List c(int i) {
            if (i == b.TC_NETWORKS.ordinal()) {
                return this.e;
            }
            return this.f;
        }

        @Override // com.applovin.impl.k2
        public int d(int i) {
            if (i == b.TC_NETWORKS.ordinal()) {
                return this.e.size();
            }
            return this.f.size();
        }

        @Override // com.applovin.impl.k2
        public j2 e(int i) {
            String str;
            if (i == b.TC_NETWORKS.ordinal()) {
                return new j4("TCF VENDORS (TC STRING)");
            }
            if (this.g) {
                str = "ATP NETWORKS (AC STRING)";
            } else {
                str = "APPLOVIN PRIVACY SETTING";
            }
            return new j4(str);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum b {
        TC_NETWORKS,
        AC_NETWORKS
    }

    private j2 a(String str, String str2) {
        return j2.a().d(str).c(str2).a();
    }

    @Override // com.applovin.impl.d3
    public com.applovin.impl.sdk.k getSdk() {
        return this.f3161a;
    }

    public void initialize(List<n6> list, com.applovin.impl.sdk.k kVar) {
        this.f3161a = kVar;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String a2 = l0.b().a(this);
        boolean b2 = kVar.r0().b();
        if (!b2) {
            arrayList2.add(a("Has User Consent", a2));
        }
        for (n6 n6Var : list) {
            Boolean a3 = n6Var.a();
            if (a3 != null) {
                if (n6Var.f() == n6.a.TCF_VENDOR) {
                    arrayList.add(a(n6Var.b(), String.valueOf(a3)));
                } else if (n6Var.f() == n6.a.ATP_NETWORK) {
                    arrayList2.add(a(n6Var.b(), String.valueOf(a3)));
                }
            } else if (b2 && n6Var.f() == n6.a.ATP_NETWORK) {
                arrayList2.add(a(n6Var.b(), a2));
            }
        }
        a aVar = new a(this, arrayList, arrayList2, b2);
        this.b = aVar;
        aVar.notifyDataSetChanged();
    }

    @Override // com.applovin.impl.d3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_list_view);
        setTitle("Network Consent Statuses");
        ((ListView) findViewById(R.id.listView)).setAdapter((ListAdapter) this.b);
    }
}
