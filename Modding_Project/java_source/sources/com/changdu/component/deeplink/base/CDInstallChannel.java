package com.changdu.component.deeplink.base;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/changdu/component/deeplink/base/CDInstallChannel;", "", "", "a", "I", "getValue", "()I", "value", "Google", "FireBase", "FaceBook", "FaceBookServer", "deeplink-base_release"}, k = 1, mv = {1, 9, 0})
/* loaded from: classes3.dex */
public final class CDInstallChannel {
    public static final CDInstallChannel FaceBook;
    public static final CDInstallChannel FaceBookServer;
    public static final CDInstallChannel FireBase;
    public static final CDInstallChannel Google;
    public static final /* synthetic */ CDInstallChannel[] b;
    public static final /* synthetic */ EnumEntries c;

    /* renamed from: a  reason: collision with root package name */
    public final int f5312a;

    static {
        CDInstallChannel cDInstallChannel = new CDInstallChannel("Google", 0, 12);
        Google = cDInstallChannel;
        CDInstallChannel cDInstallChannel2 = new CDInstallChannel("FireBase", 1, 1);
        FireBase = cDInstallChannel2;
        CDInstallChannel cDInstallChannel3 = new CDInstallChannel("FaceBook", 2, -1);
        FaceBook = cDInstallChannel3;
        CDInstallChannel cDInstallChannel4 = new CDInstallChannel("FaceBookServer", 3, 0);
        FaceBookServer = cDInstallChannel4;
        CDInstallChannel[] cDInstallChannelArr = {cDInstallChannel, cDInstallChannel2, cDInstallChannel3, cDInstallChannel4};
        b = cDInstallChannelArr;
        c = EnumEntriesKt.enumEntries(cDInstallChannelArr);
    }

    public CDInstallChannel(String str, int i, int i2) {
        this.f5312a = i2;
    }

    @NotNull
    public static EnumEntries<CDInstallChannel> getEntries() {
        return c;
    }

    public static CDInstallChannel valueOf(String str) {
        return (CDInstallChannel) Enum.valueOf(CDInstallChannel.class, str);
    }

    public static CDInstallChannel[] values() {
        return (CDInstallChannel[]) b.clone();
    }

    public final int getValue() {
        return this.f5312a;
    }
}
