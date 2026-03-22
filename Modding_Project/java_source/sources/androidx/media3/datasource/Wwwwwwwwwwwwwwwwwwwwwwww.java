package androidx.media3.datasource;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.base.Predicate;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwww {
    static {
        Predicate<String> predicate = HttpDataSource.REJECT_PAYWALL_TYPES;
    }

    public static /* synthetic */ boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (str == null) {
            return false;
        }
        String lowerCase = Ascii.toLowerCase(str);
        if (TextUtils.isEmpty(lowerCase) || ((lowerCase.contains("text") && !lowerCase.contains("text/vtt")) || lowerCase.contains("html") || lowerCase.contains("xml"))) {
            return false;
        }
        return true;
    }
}
