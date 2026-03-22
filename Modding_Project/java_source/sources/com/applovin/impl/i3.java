package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.mediation.MaxAdFormat;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class i3 {

    /* renamed from: a  reason: collision with root package name */
    private a f3147a;
    private String b;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum a {
        AD_UNIT_ID,
        AD_FORMAT,
        AD
    }

    private i3(a aVar, String str) {
        this.f3147a = aVar;
        this.b = str;
    }

    public a a() {
        return this.f3147a;
    }

    public String b() {
        return this.b;
    }

    public static i3 a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new i3(a.AD_UNIT_ID, str);
    }

    public static i3 a(MaxAdFormat maxAdFormat) {
        String label = maxAdFormat.getLabel();
        if (TextUtils.isEmpty(label)) {
            return null;
        }
        return new i3(a.AD_FORMAT, label);
    }

    public static i3 a(q2 q2Var) {
        String O = q2Var.O();
        if (TextUtils.isEmpty(O)) {
            return null;
        }
        return new i3(a.AD, O);
    }
}
