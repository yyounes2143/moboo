package com.facebook.internal.logging.dumpsys;

import java.io.PrintWriter;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\bæ\u0080\u0001\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bJ/\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006H&¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;", "", "", "prefix", "Ljava/io/PrintWriter;", "writer", "", "args", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)Z", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface EndToEndDumper {
    @NotNull
    public static final Companion Companion = Companion.f6911Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;", "", "<init>", "()V", "Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;", "setInstance", "(Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;)V", "instance", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static EndToEndDumper f6910Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ Companion f6911Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Companion();

        @Nullable
        public final EndToEndDumper Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return f6910Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull PrintWriter printWriter, @Nullable String[] strArr);
}
