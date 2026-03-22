package com.iab.omid.library.unity3d.internal;

import android.annotation.SuppressLint;
import android.view.View;
/* loaded from: classes5.dex */
public class b extends d {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static b f8440Wwwwwwwwwwwwwwwwwwwwww = new b();

    public static b Wwwwwwwwwwwwwwwwwwwwwwww() {
        return f8440Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.iab.omid.library.unity3d.internal.d
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        for (com.iab.omid.library.unity3d.adsession.a aVar : c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            View Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwww2.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.iab.omid.library.unity3d.internal.d
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        for (com.iab.omid.library.unity3d.adsession.a aVar : c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            aVar.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww(z);
        }
    }
}
