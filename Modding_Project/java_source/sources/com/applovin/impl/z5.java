package com.applovin.impl;

import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.m0;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class z5 extends w4 implements m0.e {
    private final com.applovin.impl.sdk.network.a g;
    private final m0.e h;
    private r5.b i;
    private l4 j;
    private l4 k;
    protected m0.b l;

    public z5(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar) {
        this(aVar, kVar, false);
    }

    public abstract void a(String str, int i, String str2, Object obj);

    public abstract void a(String str, Object obj, int i);

    @Override // java.lang.Runnable
    public void run() {
        String str;
        m0 x = b().x();
        if (!b().E0() && !b().B0()) {
            com.applovin.impl.sdk.o.h("AppLovinSdk", "AppLovin SDK is disabled");
            a(this.g.f(), -22, null, null);
        } else if (StringUtils.isValidString(this.g.f()) && this.g.f().length() >= 4) {
            if (TextUtils.isEmpty(this.g.h())) {
                if (this.g.b() != null) {
                    str = ShareTarget.METHOD_POST;
                } else {
                    str = "GET";
                }
                this.g.b(str);
            }
            x.a(this.g, this.l, this.h);
        } else {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.b(this.b, "Task has an invalid or null request endpoint.");
            }
            a(this.g.f(), AppLovinErrorCodes.INVALID_URL, null, null);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements m0.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.sdk.k f3831a;

        public a(com.applovin.impl.sdk.k kVar) {
            this.f3831a = kVar;
        }

        @Override // com.applovin.impl.m0.e
        public void a(String str, Object obj, int i) {
            z5.this.g.a(0);
            z5.this.a(str, obj, i);
        }

        @Override // com.applovin.impl.m0.e
        public void a(String str, int i, String str2, Object obj) {
            long millis;
            boolean z = false;
            boolean z2 = i < 200 || i >= 500;
            boolean z3 = i == 429;
            boolean z4 = i != -1009 || z5.this.g.q();
            boolean z5 = (i == -900 || i == -1000) ? false : true;
            if (z4 && z5 && (z2 || z3 || z5.this.g.p())) {
                String a2 = z5.this.g.a();
                if (z5.this.g.j() <= 0) {
                    if (a2 != null && a2.equals(z5.this.g.f())) {
                        z5 z5Var = z5.this;
                        z5Var.a(z5Var.k);
                    } else {
                        z5 z5Var2 = z5.this;
                        z5Var2.a(z5Var2.j);
                    }
                    z5 z5Var3 = z5.this;
                    z5Var3.a(z5Var3.g.f(), i, str2, obj);
                    return;
                }
                com.applovin.impl.sdk.o oVar = z5.this.c;
                if (com.applovin.impl.sdk.o.a()) {
                    z5 z5Var4 = z5.this;
                    z5Var4.c.k(z5Var4.b, "Unable to send request due to server failure (code " + i + "). " + z5.this.g.j() + " attempts left, retrying in " + TimeUnit.MILLISECONDS.toSeconds(z5.this.g.k()) + " seconds...");
                }
                int j = z5.this.g.j() - 1;
                z5.this.g.a(j);
                if (j == 0) {
                    z5 z5Var5 = z5.this;
                    z5Var5.a(z5Var5.j);
                    if (StringUtils.isValidString(a2) && a2.length() >= 4) {
                        com.applovin.impl.sdk.o oVar2 = z5.this.c;
                        if (com.applovin.impl.sdk.o.a()) {
                            z5 z5Var6 = z5.this;
                            z5Var6.c.d(z5Var6.b, "Switching to backup endpoint " + a2);
                        }
                        z5.this.g.a(a2);
                        z = true;
                    }
                }
                if (((Boolean) this.f3831a.a(l4.Y2)).booleanValue() && z) {
                    millis = 0;
                } else {
                    millis = z5.this.g.n() ? TimeUnit.SECONDS.toMillis((long) Math.pow(2.0d, z5.this.g.c())) : z5.this.g.k();
                }
                r5 q0 = this.f3831a.q0();
                z5 z5Var7 = z5.this;
                q0.a(z5Var7, z5Var7.i, millis);
                return;
            }
            z5 z5Var8 = z5.this;
            z5Var8.a(z5Var8.g.f(), i, str2, obj);
        }
    }

    public z5(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar, boolean z) {
        super("TaskRepeatRequest", kVar, z);
        this.i = r5.b.OTHER;
        if (aVar != null) {
            a(aVar.f());
            this.g = aVar;
            this.l = new m0.b();
            this.h = new a(kVar);
            return;
        }
        throw new IllegalArgumentException("No request specified");
    }

    public void b(l4 l4Var) {
        this.k = l4Var;
    }

    public void c(l4 l4Var) {
        this.j = l4Var;
    }

    public void a(r5.b bVar) {
        this.i = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(l4 l4Var) {
        if (l4Var != null) {
            b().o0().a(l4Var, l4Var.a());
        }
    }
}
