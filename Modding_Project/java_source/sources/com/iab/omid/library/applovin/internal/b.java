package com.iab.omid.library.applovin.internal;

import android.annotation.SuppressLint;
import android.view.View;
/* loaded from: classes5.dex */
public class b extends d {
    @SuppressLint({"StaticFieldLeak"})
    private static b d = new b();

    private b() {
    }

    public static b g() {
        return d;
    }

    @Override // com.iab.omid.library.applovin.internal.d
    public void b(boolean z) {
        for (com.iab.omid.library.applovin.adsession.a aVar : c.c().b()) {
            aVar.d().a(z);
        }
    }

    @Override // com.iab.omid.library.applovin.internal.d
    public boolean d() {
        for (com.iab.omid.library.applovin.adsession.a aVar : c.c().a()) {
            View e = aVar.e();
            if (e != null && e.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
