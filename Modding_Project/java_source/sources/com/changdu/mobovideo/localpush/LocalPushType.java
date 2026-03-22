package com.changdu.mobovideo.localpush;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/changdu/mobovideo/localpush/LocalPushType;", "", "<init>", "(Ljava/lang/String;I)V", "SIGN_IN", "RECALL", "PROMOTION", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LocalPushType {
    private static final /* synthetic */ LocalPushType[] $VALUES;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f5523Wwwwwwwwwwwwwwwwwwwwwwwww;
    public static final LocalPushType SIGN_IN = new LocalPushType("SIGN_IN", 0);
    public static final LocalPushType RECALL = new LocalPushType("RECALL", 1);
    public static final LocalPushType PROMOTION = new LocalPushType("PROMOTION", 2);

    static {
        LocalPushType[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        $VALUES = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        f5523Wwwwwwwwwwwwwwwwwwwwwwwww = EnumEntriesKt.enumEntries(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public LocalPushType(String str, int i) {
    }

    public static final /* synthetic */ LocalPushType[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new LocalPushType[]{SIGN_IN, RECALL, PROMOTION};
    }

    @NotNull
    public static EnumEntries<LocalPushType> getEntries() {
        return f5523Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static LocalPushType valueOf(String str) {
        return (LocalPushType) Enum.valueOf(LocalPushType.class, str);
    }

    public static LocalPushType[] values() {
        return (LocalPushType[]) $VALUES.clone();
    }
}
