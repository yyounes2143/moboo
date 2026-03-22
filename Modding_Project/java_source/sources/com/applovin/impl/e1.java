package com.applovin.impl;

import android.net.Uri;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class e1 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3116a;

    public e1(com.applovin.impl.sdk.k kVar) {
        this.f3116a = kVar;
    }

    public void a(Uri uri) {
        com.applovin.impl.sdk.o.g("DeepLinkManager", "Processing incoming URL: " + uri);
        if (CollectionUtils.atLeastOneValueMatch(uri.getQueryParameterNames(), Arrays.asList("aleid", "alart"))) {
            String queryParameter = uri.getQueryParameter("alart");
            if (StringUtils.isValidString(queryParameter)) {
                this.f3116a.w0().b(queryParameter);
            }
            String queryParameter2 = uri.getQueryParameter("aleid");
            if (StringUtils.isValidString(queryParameter2)) {
                this.f3116a.w0().c(queryParameter2);
            }
        }
    }
}
