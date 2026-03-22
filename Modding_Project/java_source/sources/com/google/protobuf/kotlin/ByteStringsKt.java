package com.google.protobuf.kotlin;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.protobuf.ByteString;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0002\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0002\u001a\u0015\u0010\u0007\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0086\u0002\u001a\n\u0010\t\u001a\u00020\u0002*\u00020\n\u001a\n\u0010\t\u001a\u00020\u0002*\u00020\u000b\u001a\n\u0010\f\u001a\u00020\u0002*\u00020\r¨\u0006\u000e"}, d2 = {"get", "", "Lcom/google/protobuf/ByteString;", FirebaseAnalytics.Param.INDEX, "", "isNotEmpty", "", "plus", "other", "toByteString", "Ljava/nio/ByteBuffer;", "", "toByteStringUtf8", "", "java_kotlin-bytestring_lib"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class ByteStringsKt {
    public static final byte get(@NotNull ByteString byteString, int i) {
        return byteString.byteAt(i);
    }

    public static final boolean isNotEmpty(@NotNull ByteString byteString) {
        return !byteString.isEmpty();
    }

    @NotNull
    public static final ByteString plus(@NotNull ByteString byteString, @NotNull ByteString byteString2) {
        return byteString.concat(byteString2);
    }

    @NotNull
    public static final ByteString toByteString(@NotNull byte[] bArr) {
        return ByteString.copyFrom(bArr);
    }

    @NotNull
    public static final ByteString toByteStringUtf8(@NotNull String str) {
        return ByteString.copyFromUtf8(str);
    }

    @NotNull
    public static final ByteString toByteString(@NotNull ByteBuffer byteBuffer) {
        return ByteString.copyFrom(byteBuffer);
    }
}
