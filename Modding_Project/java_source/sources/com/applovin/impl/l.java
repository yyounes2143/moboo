package com.applovin.impl;

import android.content.Context;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class l extends k2 {
    private final m e;
    private final n f;
    private final u7 g;
    private final String h;
    private final List i;
    private final List j;
    private final List k;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum a {
        INFO,
        BIDDERS,
        WATERFALL,
        COUNT
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b extends o3 {
        private final u7 p;

        public b(u7 u7Var, String str, boolean z) {
            super(u7Var.b().d(), l.this.f3169a);
            SpannedString spannedString;
            this.p = u7Var;
            this.c = StringUtils.createSpannedString(u7Var.b().a(), ViewCompat.MEASURED_STATE_MASK, 18, 1);
            if (!TextUtils.isEmpty(str)) {
                spannedString = new SpannedString(str);
            } else {
                spannedString = null;
            }
            this.d = spannedString;
            this.b = z;
        }

        @Override // com.applovin.impl.j2
        public int g() {
            return -12303292;
        }

        @Override // com.applovin.impl.o3, com.applovin.impl.j2
        public boolean o() {
            return this.b;
        }

        public u7 v() {
            return this.p;
        }
    }

    public l(m mVar, n nVar, u7 u7Var, Context context) {
        super(context);
        n f;
        String d;
        this.e = mVar;
        this.g = u7Var;
        if (nVar != null) {
            f = nVar;
        } else {
            f = mVar.f();
        }
        this.f = f;
        if (nVar != null) {
            d = nVar.c();
        } else {
            d = mVar.d();
        }
        this.h = d;
        this.i = h();
        this.j = e();
        this.k = l();
        notifyDataSetChanged();
    }

    private j2 f() {
        return j2.a().d("AB Test Experiment Name").c(j().b()).a();
    }

    private j2 g() {
        return j2.a().d("ID").c(this.e.c()).a();
    }

    private List h() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(g());
        arrayList.add(d());
        if (this.f.b() != null) {
            arrayList.add(f());
        }
        if (this.g != null) {
            arrayList.add(i());
        }
        return arrayList;
    }

    private j2 i() {
        return j2.a().d("Selected Network").c(this.g.b().a()).a();
    }

    private List l() {
        boolean z;
        u7 u7Var = this.g;
        if (u7Var != null && u7Var.d()) {
            return new ArrayList();
        }
        List<u7> e = this.f.e();
        ArrayList arrayList = new ArrayList(e.size());
        for (u7 u7Var2 : e) {
            u7 u7Var3 = this.g;
            if (u7Var3 == null || u7Var3.b().c().equals(u7Var2.b().c())) {
                if (this.g == null) {
                    z = true;
                } else {
                    z = false;
                }
                arrayList.add(new b(u7Var2, null, z));
                for (p3 p3Var : u7Var2.c()) {
                    arrayList.add(j2.a().d(p3Var.a()).c(p3Var.b()).b(true).a());
                }
            }
        }
        return arrayList;
    }

    @Override // com.applovin.impl.k2
    public int b() {
        return a.COUNT.ordinal();
    }

    @Override // com.applovin.impl.k2
    public List c(int i) {
        if (i == a.INFO.ordinal()) {
            return this.i;
        }
        if (i == a.BIDDERS.ordinal()) {
            return this.j;
        }
        return this.k;
    }

    @Override // com.applovin.impl.k2
    public int d(int i) {
        if (i == a.INFO.ordinal()) {
            return this.i.size();
        }
        if (i == a.BIDDERS.ordinal()) {
            return this.j.size();
        }
        return this.k.size();
    }

    @Override // com.applovin.impl.k2
    public j2 e(int i) {
        if (i == a.INFO.ordinal()) {
            return new j4("INFO");
        }
        if (i == a.BIDDERS.ordinal()) {
            return new j4("BIDDERS");
        }
        return new j4("WATERFALL");
    }

    public n j() {
        return this.f;
    }

    public String k() {
        return this.h;
    }

    private j2 d() {
        return j2.a().d("Ad Format").c(this.e.b()).a();
    }

    private List e() {
        u7 u7Var = this.g;
        if (u7Var == null || u7Var.d()) {
            List<u7> a2 = this.f.a();
            ArrayList arrayList = new ArrayList(a2.size());
            for (u7 u7Var2 : a2) {
                u7 u7Var3 = this.g;
                if (u7Var3 == null || u7Var3.b().c().equals(u7Var2.b().c())) {
                    arrayList.add(new b(u7Var2, u7Var2.a() != null ? u7Var2.a().a() : "", this.g == null));
                }
            }
            return arrayList;
        }
        return new ArrayList();
    }
}
