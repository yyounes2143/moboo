package com.unity3d.scar.adapter.common.requests;

import android.os.Bundle;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class RequestExtras {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f10866Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "UnityScar";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f10867Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "requester_type_5";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f10868Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "query_info_type";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f10869Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public RequestExtras(String str) {
        this.f10869Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f10866Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + str;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f10869Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Bundle bundle = new Bundle();
        bundle.putString(f10868Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, f10867Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        return bundle;
    }
}
