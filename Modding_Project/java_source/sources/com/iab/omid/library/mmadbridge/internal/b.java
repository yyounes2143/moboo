package com.iab.omid.library.mmadbridge.internal;

import android.annotation.SuppressLint;
import android.view.View;
/* loaded from: classes5.dex */
public class b extends d {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static b f8293Wwwwwwwwwwwwwwwwwwwwww = new b();

    public static b Wwwwwwwwwwwwwwwwwwwwwwww() {
        return f8293Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.iab.omid.library.mmadbridge.internal.d
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        for (com.iab.omid.library.mmadbridge.adsession.a aVar : c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            View Wwwwwwwwwwwwwwwwwwwww2 = aVar.Wwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwww2.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.iab.omid.library.mmadbridge.internal.d
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        for (com.iab.omid.library.mmadbridge.adsession.a aVar : c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            aVar.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwww(z);
        }
    }
}
