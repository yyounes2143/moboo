package com.iab.omid.library.mmadbridge.utils;

import android.text.TextUtils;
import com.iab.omid.library.mmadbridge.Omid;
import com.iab.omid.library.mmadbridge.adsession.CreativeType;
import com.iab.omid.library.mmadbridge.adsession.ImpressionType;
import com.iab.omid.library.mmadbridge.adsession.Owner;
/* loaded from: classes5.dex */
public class g {
    public static void Wwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        if (aVar.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwww() == null) {
            return;
        }
        throw new IllegalStateException("MediaEvents already exists for AdSession");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        if (aVar.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwww() == null) {
            return;
        }
        throw new IllegalStateException("AdEvents already exists for AdSession");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        if (aVar.Wwwwwwwwwwwww()) {
            return;
        }
        throw new IllegalStateException("Cannot create MediaEvents for JavaScript AdSession");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        if (aVar.Wwwwwwwwwwwwww()) {
            return;
        }
        throw new IllegalStateException("Impression event is not expected from the Native AdSession");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        if (aVar.Wwwwwwwwwwww()) {
            return;
        }
        throw new IllegalStateException("AdSession is not started");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        if (!aVar.Wwwwwwwwwwww()) {
            return;
        }
        throw new IllegalStateException("AdSession is started");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        if (!aVar.Wwwwwwwwwwwwwwwww()) {
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

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        Wwwwwwwwwwwwwwwwwwwwwwwwww(aVar);
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
