package com.fluttercandies.photo_manager.constant;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/fluttercandies/photo_manager/constant/AssetType;", "", "<init>", "(Ljava/lang/String;I)V", "Image", "Video", "Audio", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class AssetType {
    private static final /* synthetic */ AssetType[] $VALUES;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f7352Wwwwwwwwwwwwwwwwwwwwwwwww;
    public static final AssetType Image = new AssetType("Image", 0);
    public static final AssetType Video = new AssetType("Video", 1);
    public static final AssetType Audio = new AssetType("Audio", 2);

    static {
        AssetType[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        $VALUES = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        f7352Wwwwwwwwwwwwwwwwwwwwwwwww = EnumEntriesKt.enumEntries(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public AssetType(String str, int i) {
    }

    public static final /* synthetic */ AssetType[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new AssetType[]{Image, Video, Audio};
    }

    @NotNull
    public static EnumEntries<AssetType> getEntries() {
        return f7352Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static AssetType valueOf(String str) {
        return (AssetType) Enum.valueOf(AssetType.class, str);
    }

    public static AssetType[] values() {
        return (AssetType[]) $VALUES.clone();
    }
}
