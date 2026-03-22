package com.fluttercandies.photo_manager.core.entity;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;", "", "value", "", "<init>", "(Ljava/lang/String;II)V", "getValue", "()I", "NotDetermined", "Denied", "Authorized", "Limited", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class PermissionResult {
    private static final /* synthetic */ PermissionResult[] $VALUES;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f7426Wwwwwwwwwwwwwwwwwwwwwwwww;
    private final int value;
    public static final PermissionResult NotDetermined = new PermissionResult("NotDetermined", 0, 0);
    public static final PermissionResult Denied = new PermissionResult("Denied", 1, 2);
    public static final PermissionResult Authorized = new PermissionResult("Authorized", 2, 3);
    public static final PermissionResult Limited = new PermissionResult("Limited", 3, 4);

    static {
        PermissionResult[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        $VALUES = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        f7426Wwwwwwwwwwwwwwwwwwwwwwwww = EnumEntriesKt.enumEntries(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public PermissionResult(String str, int i, int i2) {
        this.value = i2;
    }

    public static final /* synthetic */ PermissionResult[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new PermissionResult[]{NotDetermined, Denied, Authorized, Limited};
    }

    @NotNull
    public static EnumEntries<PermissionResult> getEntries() {
        return f7426Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static PermissionResult valueOf(String str) {
        return (PermissionResult) Enum.valueOf(PermissionResult.class, str);
    }

    public static PermissionResult[] values() {
        return (PermissionResult[]) $VALUES.clone();
    }

    public final int getValue() {
        return this.value;
    }
}
