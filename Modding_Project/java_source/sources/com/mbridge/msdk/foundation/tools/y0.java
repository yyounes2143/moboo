package com.mbridge.msdk.foundation.tools;

import android.text.TextUtils;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class y0 {
    public static boolean a(String str) {
        if (str != null && !TextUtils.isEmpty(str.trim()) && !AbstractJsonLexerKt.NULL.equals(str)) {
            return false;
        }
        return true;
    }

    public static boolean b(String str) {
        if (str != null && !TextUtils.isEmpty(str.trim()) && !AbstractJsonLexerKt.NULL.equals(str)) {
            return true;
        }
        return false;
    }
}
