package com.changdu.component.webviewcache.internal;

import java.util.ArrayList;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class j implements HostnameVerifier {
    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        if (str == null) {
            str = "";
        }
        return !new ArrayList().contains(str);
    }
}
