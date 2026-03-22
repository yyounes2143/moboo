package com.applovin.impl.sdk.network;

import com.applovin.impl.i4;
import com.applovin.impl.l4;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.network.a;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class e extends com.applovin.impl.sdk.network.a {
    private String s;
    private boolean t;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class a extends a.C0024a {
        private String r;
        private boolean s;

        public a(k kVar) {
            super(kVar);
            this.h = ((Integer) kVar.a(l4.B2)).intValue();
            this.i = ((Integer) kVar.a(l4.A2)).intValue();
            this.j = ((Integer) kVar.a(l4.K2)).intValue();
        }

        @Override // com.applovin.impl.sdk.network.a.C0024a
        /* renamed from: d */
        public a a(String str) {
            this.c = str;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0024a
        /* renamed from: e */
        public a b(int i) {
            this.j = i;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0024a
        /* renamed from: f */
        public a b(String str) {
            this.b = str;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0024a
        /* renamed from: g */
        public a c(String str) {
            this.f3721a = str;
            return this;
        }

        public a h(boolean z) {
            this.s = z;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0024a
        /* renamed from: i */
        public a b(boolean z) {
            this.p = z;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0024a
        /* renamed from: d */
        public a b(Map map) {
            this.d = map;
            return this;
        }

        public a e(String str) {
            this.r = str;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0024a
        /* renamed from: f */
        public a c(int i) {
            this.i = i;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0024a
        /* renamed from: g */
        public a a(boolean z) {
            this.n = z;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0024a
        /* renamed from: c */
        public a a(Map map) {
            this.e = map;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0024a
        /* renamed from: d */
        public a a(int i) {
            this.h = i;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0024a
        /* renamed from: b */
        public a a(JSONObject jSONObject) {
            this.f = jSONObject;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0024a
        /* renamed from: b */
        public a a(Object obj) {
            this.g = obj;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0024a
        /* renamed from: b */
        public a a(i4.a aVar) {
            this.q = aVar;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0024a
        /* renamed from: b */
        public e a() {
            return new e(this);
        }
    }

    public e(a aVar) {
        super(aVar);
        this.s = aVar.r;
        this.t = aVar.s;
    }

    public static a b(k kVar) {
        return new a(kVar);
    }

    public String s() {
        return this.s;
    }

    public boolean t() {
        if (this.s != null) {
            return true;
        }
        return false;
    }

    public boolean u() {
        return this.t;
    }
}
