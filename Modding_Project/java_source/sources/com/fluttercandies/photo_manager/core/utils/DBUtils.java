package com.fluttercandies.photo_manager.core.utils;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.fluttercandies.photo_manager.core.entity.AssetEntity;
import com.fluttercandies.photo_manager.core.entity.AssetPathEntity;
import com.fluttercandies.photo_manager.core.entity.filter.FilterOption;
import com.fluttercandies.photo_manager.core.utils.IDBUtils;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001CB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ-\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J-\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0016\u0010\u0015J1\u0010\u0019\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJE\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u00122\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJE\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001d0\u00122\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\"\u0010\u001fJ)\u0010&\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u00062\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J'\u0010+\u001a\u00020*2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020$H\u0016¢\u0006\u0004\b+\u0010,J!\u0010.\u001a\u0004\u0018\u00010-2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u0006H\u0016¢\u0006\u0004\b.\u0010/J'\u00101\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u00062\u0006\u00100\u001a\u00020$H\u0016¢\u0006\u0004\b1\u00102J'\u00104\u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b4\u00105J'\u00106\u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b6\u00105J\u0017\u00107\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b7\u00108J/\u0010:\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u0001092\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u0006H\u0016¢\u0006\u0004\b:\u0010;R\u001a\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010A¨\u0006D"}, d2 = {"Lcom/fluttercandies/photo_manager/core/utils/DBUtils;", "Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;", "<init>", "()V", "Landroid/content/Context;", "context", "", "galleryId", "Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;", "Kkkkkkkkkkkkkkkkkkkk", "(Landroid/content/Context;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;", "", UserMetadata.KEYDATA_FILENAME, "()[Ljava/lang/String;", "", "requestType", "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;", "option", "", "Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;", "Wwwwwwww", "(Landroid/content/Context;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "pathId", "type", "Wwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;", "page", "size", "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "Wwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;", "start", "end", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "id", "", "checkIfExists", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "asset", "needLocationPermission", "", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;Z)[B", "Landroidx/exifinterface/media/ExifInterface;", "Www", "(Landroid/content/Context;Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface;", "origin", "Wwwww", "(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;", "assetId", "Wwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Z", "Lkotlin/Pair;", "Kkkkkkkkkkkkkkkkkk", "(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "[Ljava/lang/String;", "locationKeys", "Ljava/util/concurrent/locks/ReentrantLock;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/locks/ReentrantLock;", "deleteLock", "GalleryInfo", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDBUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBUtils.kt\ncom/fluttercandies/photo_manager/core/utils/DBUtils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,452:1\n37#2:453\n36#2,3:454\n37#2:457\n36#2,3:458\n37#2:461\n36#2,3:462\n37#2:465\n36#2,3:466\n37#2:469\n36#2,3:470\n37#2:473\n36#2,3:474\n37#2:477\n36#2,3:478\n37#2:481\n36#2,3:482\n37#2:485\n36#2,3:486\n*S KotlinDebug\n*F\n+ 1 DBUtils.kt\ncom/fluttercandies/photo_manager/core/utils/DBUtils\n*L\n27#1:453\n27#1:454,3\n43#1:457\n43#1:458,3\n78#1:461\n78#1:462,3\n119#1:465\n119#1:466,3\n158#1:469\n158#1:470,3\n199#1:473\n199#1:474,3\n219#1:477\n219#1:478,3\n286#1:481\n286#1:482,3\n396#1:485\n396#1:486,3\n*E\n"})
/* loaded from: classes4.dex */
public final class DBUtils implements IDBUtils {
    @NotNull
    public static final DBUtils INSTANCE = new DBUtils();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String[] f7463Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = {"longitude", "latitude"};
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ReentrantLock f7462Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ReentrantLock();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0082\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\tR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0012\u001a\u0004\b\u0014\u0010\tR\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0011\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;", "", "", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "galleryId", "galleryName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "getGalleryId", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class GalleryInfo {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f7464Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f7465Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f7466Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public GalleryInfo(@NotNull String str, @NotNull String str2, @NotNull String str3) {
            this.f7466Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f7465Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
            this.f7464Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str3;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7466Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7464Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof GalleryInfo)) {
                return false;
            }
            GalleryInfo galleryInfo = (GalleryInfo) obj;
            if (Intrinsics.areEqual(this.f7466Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, galleryInfo.f7466Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f7465Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, galleryInfo.f7465Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f7464Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, galleryInfo.f7464Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f7466Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f7465Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f7464Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }

        @NotNull
        public String toString() {
            String str = this.f7466Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            String str2 = this.f7465Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            String str3 = this.f7464Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            return "GalleryInfo(path=" + str + ", galleryId=" + str2 + ", galleryName=" + str3 + ")";
        }
    }

    public static final CharSequence Kkkkkkkkkkkkkkk(String str) {
        return "?";
    }

    @Nullable
    public String Kkkkkkkkkkkkkkkk(@NotNull Cursor cursor, @NotNull String str) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwww(this, cursor, str);
    }

    @Nullable
    public String Kkkkkkkkkkkkkkkkk(int i, int i2, @NotNull FilterOption filterOption) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwww(this, i, i2, filterOption);
    }

    @Nullable
    public Pair<String, String> Kkkkkkkkkkkkkkkkkk(@NotNull Context context, @NotNull String str) {
        Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(context.getContentResolver(), Wwwwwwwwwwwwwwwwwww(), new String[]{"bucket_id", "_data"}, "_id = ?", new String[]{str}, null);
        try {
            Cursor cursor = Wwwwwwwwwwwwwwwww2;
            if (!cursor.moveToNext()) {
                CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
                return null;
            }
            Pair<String, String> pair = new Pair<>(cursor.getString(0), new File(cursor.getString(1)).getParent());
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
            return pair;
        } finally {
        }
    }

    @NotNull
    public String Kkkkkkkkkkkkkkkkkkk() {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwww(this);
    }

    public final GalleryInfo Kkkkkkkkkkkkkkkkkkkk(Context context, String str) {
        String absolutePath;
        Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(context.getContentResolver(), Wwwwwwwwwwwwwwwwwww(), new String[]{"bucket_id", "bucket_display_name", "_data"}, "bucket_id = ?", new String[]{str}, null);
        try {
            Cursor cursor = Wwwwwwwwwwwwwwwww2;
            if (!cursor.moveToNext()) {
                CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
                return null;
            }
            DBUtils dBUtils = INSTANCE;
            String Kkkkkkkkkkkkkkkk2 = dBUtils.Kkkkkkkkkkkkkkkk(cursor, "_data");
            if (Kkkkkkkkkkkkkkkk2 == null) {
                CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
                return null;
            }
            String Kkkkkkkkkkkkkkkk3 = dBUtils.Kkkkkkkkkkkkkkkk(cursor, "bucket_display_name");
            if (Kkkkkkkkkkkkkkkk3 == null) {
                CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
                return null;
            }
            File parentFile = new File(Kkkkkkkkkkkkkkkk2).getParentFile();
            if (parentFile != null && (absolutePath = parentFile.getAbsolutePath()) != null) {
                GalleryInfo galleryInfo = new GalleryInfo(absolutePath, str, Kkkkkkkkkkkkkkkk3);
                CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
                return galleryInfo;
            }
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
            return null;
        } finally {
        }
    }

    public int Kkkkkkkkkkkkkkkkkkkkk(int i) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, i);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public String Kkkkkkkkkkkkkkkkkkkkkkk(@NotNull Context context, long j, int i) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwww(this, context, j, i);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public Void Kkkkkkkkkkkkkkkkkkkkkkkk(@NotNull String str) throws RuntimeException {
        return IDBUtils.DefaultImpls.Kkkkkkkkkkkkkkkkkkkkk(this, str);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public AssetEntity Kkkkkkkkkkkkkkkkkkkkkkkkk(@NotNull Context context, @NotNull String str, @NotNull String str2) {
        Pair<String, String> Kkkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkkk(context, str);
        if (Kkkkkkkkkkkkkkkkkk2 != null) {
            String component1 = Kkkkkkkkkkkkkkkkkk2.component1();
            GalleryInfo Kkkkkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkkkkk(context, str2);
            if (Kkkkkkkkkkkkkkkkkkkk2 != null) {
                if (!Intrinsics.areEqual(str2, component1)) {
                    ContentResolver contentResolver = context.getContentResolver();
                    Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(contentResolver, Wwwwwwwwwwwwwwwwwww(), new String[]{"_data"}, Kkkkkkkkkkkkkkkkkkk(), new String[]{str}, null);
                    if (Wwwwwwwwwwwwwwwww2.moveToNext()) {
                        String string = Wwwwwwwwwwwwwwwww2.getString(0);
                        Wwwwwwwwwwwwwwwww2.close();
                        String str3 = Kkkkkkkkkkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + "/" + new File(string).getName();
                        new File(string).renameTo(new File(str3));
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("_data", str3);
                        contentValues.put("bucket_id", str2);
                        contentValues.put("bucket_display_name", Kkkkkkkkkkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                        if (contentResolver.update(Wwwwwwwwwwwwwwwwwww(), contentValues, Kkkkkkkkkkkkkkkkkkk(), new String[]{str}) > 0) {
                            AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this, context, str, false, 4, null);
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                                return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
                            }
                            Wwww(str);
                            throw new KotlinNothingValueException();
                        }
                        Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot update " + str + " relativePath");
                        throw new KotlinNothingValueException();
                    }
                    Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot find " + str + " path");
                    throw new KotlinNothingValueException();
                }
                Kkkkkkkkkkkkkkkkkkkkkkkk("No move required, because the target gallery is the same as the current one.");
                throw new KotlinNothingValueException();
            }
            Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot get target gallery info");
            throw new KotlinNothingValueException();
        }
        Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot get gallery id of " + str);
        throw new KotlinNothingValueException();
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public byte[] Kkkkkkkkkkkkkkkkkkkkkkkkkk(@NotNull Context context, @NotNull AssetEntity assetEntity, boolean z) {
        return FilesKt.readBytes(new File(assetEntity.Wwwwwwwwwwwwwwwwwwwwwwww()));
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @Nullable
    public ExifInterface Www(@NotNull Context context, @NotNull String str) {
        AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this, context, str, false, 4, null);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 == null || !new File(Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww()).exists()) {
            return null;
        }
        return new ExifInterface(Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww());
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public Void Wwww(@NotNull Object obj) throws RuntimeException {
        return IDBUtils.DefaultImpls.Kkkkkkkkkkkkkkkkkkkkkk(this, obj);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public String Wwwww(@NotNull Context context, @NotNull String str, boolean z) {
        AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this, context, str, false, 4, null);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww();
        }
        Wwww(str);
        throw new KotlinNothingValueException();
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public int Wwwwww(int i) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwww(this, i);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public String Wwwwwww(@NotNull Cursor cursor, @NotNull String str) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwww(this, cursor, str);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public List<AssetPathEntity> Wwwwwwww(@NotNull Context context, int i, @NotNull FilterOption filterOption) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FilterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(filterOption, i, arrayList2, false, 4, null);
        Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(context.getContentResolver(), Wwwwwwwwwwwwwwwwwww(), (String[]) ArraysKt.plus((Object[]) IDBUtils.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), (Object[]) new String[]{"count(1)"}), "bucket_id IS NOT NULL " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + ") GROUP BY (bucket_id", (String[]) arrayList2.toArray(new String[0]), null);
        try {
            Cursor cursor = Wwwwwwwwwwwwwwwww2;
            while (cursor.moveToNext()) {
                String string = cursor.getString(0);
                String string2 = cursor.getString(1);
                if (string2 == null) {
                    string2 = "";
                }
                AssetPathEntity assetPathEntity = new AssetPathEntity(string, string2, cursor.getInt(2), 0, false, null, 48, null);
                if (filterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, assetPathEntity);
                }
                arrayList.add(assetPathEntity);
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
            return arrayList;
        } finally {
        }
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public List<AssetEntity> Wwwwwwwww(@NotNull Context context, @NotNull String str, int i, int i2, int i3, @NotNull FilterOption filterOption) {
        boolean z;
        String str2;
        if (str.length() == 0) {
            z = true;
        } else {
            z = false;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!z) {
            arrayList2.add(str);
        }
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FilterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(filterOption, i3, arrayList2, false, 4, null);
        String[] keys = keys();
        if (z) {
            str2 = "bucket_id IS NOT NULL " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } else {
            str2 = "bucket_id = ? " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(context.getContentResolver(), Wwwwwwwwwwwwwwwwwww(), keys, str2, (String[]) arrayList2.toArray(new String[0]), Kkkkkkkkkkkkkkkkk(i * i2, i2, filterOption));
        try {
            Cursor cursor = Wwwwwwwwwwwwwwwww2;
            while (cursor.moveToNext()) {
                AssetEntity Kkkkkkkkkkkkkkkkkkk2 = IDBUtils.DefaultImpls.Kkkkkkkkkkkkkkkkkkk(INSTANCE, cursor, context, false, false, 2, null);
                if (Kkkkkkkkkkkkkkkkkkk2 != null) {
                    arrayList.add(Kkkkkkkkkkkkkkkkkkk2);
                }
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
            return arrayList;
        } finally {
        }
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public void Wwwwwwwwww(@NotNull Context context, @NotNull String str) {
        IDBUtils.DefaultImpls.Wwwww(this, context, str);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public long Wwwwwwwwwww(@NotNull Cursor cursor, @NotNull String str) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwww(this, cursor, str);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public void Wwwwwwwwwwww(@NotNull Context context) {
        IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, context);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public int Wwwwwwwwwwwww(@NotNull Context context, @NotNull FilterOption filterOption, int i, @NotNull String str) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this, context, filterOption, i, str);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public List<String> Wwwwwwwwwwwwww(@NotNull Context context) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwww(this, context);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public AssetEntity Wwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @Nullable Integer num) {
        return IDBUtils.DefaultImpls.Kkkkkkkkkkkkkkkkkkkkkkkk(this, context, str, str2, str3, str4, num);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public Uri Wwwwwwwwwwwwwwww(long j, int i, boolean z) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwww(this, j, i, z);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public Cursor Wwwwwwwwwwwwwwwww(@NotNull ContentResolver contentResolver, @NotNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        return IDBUtils.DefaultImpls.Wwwwwww(this, contentResolver, uri, strArr, str, strArr2, str2);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @Nullable
    public AssetPathEntity Wwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, int i, @NotNull FilterOption filterOption) {
        String str2;
        AssetPathEntity assetPathEntity;
        String str3;
        ArrayList arrayList = new ArrayList();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FilterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(filterOption, i, arrayList, false, 4, null);
        if (Intrinsics.areEqual(str, "")) {
            str2 = "";
        } else {
            arrayList.add(str);
            str2 = "AND bucket_id = ?";
        }
        Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(context.getContentResolver(), Wwwwwwwwwwwwwwwwwww(), (String[]) ArraysKt.plus((Object[]) IDBUtils.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), (Object[]) new String[]{"count(1)"}), "bucket_id IS NOT NULL " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + " " + str2 + ") GROUP BY (bucket_id", (String[]) arrayList.toArray(new String[0]), null);
        try {
            Cursor cursor = Wwwwwwwwwwwwwwwww2;
            if (cursor.moveToNext()) {
                String string = cursor.getString(0);
                String string2 = cursor.getString(1);
                if (string2 == null) {
                    str3 = "";
                } else {
                    str3 = string2;
                }
                assetPathEntity = new AssetPathEntity(string, str3, cursor.getInt(2), 0, false, null, 48, null);
            } else {
                assetPathEntity = null;
            }
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
            return assetPathEntity;
        } finally {
        }
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public Uri Wwwwwwwwwwwwwwwwwww() {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public List<AssetEntity> Wwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull FilterOption filterOption, int i, int i2, int i3) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwww(this, context, filterOption, i, i2, i3);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public AssetEntity Wwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull String str2) {
        Pair<String, String> Kkkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkkk(context, str);
        if (Kkkkkkkkkkkkkkkkkk2 != null) {
            if (!Intrinsics.areEqual(str2, Kkkkkkkkkkkkkkkkkk2.component1())) {
                ContentResolver contentResolver = context.getContentResolver();
                AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this, context, str, false, 4, null);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    ArrayList arrayListOf = CollectionsKt.arrayListOf("_display_name", CampaignEx.JSON_KEY_TITLE, "date_added", "date_modified", TypedValues.TransitionType.S_DURATION, "longitude", "latitude", "width", "height");
                    int Kkkkkkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww());
                    if (Kkkkkkkkkkkkkkkkkkkkk2 != 2) {
                        arrayListOf.add("description");
                    }
                    Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(contentResolver, Wwwwwwwwwwwwwwwwwww(), (String[]) ArraysKt.plus(arrayListOf.toArray(new String[0]), (Object[]) new String[]{"_data"}), Kkkkkkkkkkkkkkkkkkk(), new String[]{str}, null);
                    if (Wwwwwwwwwwwwwwwww2.moveToNext()) {
                        Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = MediaStoreUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkkkkkkk2);
                        GalleryInfo Kkkkkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkkkkk(context, str2);
                        if (Kkkkkkkkkkkkkkkkkkkk2 != null) {
                            String str3 = Kkkkkkkkkkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + "/" + Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            ContentValues contentValues = new ContentValues();
                            Iterator it = arrayListOf.iterator();
                            while (it.hasNext()) {
                                String str4 = (String) it.next();
                                contentValues.put(str4, INSTANCE.Wwwwwww(Wwwwwwwwwwwwwwwww2, str4));
                            }
                            contentValues.put("media_type", Integer.valueOf(Kkkkkkkkkkkkkkkkkkkkk2));
                            contentValues.put("_data", str3);
                            Uri insert = contentResolver.insert(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, contentValues);
                            if (insert != null) {
                                OutputStream openOutputStream = contentResolver.openOutputStream(insert);
                                if (openOutputStream != null) {
                                    FileInputStream fileInputStream = new FileInputStream(new File(Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww()));
                                    try {
                                        ByteStreamsKt.copyTo$default(fileInputStream, openOutputStream, 0, 2, null);
                                        CloseableKt.closeFinally(openOutputStream, null);
                                        CloseableKt.closeFinally(fileInputStream, null);
                                        Wwwwwwwwwwwwwwwww2.close();
                                        String lastPathSegment = insert.getLastPathSegment();
                                        if (lastPathSegment != null) {
                                            AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwww3 = IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this, context, lastPathSegment, false, 4, null);
                                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                                                return Wwwwwwwwwwwwwwwwwwwwwwwwwww3;
                                            }
                                            Wwww(str);
                                            throw new KotlinNothingValueException();
                                        }
                                        Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot open output stream for " + insert + ".");
                                        throw new KotlinNothingValueException();
                                    } finally {
                                    }
                                } else {
                                    Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot open output stream for " + insert + ".");
                                    throw new KotlinNothingValueException();
                                }
                            } else {
                                Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot insert new asset.");
                                throw new KotlinNothingValueException();
                            }
                        } else {
                            Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot find gallery info");
                            throw new KotlinNothingValueException();
                        }
                    } else {
                        Wwww(str);
                        throw new KotlinNothingValueException();
                    }
                } else {
                    Kkkkkkkkkkkkkkkkkkkkkkkk("Failed to find the asset " + str);
                    throw new KotlinNothingValueException();
                }
            } else {
                Kkkkkkkkkkkkkkkkkkkkkkkk("No copy required, because the target gallery is the same as the current one.");
                throw new KotlinNothingValueException();
            }
        } else {
            Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot get gallery id of " + str);
            throw new KotlinNothingValueException();
        }
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public List<String> Wwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull List<String> list) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwww(this, context, list);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public AssetEntity Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @Nullable Integer num) {
        return IDBUtils.DefaultImpls.Wwww(this, context, str, str2, str3, str4, num);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public int Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Cursor cursor, @NotNull String str) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwww(this, cursor, str);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @Nullable
    public AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Cursor cursor, @NotNull Context context, boolean z, boolean z2) {
        return IDBUtils.DefaultImpls.Kkkkkkkkkkkkkkkkkkkk(this, cursor, context, z, z2);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public List<AssetPathEntity> Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, int i, @NotNull FilterOption filterOption) {
        ArrayList arrayList = new ArrayList();
        String[] strArr = (String[]) ArraysKt.plus((Object[]) IDBUtils.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), (Object[]) new String[]{"count(1)"});
        ArrayList arrayList2 = new ArrayList();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FilterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(filterOption, i, arrayList2, false, 4, null);
        Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(context.getContentResolver(), Wwwwwwwwwwwwwwwwwww(), strArr, "bucket_id IS NOT NULL " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, (String[]) arrayList2.toArray(new String[0]), null);
        try {
            Cursor cursor = Wwwwwwwwwwwwwwwww2;
            if (cursor.moveToNext()) {
                arrayList.add(new AssetPathEntity("isAll", "Recent", cursor.getInt(ArraysKt.indexOf(strArr, "count(1)")), i, true, null, 32, null));
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
            return arrayList;
        } finally {
        }
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public List<AssetEntity> Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, int i, int i2, int i3, @NotNull FilterOption filterOption) {
        boolean z;
        String str2;
        if (str.length() == 0) {
            z = true;
        } else {
            z = false;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!z) {
            arrayList2.add(str);
        }
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FilterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(filterOption, i3, arrayList2, false, 4, null);
        String[] keys = keys();
        if (z) {
            str2 = "bucket_id IS NOT NULL " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } else {
            str2 = "bucket_id = ? " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(context.getContentResolver(), Wwwwwwwwwwwwwwwwwww(), keys, str2, (String[]) arrayList2.toArray(new String[0]), Kkkkkkkkkkkkkkkkk(i, i2 - i, filterOption));
        try {
            Cursor cursor = Wwwwwwwwwwwwwwwww2;
            while (cursor.moveToNext()) {
                AssetEntity Kkkkkkkkkkkkkkkkkkk2 = IDBUtils.DefaultImpls.Kkkkkkkkkkkkkkkkkkk(INSTANCE, cursor, context, false, false, 2, null);
                if (Kkkkkkkkkkkkkkkkkkk2 != null) {
                    arrayList.add(Kkkkkkkkkkkkkkkkkkk2);
                }
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
            return arrayList;
        } finally {
        }
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull byte[] bArr, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @Nullable Integer num) {
        return IDBUtils.DefaultImpls.Www(this, context, bArr, str, str2, str3, str4, num);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        ReentrantLock reentrantLock = f7462Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (reentrantLock.isLocked()) {
            return false;
        }
        reentrantLock.lock();
        try {
            ArrayList arrayList = new ArrayList();
            ContentResolver contentResolver = context.getContentResolver();
            DBUtils dBUtils = INSTANCE;
            Cursor Wwwwwwwwwwwwwwwww2 = dBUtils.Wwwwwwwwwwwwwwwww(contentResolver, dBUtils.Wwwwwwwwwwwwwwwwwww(), new String[]{"_id", "_data"}, null, null, null);
            Cursor cursor = Wwwwwwwwwwwwwwwww2;
            while (cursor.moveToNext()) {
                DBUtils dBUtils2 = INSTANCE;
                String Wwwwwww2 = dBUtils2.Wwwwwww(cursor, "_id");
                if (!new File(dBUtils2.Wwwwwww(cursor, "_data")).exists()) {
                    arrayList.add(Wwwwwww2);
                }
            }
            arrayList.toString();
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
            String joinToString$default = CollectionsKt.joinToString$default(arrayList, ",", null, null, 0, null, new Function1() { // from class: com.fluttercandies.photo_manager.core.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    CharSequence Kkkkkkkkkkkkkkk2;
                    Kkkkkkkkkkkkkkk2 = DBUtils.Kkkkkkkkkkkkkkk((String) obj);
                    return Kkkkkkkkkkkkkkk2;
                }
            }, 30, null);
            Uri Wwwwwwwwwwwwwwwwwww2 = INSTANCE.Wwwwwwwwwwwwwwwwwww();
            contentResolver.delete(Wwwwwwwwwwwwwwwwwww2, "_id in ( " + joinToString$default + " )", (String[]) arrayList.toArray(new String[0]));
            reentrantLock.unlock();
            return true;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @Nullable
    public AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, boolean z) {
        AssetEntity assetEntity;
        IDBUtils.Companion companion = IDBUtils.Companion;
        Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(context.getContentResolver(), Wwwwwwwwwwwwwwwwwww(), (String[]) CollectionsKt.distinct(CollectionsKt.plus((Collection) CollectionsKt.plus((Collection) CollectionsKt.plus((Collection) companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), (Iterable) companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), (Object[]) f7463Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), (Object[]) companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww())).toArray(new String[0]), "_id = ?", new String[]{str}, null);
        try {
            Cursor cursor = Wwwwwwwwwwwwwwwww2;
            if (cursor.moveToNext()) {
                assetEntity = IDBUtils.DefaultImpls.Kkkkkkkkkkkkkkkkkkk(INSTANCE, cursor, context, z, false, 4, null);
            } else {
                assetEntity = null;
            }
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
            return assetEntity;
        } finally {
        }
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @Nullable
    public Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwww(this, context, str);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, context, str);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull AssetPathEntity assetPathEntity) {
        IDBUtils.DefaultImpls.Wwwwwwwwww(this, context, assetPathEntity);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull FilterOption filterOption, int i) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, context, filterOption, i);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public String[] keys() {
        IDBUtils.Companion companion = IDBUtils.Companion;
        return (String[]) CollectionsKt.distinct(CollectionsKt.plus((Collection) CollectionsKt.plus((Collection) CollectionsKt.plus((Collection) companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), (Iterable) companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), (Object[]) companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), (Object[]) f7463Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)).toArray(new String[0]);
    }
}
