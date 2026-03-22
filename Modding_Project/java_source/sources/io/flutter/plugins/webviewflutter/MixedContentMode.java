package io.flutter.plugins.webviewflutter;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lio/flutter/plugins/webviewflutter/MixedContentMode;", "", "raw", "", "<init>", "(Ljava/lang/String;II)V", "getRaw", "()I", "ALWAYS_ALLOW", "COMPATIBILITY_MODE", "NEVER_ALLOW", "Companion", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class MixedContentMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ MixedContentMode[] $VALUES;
    @NotNull
    public static final Companion Companion;
    private final int raw;
    public static final MixedContentMode ALWAYS_ALLOW = new MixedContentMode("ALWAYS_ALLOW", 0, 0);
    public static final MixedContentMode COMPATIBILITY_MODE = new MixedContentMode("COMPATIBILITY_MODE", 1, 1);
    public static final MixedContentMode NEVER_ALLOW = new MixedContentMode("NEVER_ALLOW", 2, 2);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lio/flutter/plugins/webviewflutter/MixedContentMode$Companion;", "", "<init>", "()V", "ofRaw", "Lio/flutter/plugins/webviewflutter/MixedContentMode;", "raw", "", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nAndroidWebkitLibrary.g.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidWebkitLibrary.g.kt\nio/flutter/plugins/webviewflutter/MixedContentMode$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,6490:1\n1310#2,2:6491\n*S KotlinDebug\n*F\n+ 1 AndroidWebkitLibrary.g.kt\nio/flutter/plugins/webviewflutter/MixedContentMode$Companion\n*L\n932#1:6491,2\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final MixedContentMode ofRaw(int i) {
            MixedContentMode[] values;
            for (MixedContentMode mixedContentMode : MixedContentMode.values()) {
                if (mixedContentMode.getRaw() == i) {
                    return mixedContentMode;
                }
            }
            return null;
        }

        private Companion() {
        }
    }

    private static final /* synthetic */ MixedContentMode[] $values() {
        return new MixedContentMode[]{ALWAYS_ALLOW, COMPATIBILITY_MODE, NEVER_ALLOW};
    }

    static {
        MixedContentMode[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        Companion = new Companion(null);
    }

    private MixedContentMode(String str, int i, int i2) {
        this.raw = i2;
    }

    @NotNull
    public static EnumEntries<MixedContentMode> getEntries() {
        return $ENTRIES;
    }

    public static MixedContentMode valueOf(String str) {
        return (MixedContentMode) Enum.valueOf(MixedContentMode.class, str);
    }

    public static MixedContentMode[] values() {
        return (MixedContentMode[]) $VALUES.clone();
    }

    public final int getRaw() {
        return this.raw;
    }
}
