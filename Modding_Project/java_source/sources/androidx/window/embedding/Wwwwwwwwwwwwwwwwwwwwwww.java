package androidx.window.embedding;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.window.embedding.EmbeddingBackend;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwww {
    static {
        EmbeddingBackend.Companion companion = EmbeddingBackend.Companion;
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        EmbeddingBackend.Companion.reset();
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull EmbeddingBackendDecorator embeddingBackendDecorator) {
        EmbeddingBackend.Companion.overrideDecorator(embeddingBackendDecorator);
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public static EmbeddingBackend Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        return EmbeddingBackend.Companion.getInstance(context);
    }
}
