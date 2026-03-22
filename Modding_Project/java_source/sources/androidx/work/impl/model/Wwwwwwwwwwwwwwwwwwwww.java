package androidx.work.impl.model;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwww {
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SystemIdInfoDao systemIdInfoDao, @NotNull WorkGenerationalId workGenerationalId) {
        systemIdInfoDao.removeSystemIdInfo(workGenerationalId.getWorkSpecId(), workGenerationalId.getGeneration());
    }

    @Nullable
    public static SystemIdInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SystemIdInfoDao systemIdInfoDao, @NotNull WorkGenerationalId workGenerationalId) {
        return systemIdInfoDao.getSystemIdInfo(workGenerationalId.getWorkSpecId(), workGenerationalId.getGeneration());
    }
}
