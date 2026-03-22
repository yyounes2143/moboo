package com.iab.omid.library.vungle.utils;

import android.text.TextUtils;
import com.iab.omid.library.vungle.Omid;
import com.iab.omid.library.vungle.adsession.CreativeType;
import com.iab.omid.library.vungle.adsession.ImpressionType;
import com.iab.omid.library.vungle.adsession.Owner;
/* loaded from: classes5.dex */
public class g {
    public static void Wwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.vungle.adsession.a aVar) {
        if (aVar.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww() == null) {
            return;
        }
        throw new IllegalStateException("AdEvents already exists for AdSession");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.vungle.adsession.a aVar) {
        if (aVar.Wwwwwwwwwwwwwwwww()) {
            return;
        }
        throw new IllegalStateException("Impression event is not expected from the Native AdSession");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.vungle.adsession.a aVar) {
        if (aVar.Wwwwwwwwwwwwwwww()) {
            return;
        }
        throw new IllegalStateException("AdSession is not started");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.vungle.adsession.a aVar) {
        if (!aVar.Wwwwwwwwwwwwwwwwww()) {
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i, String str2) {
        if (str.length() <= i) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.vungle.adsession.a aVar) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(aVar);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(aVar);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Owner owner, CreativeType creativeType, ImpressionType impressionType) {
        if (owner != Owner.NONE) {
            if (creativeType == CreativeType.DEFINED_BY_JAVASCRIPT && owner == Owner.NATIVE) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            if (impressionType == ImpressionType.DEFINED_BY_JAVASCRIPT && owner == Owner.NATIVE) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            return;
        }
        throw new IllegalArgumentException("Impression owner is none");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Omid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return;
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }
}
