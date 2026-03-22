package com.applovin.impl;

import android.content.Context;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import com.applovin.impl.j2;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v2;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class x2 extends k2 {
    private final v2 e;
    private List f;
    private final List g;
    private final List h;
    private final List i;
    private final List j;
    private SpannedString k;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum a {
        INTEGRATIONS,
        PERMISSIONS,
        CONFIGURATION,
        DEPENDENCIES,
        TEST_ADS,
        COUNT
    }

    public x2(v2 v2Var, Context context) {
        super(context);
        this.e = v2Var;
        if (v2Var.q() == v2.a.INVALID_INTEGRATION) {
            SpannableString spannableString = new SpannableString("Tap for more information");
            spannableString.setSpan(new AbsoluteSizeSpan(12, true), 0, spannableString.length(), 33);
            this.k = new SpannedString(spannableString);
        } else {
            this.k = new SpannedString("");
        }
        this.f = g();
        this.g = b(v2Var.n());
        this.h = e();
        this.i = a(v2Var.f());
        this.j = j();
        notifyDataSetChanged();
    }

    private j2 f() {
        if (this.e.I()) {
            return null;
        }
        return j2.a().d("Initialization Status").c(f(this.e.i())).a(false).a();
    }

    private List g() {
        ArrayList arrayList = new ArrayList(3);
        CollectionUtils.addObjectIfExists(i(), arrayList);
        CollectionUtils.addObjectIfExists(d(), arrayList);
        CollectionUtils.addObjectIfExists(f(), arrayList);
        return arrayList;
    }

    private j2 i() {
        j2.b c = j2.a().d("SDK").c(this.e.p());
        if (TextUtils.isEmpty(this.e.p())) {
            c.a(a(this.e.G())).b(b(this.e.G()));
        }
        return c.a();
    }

    private List j() {
        ArrayList arrayList = new ArrayList(3);
        if (StringUtils.isValidString(this.e.v())) {
            arrayList.add(j2.a(j2.c.DETAIL).d(this.e.v()).a());
        }
        if (this.e.y() == v2.b.NOT_SUPPORTED) {
            return arrayList;
        }
        if (this.e.s() != null) {
            arrayList.add(c(this.e.s()));
        }
        arrayList.add(a(this.e.y()));
        return arrayList;
    }

    public boolean a(d2 d2Var) {
        return d2Var.b() == a.TEST_ADS.ordinal() && d2Var.a() == this.j.size() - 1;
    }

    @Override // com.applovin.impl.k2
    public int b() {
        return a.COUNT.ordinal();
    }

    @Override // com.applovin.impl.k2
    public List c(int i) {
        if (i == a.INTEGRATIONS.ordinal()) {
            return this.f;
        }
        if (i == a.PERMISSIONS.ordinal()) {
            return this.g;
        }
        if (i == a.CONFIGURATION.ordinal()) {
            return this.h;
        }
        if (i == a.DEPENDENCIES.ordinal()) {
            return this.i;
        }
        return this.j;
    }

    @Override // com.applovin.impl.k2
    public int d(int i) {
        if (i == a.INTEGRATIONS.ordinal()) {
            return this.f.size();
        }
        if (i == a.PERMISSIONS.ordinal()) {
            return this.g.size();
        }
        if (i == a.CONFIGURATION.ordinal()) {
            return this.h.size();
        }
        if (i == a.DEPENDENCIES.ordinal()) {
            return this.i.size();
        }
        return this.j.size();
    }

    @Override // com.applovin.impl.k2
    public j2 e(int i) {
        if (i == a.INTEGRATIONS.ordinal()) {
            return new j4("INTEGRATIONS");
        }
        if (i == a.PERMISSIONS.ordinal()) {
            return new j4("PERMISSIONS");
        }
        if (i == a.CONFIGURATION.ordinal()) {
            return new j4("CONFIGURATION");
        }
        if (i == a.DEPENDENCIES.ordinal()) {
            return new j4("DEPENDENCIES");
        }
        return new j4("TEST ADS");
    }

    public v2 h() {
        return this.e;
    }

    public void k() {
        this.f = g();
    }

    public String toString() {
        return "MediatedNetworkListAdapter{}";
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        if (list.size() > 0) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                f1 f1Var = (f1) it.next();
                arrayList.add(a(f1Var.b(), f1Var.a(), f1Var.c(), true));
            }
        }
        return arrayList;
    }

    private List b(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        if (list.size() > 0) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                c4 c4Var = (c4) it.next();
                arrayList.add(a(c4Var.b(), c4Var.a(), c4Var.c(), true));
            }
        }
        return arrayList;
    }

    private String f(int i) {
        if (MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS.getCode() != i && MaxAdapter.InitializationStatus.INITIALIZED_UNKNOWN.getCode() != i && MaxAdapter.InitializationStatus.DOES_NOT_APPLY.getCode() != i) {
            if (MaxAdapter.InitializationStatus.INITIALIZED_FAILURE.getCode() == i) {
                return "Failure";
            }
            if (MaxAdapter.InitializationStatus.INITIALIZING.getCode() == i) {
                return "Initializing...";
            }
            return "Not Initialized";
        }
        return "Initialized";
    }

    private j2 a(v2.b bVar) {
        j2.b a2 = j2.a();
        if (bVar == v2.b.READY) {
            a2.a(this.f3169a);
        }
        return a2.d("Test Mode").c(bVar.c()).c(bVar.d()).b("Restart Required").a(bVar.b()).a(true).a();
    }

    private int b(boolean z) {
        return i0.a(z ? R.color.applovin_sdk_checkmarkColor : R.color.applovin_sdk_xmarkColor, this.f3169a);
    }

    private j2 c(List list) {
        return j2.a().d("Region/VPN Required").c(CollectionUtils.implode(list, ", ", list.size())).a();
    }

    private j2 d() {
        j2.b c = j2.a().d("Adapter").c(this.e.c());
        if (TextUtils.isEmpty(this.e.c())) {
            c.a(a(this.e.A())).b(b(this.e.A()));
        }
        return c.a();
    }

    private List e() {
        ArrayList arrayList = new ArrayList(1);
        if (this.e.E()) {
            arrayList.add(a("Java 8", "For optimal performance, please enable Java 8 support. See: https://developers.applovin.com/en/android/overview/integration", com.applovin.impl.sdk.k.F0(), true));
        }
        return arrayList;
    }

    private int c(boolean z) {
        return z ? R.drawable.applovin_ic_x_mark : R.drawable.applovin_ic_warning;
    }

    private int d(boolean z) {
        return i0.a(z ? R.color.applovin_sdk_xmarkColor : R.color.applovin_sdk_warningColor, this.f3169a);
    }

    private j2 a(String str, String str2, boolean z, boolean z2) {
        return j2.a(z ? j2.c.RIGHT_DETAIL : j2.c.DETAIL).d(str).a(z ? null : this.k).b("Instructions").a(str2).a(z ? R.drawable.applovin_ic_check_mark_bordered : c(z2)).b(z ? i0.a(R.color.applovin_sdk_checkmarkColor, this.f3169a) : d(z2)).a(!z).a();
    }

    private int a(boolean z) {
        return z ? R.drawable.applovin_ic_check_mark_bordered : R.drawable.applovin_ic_x_mark;
    }
}
