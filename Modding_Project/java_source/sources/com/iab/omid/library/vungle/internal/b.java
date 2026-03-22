package com.iab.omid.library.vungle.internal;

import android.annotation.SuppressLint;
import android.view.View;
/* loaded from: classes5.dex */
public class b extends d {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static b f8594Wwwwwwwwwwwwwwwwwwwwww = new b();

    public static b Wwwwwwwwwwwwwwwwwwwwwwww() {
        return f8594Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.iab.omid.library.vungle.internal.d
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        for (com.iab.omid.library.vungle.adsession.a aVar : c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            View Wwwwwwwwwwwwwwwwwwwwww2 = aVar.Wwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwww2.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.iab.omid.library.vungle.internal.d
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        for (com.iab.omid.library.vungle.adsession.a aVar : c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            aVar.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww(z);
        }
    }
}
