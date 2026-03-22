package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class y0 extends k2 {
    private com.applovin.impl.sdk.k e;
    private List f;
    private final AtomicBoolean g;
    private List h;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum a {
        RECENT_ADS,
        COUNT
    }

    public y0(Context context) {
        super(context);
        this.g = new AtomicBoolean();
        this.h = new ArrayList();
    }

    public void a(List list, com.applovin.impl.sdk.k kVar) {
        Activity u0;
        this.e = kVar;
        this.f = list;
        if (!(this.f3169a instanceof Activity) && (u0 = kVar.u0()) != null) {
            this.f3169a = u0;
        }
        if (list != null && this.g.compareAndSet(false, true)) {
            this.h = a(this.f);
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Zzzzzzz
            @Override // java.lang.Runnable
            public final void run() {
                y0.this.notifyDataSetChanged();
            }
        });
    }

    @Override // com.applovin.impl.k2
    public int b() {
        return a.COUNT.ordinal();
    }

    @Override // com.applovin.impl.k2
    public List c(int i) {
        return this.h;
    }

    public List d() {
        return this.f;
    }

    public com.applovin.impl.sdk.k e() {
        return this.e;
    }

    public boolean f() {
        if (this.h.size() == 0) {
            return true;
        }
        return false;
    }

    public void g() {
        this.g.compareAndSet(true, false);
    }

    public String toString() {
        return "CreativeDebuggerListAdapter{isInitialized=" + this.g.get() + "}";
    }

    @Override // com.applovin.impl.k2
    public int d(int i) {
        return this.h.size();
    }

    @Override // com.applovin.impl.k2
    public j2 e(int i) {
        return new j4("RECENT ADS");
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new k1((l1) it.next(), this.f3169a));
        }
        return arrayList;
    }
}
