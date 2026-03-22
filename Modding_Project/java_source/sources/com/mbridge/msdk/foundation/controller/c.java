package com.mbridge.msdk.foundation.controller;

import android.annotation.SuppressLint;
import com.mbridge.msdk.foundation.controller.a;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class c extends a {
    @SuppressLint({"StaticFieldLeak"})
    private static volatile c s;

    private c() {
    }

    public static c m() {
        if (s == null) {
            synchronized (c.class) {
                try {
                    if (s == null) {
                        s = new c();
                    }
                } finally {
                }
            }
        }
        return s;
    }

    @Override // com.mbridge.msdk.foundation.controller.a
    public void a(a.e eVar) {
    }
}
