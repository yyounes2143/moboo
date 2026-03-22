package com.didi.drouter.utils;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import java.util.Collections;
import java.util.Map;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class TextUtils {
    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (str != null && !str.matches("[\\w/]*")) {
            return true;
        }
        return false;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable CharSequence charSequence) {
        if (charSequence != null && charSequence.length() != 0) {
            return false;
        }
        return true;
    }

    @NonNull
    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
        if (uri == null) {
            return "@@$$";
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri.getScheme()) + "@@" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri.getHost()) + "$$" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri.getPath());
    }

    @NonNull
    public static Map<String, String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
        if (uri == null) {
            return Collections.EMPTY_MAP;
        }
        ArrayMap arrayMap = new ArrayMap();
        for (String str : uri.getQueryParameterNames()) {
            arrayMap.put(str, uri.getQueryParameter(str));
        }
        return arrayMap;
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (str == null) {
            return "";
        }
        return str;
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle, Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
    }
}
