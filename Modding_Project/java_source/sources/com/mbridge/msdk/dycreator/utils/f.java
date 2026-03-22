package com.mbridge.msdk.dycreator.utils;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import java.io.File;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class f {
    private static volatile f b;

    /* renamed from: a  reason: collision with root package name */
    private com.mbridge.msdk.dycreator.engine.b f8916a;

    private f(Context context) {
        this.f8916a = null;
        com.mbridge.msdk.dycreator.engine.b a2 = com.mbridge.msdk.dycreator.engine.b.a();
        this.f8916a = a2;
        a2.a(context, "");
    }

    public static f a(Context context) {
        if (b == null) {
            synchronized (f.class) {
                try {
                    if (b == null) {
                        b = new f(context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return b;
    }

    public View a(String str) {
        if (new File(str).exists()) {
            return this.f8916a.e(str);
        }
        return null;
    }

    public View a(ViewGroup viewGroup, String str) {
        if (viewGroup != null && !TextUtils.isEmpty(str)) {
            if (viewGroup.getId() == str.hashCode()) {
                return viewGroup;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getId() == str.hashCode()) {
                    return childAt;
                }
                if (childAt instanceof ViewGroup) {
                    a((ViewGroup) childAt, str);
                }
            }
        }
        return null;
    }
}
