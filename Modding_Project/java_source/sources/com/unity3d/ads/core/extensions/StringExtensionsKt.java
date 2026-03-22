package com.unity3d.ads.core.extensions;

import java.net.URLConnection;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.text.Charsets;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001\u001a\f\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0001¨\u0006\u0003"}, d2 = {"getSHA256Hash", "", "guessMimeType", "unity-ads_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class StringExtensionsKt {
    @NotNull
    public static final String getSHA256Hash(@NotNull String str) {
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        return ByteString.of(Arrays.copyOf(bytes, bytes.length)).sha256().hex();
    }

    @Nullable
    public static final String guessMimeType(@NotNull String str) {
        return URLConnection.guessContentTypeFromName(str);
    }
}
