package com.applovin.impl;

import android.app.Activity;
import android.text.TextUtils;
import com.applovin.impl.r5;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class y4 extends w4 {
    private final List g;
    private final Activity h;

    public y4(List list, Activity activity, com.applovin.impl.sdk.k kVar) {
        super("TaskAutoInitAdapters", kVar, true);
        this.g = list;
        this.h = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(a3 a3Var) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.a(str, "Auto-initing adapter: " + a3Var);
        }
        this.f3803a.S().a(a3Var, this.h);
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        if (this.g.size() > 0) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                String str2 = this.b;
                StringBuilder sb = new StringBuilder();
                sb.append("Auto-initing ");
                sb.append(this.g.size());
                sb.append(" adapters");
                if (this.f3803a.s0().c()) {
                    str = " in test mode";
                } else {
                    str = "";
                }
                sb.append(str);
                sb.append("...");
                oVar.a(str2, sb.toString());
            }
            if (TextUtils.isEmpty(this.f3803a.V())) {
                this.f3803a.P0();
            } else if (!this.f3803a.G0()) {
                com.applovin.impl.sdk.o.h("AppLovinSdk", "Auto-initing adapters for non-MAX mediation provider: " + this.f3803a.V());
            }
            if (this.h == null) {
                com.applovin.impl.sdk.o.h("AppLovinSdk", "\n**********\nAttempting to init 3rd-party SDKs without an Activity instance.\n**********\n");
            }
            for (final a3 a3Var : this.g) {
                if (a3Var.s()) {
                    this.f3803a.q0().a(new Runnable() { // from class: com.applovin.impl.Ccc
                        @Override // java.lang.Runnable
                        public final void run() {
                            y4.this.a(a3Var);
                        }
                    }, r5.b.MEDIATION);
                } else {
                    this.f3803a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O = this.f3803a.O();
                        String str3 = this.b;
                        O.a(str3, "Skipping eager auto-init for adapter " + a3Var);
                    }
                }
            }
        }
    }
}
