package com.fluttercandies.photo_manager.core.cache;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import androidx.annotation.RequiresApi;
import com.fluttercandies.photo_manager.core.entity.AssetEntity;
import com.fluttercandies.photo_manager.core.utils.AndroidQDBUtils;
import com.fluttercandies.photo_manager.util.LogUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@RequiresApi(29)
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ'\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0010\u0010\f¨\u0006\u0012"}, d2 = {"Lcom/fluttercandies/photo_manager/core/cache/ScopedCache;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "assetEntity", "", "isOrigin", "Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;Z)Ljava/io/File;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Companion", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nScopedCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopedCache.kt\ncom/fluttercandies/photo_manager/core/cache/ScopedCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n1#2:67\n*E\n"})
/* loaded from: classes4.dex */
public final class ScopedCache {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/fluttercandies/photo_manager/core/cache/ScopedCache$Companion;", "", "<init>", "()V", "FILENAME_PREFIX", "", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    @NotNull
    public final File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull AssetEntity assetEntity, boolean z) {
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = assetEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, assetEntity, z);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.exists()) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        ContentResolver contentResolver = context.getContentResolver();
        AndroidQDBUtils androidQDBUtils = AndroidQDBUtils.INSTANCE;
        Uri Wwwwwwwwwwwwwwww2 = androidQDBUtils.Wwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, assetEntity.Wwwwwwwwwwwwwwwwwwwwww(), z);
        if (!Intrinsics.areEqual(Wwwwwwwwwwwwwwww2, Uri.EMPTY)) {
            try {
                String absolutePath = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getAbsolutePath();
                LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Caching " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + " [origin: " + z + "] into " + absolutePath);
                InputStream openInputStream = contentResolver.openInputStream(Wwwwwwwwwwwwwwww2);
                FileOutputStream fileOutputStream = new FileOutputStream(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                if (openInputStream != null) {
                    ByteStreamsKt.copyTo$default(openInputStream, fileOutputStream, 0, 2, null);
                    CloseableKt.closeFinally(openInputStream, null);
                }
                CloseableKt.closeFinally(fileOutputStream, null);
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            } catch (Exception e) {
                LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Caching " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + " [origin: " + z + "] error", e);
                throw e;
            }
        }
        androidQDBUtils.Wwww(Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
        throw new KotlinNothingValueException();
    }

    public final File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, AssetEntity assetEntity, boolean z) {
        String str;
        if (z) {
            str = "_o";
        } else {
            str = "";
        }
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = assetEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = assetEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        return new File(context.getCacheDir(), "pm_" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + str + "_" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        File[] listFiles;
        List<File> filterNotNull;
        File cacheDir = context.getCacheDir();
        if (cacheDir != null && (listFiles = cacheDir.listFiles()) != null && (filterNotNull = ArraysKt.filterNotNull(listFiles)) != null) {
            for (File file : filterNotNull) {
                if (StringsKt.startsWith$default(file.getName(), "pm_", false, 2, (Object) null)) {
                    file.delete();
                }
            }
        }
    }
}
