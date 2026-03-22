package com.mbridge.msdk.thrid.okhttp.internal.http;

import com.mbridge.msdk.thrid.okhttp.q;
import com.mbridge.msdk.thrid.okhttp.w;
import java.net.Proxy;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class i {
    public static String a(w wVar, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(wVar.e());
        sb.append(' ');
        if (b(wVar, type)) {
            sb.append(wVar.g());
        } else {
            sb.append(a(wVar.g()));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    private static boolean b(w wVar, Proxy.Type type) {
        if (!wVar.d() && type == Proxy.Type.HTTP) {
            return true;
        }
        return false;
    }

    public static String a(q qVar) {
        String c = qVar.c();
        String e = qVar.e();
        if (e != null) {
            return c + '?' + e;
        }
        return c;
    }
}
